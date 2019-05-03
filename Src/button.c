/*
 * button.c
 *
 *  Created on: 11 avr. 2019
 *      Author: sakovitch
 */

#include "button.h"

void Button_init(BUTTON_TypeDef * button,  GPIO_TypeDef * port, uint8_t pn, uint8_t pl) {
	button -> gpioPort=port;
	button -> pin= pn;
	button -> pull= pl;

	//Activation de l'horloge sur le port en question
	//déterminer le numéro du port 0--> GPIOA, 1-->GPIOB, etc.
	uint8_t nb_port;
	nb_port = ((uint32_t) port -IOPPERIPH_BASE) / 0x400;

	//activation de l'hologe
	RCC -> IOPENR|= 1 << nb_port;

	//configuration de la pin en entrée
	button -> gpioPort -> MODER &= ~(0b11 << 2 * pn);

	//configuration du type de pull
	button -> gpioPort -> PUPDR&= ~(0b11 << 2 * pn);
	button -> gpioPort -> PUPDR|= (pl<< 2 * pn);
}

uint8_t Button_State(BUTTON_TypeDef * button) {
	if ((button -> gpioPort -> IDR& (1 << button -> pin)) != 0) return 1;
	return 0;
}

void Button_enableIRQ(BUTTON_TypeDef *button, uint8_t trigger) {
	//détermination du numéro d'EXTI
	uint8_t nb_EXTI = button->pin / 4;
	//déterminer le numéro du port 0--> GPIOA, 1-->GPIOB, etc.
	uint8_t nb_port; nb_port = ((uint32_t) button->gpioPort - IOPPERIPH_BASE) / 0x400;

	//activation de l'interruption externe
	RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;
	SYSCFG->EXTICR[nb_EXTI] &= ~(0b1111 << 4 * (button->pin % 4));
	SYSCFG->EXTICR[nb_EXTI] |= (nb_port << 4 * (button->pin % 4));

	EXTI->IMR |= (1 << button->pin); //activation d'EXTI

	switch (trigger) {
		case LL_EXTI_TRIGGER_RISING:
			//activation de l'interruption sur front montant
			EXTI->RTSR |= (1 << button->pin);
		break;

		case LL_EXTI_TRIGGER_FALLING:
			//activation de l'interruption sur front descendant
			EXTI->FTSR |= (1 << button->pin);
			break;

		case LL_EXTI_TRIGGER_RISING_FALLING:
			//activation de l'interruption sur front montant
			EXTI->RTSR |= (1 << button->pin);
			//activation de l'interruption sur front descendant
			EXTI->FTSR |= (1 << button->pin); break;
	}

	if (button->pin < 2) {
		NVIC_EnableIRQ(EXTI0_1_IRQn);
		NVIC_SetPriority(EXTI0_1_IRQn, 0);
	} else if (button->pin < 4) {
		NVIC_EnableIRQ(EXTI2_3_IRQn);
		NVIC_SetPriority(EXTI2_3_IRQn, 0);
	} else {
		NVIC_EnableIRQ(EXTI4_15_IRQn);
		NVIC_SetPriority(EXTI4_15_IRQn, 0);
	}
}
