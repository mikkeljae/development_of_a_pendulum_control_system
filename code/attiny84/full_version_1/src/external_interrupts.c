#include "external_interrupts.h"

void setup_external_int(void){
   cli();                // Disable global interrupts
  GIMSK = _BV(PCIE0);   // Enable interrupts on pins PCINT7:0
  GIFR = _BV(PCIF0);    // Setup pin change interrupt flag 0
  PCMSK0 = _BV(A_pin) | _BV(B_pin) | _BV(Z_pin);   // Enable interrupts on PCINT1:3
  sei();                // Enable global interripts
 
}

ISR(PCINT0_vect)
{ 
  // Read Port A
  PINA_status = PINA;

  // If pin Z is high => reset position
  if((PINA_status & _BV(Z)) == _BV(Z)){
    position = 0;
    calibrated = 1;
  }

  // If pin A is HIGH
  if((PINA_status & _BV(A)) == _BV(A)){      
    // If pin B is HIGH => PHASE_4. If pin B is low => PHASE_4.
    if((PINA_status & _BV(B)) == _BV(B)){
      phase = PHASE_4;
    }else{
      phase = PHASE_3;
    }
  }  
  // If pin A is LOW
  else{
    // If pin B is HIGH => PHASE_1. If pin B is low => PHASE_2.
    if((PINA_status & _BV(B)) == _BV(B)){
      phase = PHASE_1;
    }else{
      phase = PHASE_2;
    }
  }

  // If there has been a last_phase
  if(last_phase != 0){
    if(phase > last_phase){
      dir = 1;
    }
    else{
      dir = 0;
    }

    if(phase == PHASE_4 && last_phase == PHASE_1){
      dir = 0;
    }
    else if(phase == PHASE_1 && last_phase == PHASE_4){
      dir = 1;
    }

    if (dir == 1)
    {
      position ++;
    }
    else{
      if(position == 0){
        position = MAX_POS; 
      }
      else{
        position --; 
      }
    }
  }

  last_phase = phase;
}

