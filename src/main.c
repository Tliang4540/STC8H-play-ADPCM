#include "SDCC_STC8H.h"
#include "MiniSch.h"
#include "interrupt_handled.h"
#include "uart.h"
#include "pwm_dac.h"

bit MINI_SCH_RUN = 1;
volatile uint8_t timers[MAXTASKS];

sem_type key_sem;

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

  P3   = 0x0f;
  P3M0 = 0xf2;
  P3M1 = 0x00;

  P5   = 0x00;
  P5M0 = 0x00;
  P5M1 = 0x00;
}

uint8_t task1(void)
{
  static uint8_t play_flag = 0;
  _SS

  pwm_init();
  while(MINI_SCH_RUN)
  {
    Sem_Take(key_sem, 0xff);
    if(key_sem.sem_value)
    {
      key_sem.sem_value--;
      play_flag = 1;
      while(play_flag)
      {
        if(dac_send())  //返回为1时表示需要继续填充数据
        {
          WaitX(10);
        }
        else            //否则表示数据已经全部填入缓存
        {
          WaitX(200);
          play_flag = 0;
        }
      }
    }
  }
  _EE
}

uint8_t task2(void)
{
  _SS
  Sem_Init(key_sem, 0);
  while(MINI_SCH_RUN)
  {
    WaitX(10);
    if(P33 == 0)
    {
      WaitX(20);
      if(P33 == 0)
      {
        Sem_Release(key_sem);
        while(P33 == 0)
        {
          while(P33 == 0)
            WaitX(20);
          WaitX(20);
        }
      }
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
    WDT_CONTR = 0x36;
    RunTaskA(task1, 0);
    RunTaskA(task2, 1);
  }
}