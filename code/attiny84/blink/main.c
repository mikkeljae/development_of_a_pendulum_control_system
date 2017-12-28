//
// A simple program for the ATtiny84 that blinks an LED.
//
// electronut.in
//

#include <avr/io.h>
#include <util/delay.h>
 
#define F_CPU 8000000

int main (void)
{
  // set PB1 to be output
  DDRB = (1 << PB2);

  // loop
  while (1) {

    // set PB1 high
    PORTB = (1 << PB2);
 
    _delay_ms(1000);
 
    // set PB1 low
    PORTB &= ~(1 << PB2);
 
    _delay_ms(1000);
  }
 
  return 1;
}