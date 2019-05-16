/*
 * capson.c
 *
 *  Created on: May 13, 2019
 *      Author: ESIEA_I2_Etd
 */

#include "capson.h"

void Capson_init (CAPSON_TypeDef * capsonTrigger, CAPSON_TypeDef * capsonEcho, GPIO_TypeDef * portTrigger, uint16_t pinTrigger, GPIO_TypeDef * portEcho, uint16_t pinEcho){

	//TRIGGER

	capsonTrigger -> gpioPort=portTrigger;
	capsonTrigger -> pin=pinTrigger;

	//Activation de l'horloge sur le port en question
	//déterminer le numéro du port 0--> GPIOA, 1--> GPIOB, etc.
	uint8_t nb_portTrigger ;
	nb_portTrigger = (uint32_t)((uint32_t*)portTrigger -IOPPERIPH_BASE)/ (uint32_t)0x400;

	//activation de l'hologe
	RCC -> IOPENR|=1<<nb_portTrigger;

	//configuration de la pin en sortie
	capsonTrigger -> gpioPort -> MODER&=~(0b11<<2*pinTrigger);
	capsonTrigger -> gpioPort -> MODER|=(0b01<<2*pinTrigger);


	//ECHO

	capsonEcho -> gpioPort=portEcho;
	capsonEcho -> pin=pinEcho;

	//Activation de l'horloge sur le port en question
	//déterminer le numéro du port 0--> GPIOA, 1--> GPIOB, etc.
	uint8_t nb_portEcho ;
	nb_portEcho = (uint32_t)((uint32_t*)portEcho -IOPPERIPH_BASE)/ (uint32_t)0x400;

	//activation de l'hologe
	RCC -> IOPENR|=1<<nb_portEcho;

	//configuration de la pin en sortie
	capsonEcho -> gpioPort -> MODER&=~(0b11<<2*pinEcho);
	capsonEcho -> gpioPort -> MODER|=(0b01<<2*pinEcho);
}

uint8_t Capson_isOn (CAPSON_TypeDef * capsonEcho){
	return ((capsonEcho->gpioPort->IDR&(1<<capsonEcho->pin))!=0);
}

uint8_t Capson_isOff(CAPSON_TypeDef * capsonEcho){
	return ((capsonEcho->gpioPort->IDR&(1<<capsonEcho->pin))==0);
}

void Capson_trigger(CAPSON_TypeDef * capsonTrigger) {
	capsonTrigger->gpioPort->ODR|=(1<<capsonTrigger->pin);
	LL_mDelay(10);
	capsonTrigger->gpioPort->ODR&=~(1<<capsonTrigger->pin);
	LL_mDelay(1000000);
}

int Capson_measure(CAPSON_TypeDef * capsonTrigger, CAPSON_TypeDef * capsonEcho){
	int cm=0;
	capsonTrigger->gpioPort->ODR|=(1<<capsonTrigger->pin);
	LL_mDelay(10);
	capsonTrigger->gpioPort->ODR&=~(1<<capsonTrigger->pin);
	while(Capson_isOn(capsonEcho)) {
		LL_mDelay(58);
		cm++;
	}
	LL_mDelay(1000000);
	return cm;
}
