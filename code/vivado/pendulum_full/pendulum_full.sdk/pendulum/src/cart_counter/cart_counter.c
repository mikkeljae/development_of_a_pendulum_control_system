/*
 * cart_counter.c
 *
 *  Created on: Dec 9, 2017
 *      Author: thomas
 */

#include "cart_counter.h"
#include "xil_io.h"
#include "motor_pwm.h"

uint8_t is_calibrated()
{
	return cal;
}

uint8_t get_direction()
{
	return dir;
}

void get_position(uint32_t *position)
{
	if(is_calibrated() == CALIBRATED)
	{
		*position = Xil_In32(CART_BASEADDR+POS_ADDR);
	}
	else
	{
		position = NULL;
	}
}

void update_data()
{
	xil_printf("%d",MOTOR_PWM_mReadReg(CART_BASEADDR, POS_ADDR));
	dir = Xil_In32(CART_BASEADDR+DIR_ADDR) & 0x01;
	cal = (Xil_In32(CART_BASEADDR+CAL_ADDR) & 0x02) == 0x02 ? 1 : 0;
	pos = Xil_In32(CART_BASEADDR+POS_ADDR);
}