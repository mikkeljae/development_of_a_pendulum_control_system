#include "spi.h"
#include "external_interrupts.h"
#include "timer.h"


char test_str_i[6];
char test_str_pos[6];

int main(void) {
  //char text[] = "Hi THOMAS! Hi Mikkel! Hi Mikkel!";
  char text[] = "C,        ,                       ";
  
  volatile unsigned long int i = 0;
  uint8_t payload[32];
  int k;
  for(k=0; k<32; k++){
    payload[k] = text[k];  
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
  PORTB |= _BV(LED);   //set CE HIGH
  _delay_ms(3000);
  PORTB &= ~_BV(LED);   //set CE low
  _delay_ms(100);

  setup_timer_intr();
  int t = 0;
  i = 0;
  while(1){
  	if(i >1000000){
  		  PORTB |= _BV(LED);   //set CE HIGH
  		  while(1){
  		  	//STAY!!!!
  		  }
  	}
   
    if(timer==1){ 
      timer = 0;

      i++;
      set_CE(LOW);

      if(calibrated){
        payload[0] = 49;
      }else{
        payload[0] = 48;
      }


      for(t=0; t<6; t++){
        test_str_i[t] = ' ';
        test_str_pos[t] = ' ';
      }

      sprintf(test_str_i, "%u", i);
      
      for(t=0; t<6; t++){
        if(test_str_i[t] > 47 && test_str_i[t] < 58){
            payload[2+t] = test_str_i[t];
        }else{
          payload[2+t] = ' ';
        }
      }
      sprintf(test_str_pos, "%d", position);
      for(t=0; t<6; t++){
        if(test_str_pos[t] > 47 && test_str_pos[t] < 58){
          payload[11+t] = test_str_pos[t];
        }else{
          payload[11+t] = ' ';
        }
      }

     // DEBUG::
      

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





