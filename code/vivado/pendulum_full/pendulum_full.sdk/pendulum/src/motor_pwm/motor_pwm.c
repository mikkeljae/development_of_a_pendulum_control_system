/*
 * motor_pwm.c
 *
 *  Created on: Dec 9, 2017
 *      Author: thomas
 */
#include "motor_pwm.h"
#include "xil_io.h"

void set_direction(uint8_t direction)
{
	Xil_Out32(MOTOR_BASEADDR + DIR_ADDR, (uint32_t)direction);
}

void set_duty(uint8_t duty)
{
	uint32_t comp;

	Xil_Out32(MOTOR_BASEADDR + COMP_ADDR, comp);
}
