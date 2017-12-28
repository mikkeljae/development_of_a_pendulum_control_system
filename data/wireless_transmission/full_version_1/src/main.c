#include "spi.h"
#include "external_interrupts.h"
#include "timer.h"

char test_str[5];


int main(void) {
  char text[] = "Hi THOMAS! Hi Mikkel! Hi Mikkel!";
 //   char text[] = "CAL: ,DIR: ,POS:                ";
  
  volatile long int i;
  uint8_t payload[32];
  for(i=0; i<32; i++){
    payload[i] = text[i];  
  }

  // set PB2 to be output
  DDRB |= (1 << LED);     //Set LED as output
  
  // Wait 5 seconds in order to let the user toggle the switch
  _delay_ms(5000);
  PORTB |= _BV(LED);   //set CE HIGH
  _delay_ms(250);
  PORTB &= ~_BV(LED);   //set CE low
  _delay_ms(250);

  spi_setup();
  RF_begin();
  RF_open_writing_pipe();
  RF_start_TX_mode();
  RF_write_payload(payload, 32);
 

  setup_external_int();
  setup_timer_intr();

  i = 0;
  PORTB |= _BV(LED);   //set CE HIGH
  _delay_ms(250);
  PORTB &= ~_BV(LED);   //set CE low
  _delay_ms(250);
  while(1){
 	if(i >10000){
 		  PORTB |= _BV(LED);   //set CE HIGH
 		  while(1){
 		  	//STAY!!!!
 		  }
 	}

    if(timer==1){
      timer = 0;
      i++;
     set_CE(LOW);

/*
      if(calibrated){
        payload[4] = 49;
      }else{
        payload[4] = 48;
      }
      if(dir){
        payload[11] = 49;
      }else{
        payload[11] = 48;
      }

      sprintf(test_str, "%d", position);
      for(i=0; i<5; i++){
        payload[17+i] = test_str[i];  
      }
*/
      RF_write_payload(payload, 32);



      //uint8_t fifo_status;
      //RF_read_register(RF_FIFO_STATUS, &fifo_status);
      //if((fifo_status) == 0b00000001){
      //  RF_write_payload(payload, 32);       
      //}

//      _delay_ms(1);
      

      set_CE(HIGH);
      
      // Then wait. 130us according to datasheet p. 22
    }
  }

  return 1;
};





