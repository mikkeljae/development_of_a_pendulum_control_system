#include "external_interrupts.h"



#define F_CPU     8000000


int main (void)
{

  setup_external_int();
  // set PB1 to be output
  DDRB = (1 << PB2);

  while (1) {
    if(calibrated == 0){
      PORTB |= (1 << PB2);
      _delay_ms(100);
      PORTB &= ~(1 << PB2);
      _delay_ms(100);
    }else{
      if(position < 3600){
        PORTB &= ~(1 << PB2);
      }else{
        PORTB |= (1 << PB2);
      }
    }    
  }
  return 1;
}

