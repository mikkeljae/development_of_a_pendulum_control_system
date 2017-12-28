#include "spi.h"

int main(void) {
  char text[] = "Hi THOMAS! Hi Mikkel! Hi Mikkel!";
  int i;
  uint8_t payload[32];
  for(i=0; i<32; i++){
    payload[i] = text[i];  
  }

  // set PB2 to be output
  DDRB |= (1 << LED);     //Set LED as output
  
  _delay_ms(5000);
  PORTB |= _BV(LED);   //set CE low
  _delay_ms(250);
  PORTB &= ~_BV(LED);   //set CE low
  _delay_ms(250);

  spi_setup();
  RF_begin();
  //RF_open_reading_pipe();
  //RF_start_RX_mode();

  RF_open_writing_pipe();
  RF_set_TX_power();
  RF_start_TX_mode();
  RF_write_payload(payload, 32);
  

  while(1){
   set_CE(HIGH);
  // Then wait. 130us according to datasheet p. 22
  _delay_us(150);
    uint8_t config;
    RF_read_register(RF_FIFO_STATUS, &config);
    
    RF_write_register(RF_STATUS,0b01110000);

     set_CE(LOW);
  // Then wait. 130us according to datasheet p. 22

    _delay_ms(1);
RF_write_payload(payload, 32);
    uint8_t fifo_status;
    RF_read_register(RF_FIFO_STATUS, &fifo_status);
    if((fifo_status) == 0b00000001){
      RF_write_payload(payload, 32);       
    }
  }
  return 1;
};





