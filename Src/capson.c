/*
 * capson.c
 *
 *  Created on: May 13, 2019
 *      Author: ESIEA_I2_Etd
 */

#include "capson.h"

void Capson_init (CAPSON_TypeDef * capson, GPIO_TypeDef * portTrigger, uint16_t pinTrigger, GPIO_TypeDef * portEcho, uint16_t pinEcho){

	//TRIGGER

	capson -> gpioPortTrigger=portTrigger;
	capson -> pinTrigger=pinTrigger;

	//Activation de l'horloge sur le port en question
	//déterminer le numéro du port 0--> GPIOA, 1--> GPIOB, etc.
	uint8_t nb_portTrigger ;
	nb_portTrigger = (uint32_t)((uint32_t*)portTrigger -IOPPERIPH_BASE)/ (uint32_t)0x400;

	//activation de l'hologe
	RCC -> IOPENR|=1<<nb_portTrigger;

	//configuration de la pin en sortie
	capson -> gpioPortTrigger -> MODER&=~(0b11<<2*pinTrigger);
	capson -> gpioPortTrigger -> MODER|=(0b01<<2*pinTrigger);


	//ECHO

	capson -> gpioPortEcho=portEcho;
	capson -> pinEcho=pinEcho;

	//Activation de l'horloge sur le port en question
	//déterminer le numéro du port 0--> GPIOA, 1--> GPIOB, etc.
	uint8_t nb_portEcho ;
	nb_portEcho = (uint32_t)((uint32_t*)portEcho -IOPPERIPH_BASE)/ (uint32_t)0x400;

	//activation de l'hologe
	RCC -> IOPENR|=1<<nb_portEcho;

	//configuration de la pin en sortie
	capson -> gpioPortEcho -> MODER&=~(0b11<<2*pinEcho);
}

uint8_t Capson_isOn (CAPSON_TypeDef * capson){
	return ((capson->gpioPortEcho->IDR&(1<<capson->pinEcho))!=0);
}

uint8_t Capson_isOff(CAPSON_TypeDef * capson){
	return ((capson->gpioPortEcho->IDR&(1<<capson->pinEcho))==0);
}

int Capson_measure(CAPSON_TypeDef * capson){
	int cm=0;
	capson->gpioPortTrigger->ODR|=(1<<capson->pinTrigger);
	LL_mDelay(10);
	capson->gpioPortTrigger->ODR&=~(1<<capson->pinTrigger);
	while(Capson_isOff(capson));
	while(Capson_isOn(capson)) {
		LL_mDelay(58);
		cm++;
	}
	LL_mDelay(80000);
	return cm;
}
