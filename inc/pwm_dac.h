#ifndef _PWM_DAC_H_
#define _PWM_DAC_H_

#include "MiniSch.h"
#include "SDCC_STC8H.h"
#include "uart.h"

void pwm_init(void);
uint8_t dac_send(void);
#endif