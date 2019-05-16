/*
 * led.c
 *
 *  Created on: 11 avr. 2019
 *      Author: sakovitch
 */

#include "led.h"

void Led_init (LED_TypeDef * led, GPIO_TypeDef * port, uint16_t pn){
	led -> gpioPort=port;
	led -> pin=pn;

	//Activation de l'horloge sur le port en question
	//déterminer le numéro du port 0--> GPIOA, 1--> GPIOB, etc.
	uint8_t nb_port ;
	nb_port = (uint32_t)((uint32_t*)port -IOPPERIPH_BASE)/ (uint32_t)0x400;

	//activation de l'hologe
	RCC -> IOPENR|=1<<nb_port;

	//configuration de la pin en sortie
	led -> gpioPort -> MODER&=~(0b11<<2*pn);
	led -> gpioPort -> MODER|=(0b01<<2*pn);
}

uint8_t Led_isOn (LED_TypeDef *led){
	return ((led->gpioPort->ODR&(1<<led->pin))!=0);
}

uint8_t Led_isOff(LED_TypeDef *led){
	return ((led->gpioPort->ODR&(1<<led->pin))==0);
}

void Led_turnOn(LED_TypeDef *led){
	led->gpioPort->ODR|=(1<<led->pin);
}

void Led_turnOff(LED_TypeDef *led){
	led->gpioPort->ODR&=~(1<<led->pin);
}

void Led_toggle(LED_TypeDef *led){
	led->gpioPort->ODR^=(1<<led->pin);
}
