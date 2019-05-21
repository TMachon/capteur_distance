/*
 * capson.h
 *
 *  Created on: May 13, 2019
 *      Author: ESIEA_I2_Etd
 */

#ifndef CAPSON_H_
#define CAPSON_H_

#include "stm32l053xx.h"

typedef struct {
	GPIO_TypeDef * gpioPortTrigger;
	uint16_t pinTrigger;
	GPIO_TypeDef * gpioPortEcho;
	uint16_t pinEcho;
} CAPSON_TypeDef;

void Capson_init (CAPSON_TypeDef * capson, GPIO_TypeDef * portTrigger, uint16_t pinTrigger, GPIO_TypeDef * portEcho, uint16_t pinEcho);
uint8_t Capson_isOn (CAPSON_TypeDef * capson);
uint8_t Capson_isOff(CAPSON_TypeDef * capson);
void Capson_trigger(CAPSON_TypeDef * capson);
int Capson_measure(CAPSON_TypeDef * capson);

#endif /* CAPSON_H_ */
