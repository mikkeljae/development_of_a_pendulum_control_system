#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

#define Z_pin     PA1
#define B_pin     PA2
#define A_pin     PA3

#define Z         1
#define A         2
#define B         3

#define PHASE_1   1
#define PHASE_2   2
#define PHASE_3   3
#define PHASE_4   4
#define MAX_POS   7199

volatile int dir;
volatile int position;
volatile int PINA_status;
volatile int phase;
volatile int last_phase;
volatile int calibrated;

void setup_external_int(void);
