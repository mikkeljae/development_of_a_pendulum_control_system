/*
 * cart_counter.h
 *
 *  Created on: Dec 9, 2017
 *      Author: thomas
 */

#ifndef SRC_CART_COUNTER_CART_COUNTER_H_
#define SRC_CART_COUNTER_CART_COUNTER_H_

#include <stdio.h>

#define CART_BASEADDR XPAR_ZYBO_CART_COUNTER_V1_0_0_BASEADDR

#define CAL_ADDR	0x00
#define DIR_ADDR	0x00
#define POS_ADDR	0x04

#define CW	0x00
#define CCW	0x01

#define CALIBRATED		0x01
#define NOT_CALIBRATED	0x00

uint8_t cal;
uint8_t dir;
uint32_t pos;

uint8_t is_calibrated();
uint8_t get_direction();
void get_position(uint32_t *position);
void update_data();

#endif /* SRC_CART_COUNTER_CART_COUNTER_H_ */
