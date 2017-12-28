#include "timer.h"
#include <util/delay.h> //DEBUG
 


int main (void)
{
  // set PB1 to be output
  DDRB = (1 << PB2);
  DDRA = _BV(PA5);
  setup_timer_intr();

  PORTB = (1 << PB2);

  PORTB |= _BV(PB2);   //set CE HIGH
  _delay_ms(250);
  PORTB &= ~_BV(PB2);   //set CE low
  _delay_ms(250);
  // TEST
  
  while(1){
    if(i%2){
      PORTB |= _BV(PB2);   //set CE HIGH
    }else{
     PORTB &= ~_BV(PB2);   //set CE low 
    }
  }
  return 1;
}
