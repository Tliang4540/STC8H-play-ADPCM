#include "uart.h"

#define BUF_MAX 256

volatile bit send_flag = 0;                     //开始发送标志
volatile uint8_t UartSend_Count = 0;            //读缓存位置
volatile uint8_t UartSend_Length = 0;           //写缓存位置
volatile uint8_t xdata UartSend_Buff[BUF_MAX];  //缓存
volatile uint8_t reset = 0;                     //收到6个字节数据进行复位,用来不断电重烧程序

void UART1_Interrupt(void) interrupt(4)
{
  if(TI)
  {
    TI = 0;
    if(UartSend_Count != UartSend_Length)
    {
      SBUF = UartSend_Buff[UartSend_Count++];
      //if(UartSend_Count > (BUF_MAX-1))UartSend_Count = 0;
    }
    else 
    {
      send_flag = 0;
      UartSend_Count = 0;
      UartSend_Length = 0;
    }
  }
  if(RI)
  {
    RI = 0;
    reset++;
    if(reset > 6)
    {
      IAP_CONTR |= 0x60;
    }
  }
}

void printf(uint8_t *s)
{
  while(*s != 0)
  {
    UartSend_Buff[UartSend_Length++] = *s++;    //填充缓存数据
    //if(UartSend_Length > (BUF_MAX-1))UartSend_Length = 0;
  }
  if(send_flag == 0)
  {
    send_flag = 1;
    SBUF = UartSend_Buff[UartSend_Count++];
  }
}

void printf_byte(uint8_t byte)
{
  UartSend_Buff[UartSend_Length++] = byte;
  //if(UartSend_Length > (BUF_MAX-1))UartSend_Length = 0;
  if(send_flag == 0)
  {
    send_flag = 1;
    SBUF = UartSend_Buff[UartSend_Count++];
  }
}
