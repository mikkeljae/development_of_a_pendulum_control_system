#include "spi.h"

void set_CE(uint8_t state){
  if(state == LOW){
    PORTA &= ~_BV(CE);   //set CE low
  }
  else{
    PORTA |= _BV(CE);    //set CE high

  }
}

void spi_setup(void){
  DDRB |= _BV(SS);     //set the SS  pin as output
  DDRA |= _BV(SCLK);    //set the SCLK pin as output
  DDRA |= _BV(MOSI);    //set the MOSI pin as output
  DDRA &= ~_BV(MISO);   //set the MISO pin as input

  // Set approoriate SPI settings, datasheet p. 126
  USICR &= ~(_BV(USISIE) | _BV(USIOIE) | _BV(USIWM1 | _BV(USICS0)));
  USICR |= _BV(USIWM0) | _BV(USICS1) | _BV(USICLK);
  PORTB |= _BV(SS);
  _delay_ms(10);
}

void spi_transfer(uint8_t *data, uint8_t *input, uint8_t n){
  PORTB &= ~_BV(SS);   //set SS low
  int i;
  for(i = 0; i<n; i++){
    //Put data in USIDR
    USIDR = data[i];
    //Clear counter and clear counter overflow interrupt flag, datasheet p. 125
    USISR = _BV(USIOIF);  

    //Toggle USITC until USIOIF (counter overflow interrupt) overflows. This happens when 16 toggles of the clock have been made, p. 119.  
    while ( !(USISR & _BV(USIOIF)) ){
      USICR |= _BV(USITC);  
    } 

    if(NULL != input){
      input[i] = USIDR;
    }
  }
  PORTB |= _BV(SS);    //set SS high
}

void RF_write_register(uint8_t reg, uint8_t value){
  uint8_t cmd_addr =  (W_REGISTER | ( REGISTER_MASK & reg));
  uint8_t output_buffer[] = {cmd_addr, value};
  spi_transfer(output_buffer, NULL, 2);
}

void RF_read_register(uint8_t reg, uint8_t *value){
  uint8_t output_buffer[] = {(R_REGISTER | ( REGISTER_MASK & reg)), 0b11111111};
  uint8_t input_buffer[2];

  spi_transfer(output_buffer, input_buffer, 2);
  *value = input_buffer[1];
}

void RF_write_address(uint8_t reg, uint8_t *addr){
  uint8_t output_buffer[]  = {(W_REGISTER | ( REGISTER_MASK & reg)), addr[0], addr[1], addr[2]};
  spi_transfer(output_buffer, NULL, 4);  //Send 6 bytes. Receive nothing
}

void RF_send_command(uint8_t cmd){
  spi_transfer(&cmd, NULL, 1);
}

void RF_begin(void){
  //Set CE low
  set_CE(LOW);
  // Reset config register and set 1 byte CRC
  RF_write_register(RF_CONFIG, 0x08);

  // Set 1Mbps & MAX transmission power
  RF_write_register(RF_SETUP, RF_SETUP_SET);

  // Write to channel register that channel is 76
  RF_write_register(RF_CH, RF_CHANNEL);

  // Disable Auto Acknowledgment
  RF_write_register(RF_EN_AA, RF_NO_ACK);

  // Setup of Address Widths. 3 bytes.
  RF_write_register(RF_SETUP_AW, RF_3_B_ADDR);

  // Setup of no Automatic Retransmission
  RF_write_register(RF_SETUP_RETR, RF_NO_RETRANS);

  // Flush buffers
  RF_send_command(FLUSH_RX);
  RF_send_command(FLUSH_TX);

  // Startup the RF to Standy-I
  RF_power_up();

  uint8_t config;
  RF_read_register(RF_CONFIG, &config);
  RF_write_register(RF_CONFIG , config | PRIM_RX_MASK);
}

void RF_power_up(void){
  // Read config register and set PWR_UP to 1
  uint8_t config;
  RF_read_register(RF_CONFIG, &config);
  config = config | PWR_UP_MASK;
  RF_write_register(RF_CONFIG, config);
  // Then wait. Max time until CE is allowed to be set high is 4.5ms according to datasheet p. 24
  _delay_ms(5);
}

void RF_open_reading_pipe(void){
  uint8_t rf_address[] = {RF_ADDRESS0, RF_ADDRESS1, RF_ADDRESS2};
  RF_write_address(RF_RX_ADDR_P0, rf_address);
  RF_write_register(RF_RX_PW_P0, PAYLOAD_SIZE);   // PAYLOAD SIZE
 
  uint8_t register_val;
  RF_read_register(RF_EN_RXADDR, &register_val);
  register_val = register_val | ERX_P0_MASK;
  RF_write_register(RF_EN_RXADDR, register_val);
}

void RF_start_RX_mode(void){
  set_CE(HIGH);
  // Then wait. 130us according to datasheet p. 22
  _delay_us(150);
  RF_send_command(FLUSH_TX);
}

void RF_available(uint8_t *status){
  uint8_t fifo_status;
  RF_read_register(RF_FIFO_STATUS, &fifo_status);
  fifo_status = fifo_status & RX_EMPTY_MASK;  //Only look at RX_EMPTY_MASK bit

  if(fifo_status){  // FIFO is empty
    *status = EMPTY;
  }else{
    *status = NOT_EMPTY;   // FIFO is not empty
  }
}

void RF_open_writing_pipe(void){
  uint8_t rf_address[] = {RF_ADDRESS0, RF_ADDRESS1, RF_ADDRESS2};
  RF_write_address(RF_RX_ADDR_P0, rf_address);    // Do we need this? check....
  RF_write_address(RF_TX_ADDR, rf_address);

  RF_write_register(RF_RX_PW_P0, PAYLOAD_SIZE);   // Do we need this???
}

void RF_start_TX_mode(void){
  set_CE(LOW);
  // Then wait. 130us according to datasheet p. 22
  _delay_us(150);

  uint8_t config;
  RF_read_register(RF_CONFIG, &config);
  RF_write_register(RF_CONFIG , config & ~PRIM_RX_MASK);
   
  set_CE(HIGH);
  // Then wait. 130us according to datasheet p. 22
  _delay_us(150);
  RF_send_command(FLUSH_RX);
}

void RF_write_payload(uint8_t *payload, uint8_t bytes){
  uint8_t output[bytes+1];
  output[0] = W_TX_PAYLOAD;
  uint8_t i;

  for(i = 0; i<bytes; i++){
    output[i+1] = payload[i];
  }

  spi_transfer(output, NULL , bytes+1);
}