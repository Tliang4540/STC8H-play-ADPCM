#include "SDCC_STC8H.h"
#include "MiniSch.h"
#include "interrupt_handled.h"
#include "uart.h"
#include "pwm_dac.h"

bit MINI_SCH_RUN = 1;
volatile uint8_t timers[MAXTASKS];

void MiniSch_Init(void)
{
  AUXR = 0x00;	
  SCON = 0x50;	
  TL1 = 0xFC;		//115200
	TH1 = 0xFF;
	TR1 = 1;

  TMOD = 0x00;	//time0 sch, time1 uart
  IE   = 0x92;  	//ea = 1, et0 = 1
  TL0  = 0xCD;
  TH0  = 0xF8;
  TR0  = 1;
}

void CPU_Init(void)
{
	WDT_CONTR = 0x26;	//wdt 2s.
	WDT_CONTR = 0x36;	//clear wdt.

  P1   = 0x00;
  P1M0 = 0xff;
  P1M1 = 0x00;

  P3   = 0x03;
  P3M0 = 0xfe;
  P3M1 = 0x00;

  P5   = 0x00;
  P5M0 = 0x00;
  P5M1 = 0x00;
}

uint8_t task1(void)
{
  static uint8_t key_time = 128;
  _SS
  pwm_init();
  while(MINI_SCH_RUN)
  {
    WDT_CONTR = 0x36;
    if(dac_send())  //返回为1时表示需要继续填充数据
    {
      WaitX(10);
    }
    else            //否则表示数据已经全部填入缓存
    {
      WaitX(200);
      WaitX(200);
      WaitX(200);
      WaitX(200);
      WaitX(200);
    }
  }
  _EE
}

void main(void)
{
  InitTasks();
  CPU_Init();
  MiniSch_Init();
  printf("start up!\n");
  while(1)
  {
    RunTaskA(task1, 0);
  }
}