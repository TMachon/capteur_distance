/*
 * button.h
 *
 *  Created on: 11 avr. 2019
 *      Author: sakovitch
 */

#ifndef BUTTON_H_
#define BUTTON_H_

#include "stm32l0xx_ll_exti.h"

typedef struct {
GPIO_TypeDef *  gpioPort;
uint8_t pin;
uint8_t pull;
} BUTTON_TypeDef;

void Button_init(BUTTON_TypeDef * button,  GPIO_TypeDef * port, uint8_t pn, uint8_t pl);
uint8_t Button_State(BUTTON_TypeDef * button);
void Button_enableIRQ(BUTTON_TypeDef *button, uint8_t trigger);

#endif /* BUTTON_H_ */
