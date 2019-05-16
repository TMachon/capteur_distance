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
	GPIO_TypeDef * gpioPort;
	uint16_t pin;
} CAPSON_TypeDef;

void Capson_init (CAPSON_TypeDef * capsonTrigger, CAPSON_TypeDef * capsonEcho, GPIO_TypeDef * portTrigger, uint16_t pinTrigger, GPIO_TypeDef * portEcho, uint16_t pinEcho);
uint8_t Capson_isOn (CAPSON_TypeDef * capsonEcho);
uint8_t Capson_isOff(CAPSON_TypeDef * capsonEcho);
void Capson_trigger(CAPSON_TypeDef * capsonTrigger);
int Capson_measure(CAPSON_TypeDef * capsonTrigger, CAPSON_TypeDef * capsonEcho);

#endif /* CAPSON_H_ */
