/*
 * motor_pwm.h
 *
 *  Created on: Dec 9, 2017
 *      Author: thomas
 */

#ifndef SRC_MOTOR_PWM_MOTOR_PWM_H_
#define SRC_MOTOR_PWM_MOTOR_PWM_H_

#include <stdio.h>

#define MOTOR_BASEADDR XPAR_MOTOR_PWM_0_S00_AXI_BASEADDR
#define COMP_ADDR	0x00
#define DIR_ADDR	0x04

#define CW	0x00
#define CCW	0x01

void set_direction(uint8_t direction);
void set_duty(uint8_t duty);

#endif /* SRC_MOTOR_PWM_MOTOR_PWM_H_ */
