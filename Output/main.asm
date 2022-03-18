;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _task2
	.globl _task1
	.globl _CPU_Init
	.globl _MiniSch_Init
	.globl _dac_send
	.globl _pwm_init
	.globl _printf
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _P54
	.globl _P53
	.globl _P52
	.globl _P51
	.globl _P50
	.globl _P47
	.globl _P46
	.globl _P45
	.globl _P44
	.globl _P43
	.globl _P42
	.globl _P41
	.globl _P40
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PADC
	.globl _PLVD
	.globl _PPCA
	.globl _P37
	.globl _P36
	.globl _P35
	.globl _P34
	.globl _P33
	.globl _P32
	.globl _P31
	.globl _P30
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _EADC
	.globl _ELVD
	.globl _EA
	.globl _P27
	.globl _P26
	.globl _P25
	.globl _P24
	.globl _P23
	.globl _P22
	.globl _P21
	.globl _P20
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _P17
	.globl _P16
	.globl _P15
	.globl _P14
	.globl _P13
	.globl _P12
	.globl _P11
	.globl _P10
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P07
	.globl _P06
	.globl _P05
	.globl _P04
	.globl _P03
	.globl _P02
	.globl _P01
	.globl _P00
	.globl _RSTCFG
	.globl _USBADR
	.globl _P7
	.globl _IAP_TPS
	.globl _USBCON
	.globl _B
	.globl _AUXINTIF
	.globl _IP3H
	.globl _USBDAT
	.globl _P6
	.globl _CMPCR2
	.globl _CMPCR1
	.globl _DPH1
	.globl _DPL1
	.globl _DPS
	.globl _P7M0
	.globl _P7M1
	.globl _ACC
	.globl _IP3
	.globl _ADCCFG
	.globl _USBCLK
	.globl _T2L
	.globl _T2H
	.globl _T3L
	.globl _T3H
	.globl _T4L
	.globl _T4H
	.globl _T4T3M
	.globl _PSW
	.globl _SPDAT
	.globl _SPCTL
	.globl _SPSTAT
	.globl _P6M0
	.globl _P6M1
	.globl _P5M0
	.globl _P5M1
	.globl _P5
	.globl _IAP_CONTR
	.globl _IAP_TRIG
	.globl _IAP_CMD
	.globl _IAP_ADDRL
	.globl _IAP_ADDRH
	.globl _IAP_DATA
	.globl _WDT_CONTR
	.globl _P4
	.globl _ADC_RESL
	.globl _ADC_RES
	.globl _ADC_CONTR
	.globl _P_SW2
	.globl _SADEN
	.globl _IP
	.globl _IPH
	.globl _IP2H
	.globl _IP2
	.globl _P4M0
	.globl _P4M1
	.globl _P3M0
	.globl _P3M1
	.globl _P3
	.globl _IE2
	.globl _TA
	.globl _S3BUF
	.globl _S3CON
	.globl _WKTCH
	.globl _WKTCL
	.globl _SADDR
	.globl _IE
	.globl _P_SW1
	.globl _P2
	.globl _IRTRIM
	.globl _LIRTRIM
	.globl _IRCBAND
	.globl _S2BUF
	.globl _S2CON
	.globl _SBUF
	.globl _SCON
	.globl _P2M0
	.globl _P2M1
	.globl _P0M0
	.globl _P0M1
	.globl _P1M0
	.globl _P1M1
	.globl _P1
	.globl _INTCLKO
	.globl _AUXR
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _S4BUF
	.globl _S4CON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _MINI_SCH_RUN
	.globl _key_sem
	.globl _timers
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_S4CON	=	0x0084
_S4BUF	=	0x0085
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_AUXR	=	0x008e
_INTCLKO	=	0x008f
_P1	=	0x0090
_P1M1	=	0x0091
_P1M0	=	0x0092
_P0M1	=	0x0093
_P0M0	=	0x0094
_P2M1	=	0x0095
_P2M0	=	0x0096
_SCON	=	0x0098
_SBUF	=	0x0099
_S2CON	=	0x009a
_S2BUF	=	0x009b
_IRCBAND	=	0x009d
_LIRTRIM	=	0x009e
_IRTRIM	=	0x009f
_P2	=	0x00a0
_P_SW1	=	0x00a2
_IE	=	0x00a8
_SADDR	=	0x00a9
_WKTCL	=	0x00aa
_WKTCH	=	0x00ab
_S3CON	=	0x00ac
_S3BUF	=	0x00ad
_TA	=	0x00ae
_IE2	=	0x00af
_P3	=	0x00b0
_P3M1	=	0x00b1
_P3M0	=	0x00b2
_P4M1	=	0x00b3
_P4M0	=	0x00b4
_IP2	=	0x00b5
_IP2H	=	0x00b6
_IPH	=	0x00b7
_IP	=	0x00b8
_SADEN	=	0x00b9
_P_SW2	=	0x00ba
_ADC_CONTR	=	0x00bc
_ADC_RES	=	0x00bd
_ADC_RESL	=	0x00be
_P4	=	0x00c0
_WDT_CONTR	=	0x00c1
_IAP_DATA	=	0x00c2
_IAP_ADDRH	=	0x00c3
_IAP_ADDRL	=	0x00c4
_IAP_CMD	=	0x00c5
_IAP_TRIG	=	0x00c6
_IAP_CONTR	=	0x00c7
_P5	=	0x00c8
_P5M1	=	0x00c9
_P5M0	=	0x00ca
_P6M1	=	0x00cb
_P6M0	=	0x00cc
_SPSTAT	=	0x00cd
_SPCTL	=	0x00ce
_SPDAT	=	0x00cf
_PSW	=	0x00d0
_T4T3M	=	0x00d1
_T4H	=	0x00d2
_T4L	=	0x00d3
_T3H	=	0x00d4
_T3L	=	0x00d5
_T2H	=	0x00d6
_T2L	=	0x00d7
_USBCLK	=	0x00dc
_ADCCFG	=	0x00de
_IP3	=	0x00df
_ACC	=	0x00e0
_P7M1	=	0x00e1
_P7M0	=	0x00e2
_DPS	=	0x00e3
_DPL1	=	0x00e4
_DPH1	=	0x00e5
_CMPCR1	=	0x00e6
_CMPCR2	=	0x00e7
_P6	=	0x00e8
_USBDAT	=	0x00ec
_IP3H	=	0x00ee
_AUXINTIF	=	0x00ef
_B	=	0x00f0
_USBCON	=	0x00f4
_IAP_TPS	=	0x00f5
_P7	=	0x00f8
_USBADR	=	0x00fc
_RSTCFG	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P00	=	0x0080
_P01	=	0x0081
_P02	=	0x0082
_P03	=	0x0083
_P04	=	0x0084
_P05	=	0x0085
_P06	=	0x0086
_P07	=	0x0087
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_P10	=	0x0090
_P11	=	0x0091
_P12	=	0x0092
_P13	=	0x0093
_P14	=	0x0094
_P15	=	0x0095
_P16	=	0x0096
_P17	=	0x0097
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_P20	=	0x00a0
_P21	=	0x00a1
_P22	=	0x00a2
_P23	=	0x00a3
_P24	=	0x00a4
_P25	=	0x00a5
_P26	=	0x00a6
_P27	=	0x00a7
_EA	=	0x00af
_ELVD	=	0x00ae
_EADC	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_P30	=	0x00b0
_P31	=	0x00b1
_P32	=	0x00b2
_P33	=	0x00b3
_P34	=	0x00b4
_P35	=	0x00b5
_P36	=	0x00b6
_P37	=	0x00b7
_PPCA	=	0x00bf
_PLVD	=	0x00be
_PADC	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_P40	=	0x00c0
_P41	=	0x00c1
_P42	=	0x00c2
_P43	=	0x00c3
_P44	=	0x00c4
_P45	=	0x00c5
_P46	=	0x00c6
_P47	=	0x00c7
_P50	=	0x00c8
_P51	=	0x00c9
_P52	=	0x00ca
_P53	=	0x00cb
_P54	=	0x00cc
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_timers::
	.ds 5
_key_sem::
	.ds 2
_task1_play_flag_65536_24:
	.ds 1
_task1__lc_65536_24:
	.ds 1
_task2__lc_65536_37:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_MINI_SCH_RUN::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_INT0_Interrupt
	.ds	5
	ljmp	_TIME0_Interrupt
	.ds	5
	ljmp	_INT1_Interrupt
	.ds	5
	ljmp	_TIME1_Interrupt
	.ds	5
	ljmp	_UART1_Interrupt
	.ds	5
	ljmp	_ADC_Interrupt
	.ds	5
	ljmp	_LVD_Interrupt
	.ds	5
	ljmp	_PCA_Interrupt
	.ds	5
	ljmp	_UART2_Interrupt
	.ds	5
	ljmp	_SPI_Interrupt
	.ds	5
	ljmp	_INT2_Interrupt
	.ds	5
	ljmp	_INT3_Interrupt
	.ds	5
	ljmp	_TIME2_Interrupt
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_PWM2_Interrupt
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'task1'
;------------------------------------------------------------
;play_flag                 Allocated with name '_task1_play_flag_65536_24'
;_lc                       Allocated with name '_task1__lc_65536_24'
;------------------------------------------------------------
;	src/main.c:47: static uint8_t play_flag = 0;
	mov	_task1_play_flag_65536_24,#0x00
;	src/main.c:48: _SS
	mov	_task1__lc_65536_24,#0x00
;------------------------------------------------------------
;Allocation info for local variables in function 'task2'
;------------------------------------------------------------
;_lc                       Allocated with name '_task2__lc_65536_37'
;------------------------------------------------------------
;	src/main.c:77: _SS
	mov	_task2__lc_65536_37,#0x00
;	src/main.c:7: bit MINI_SCH_RUN = 1;
;	assignBit
	setb	_MINI_SCH_RUN
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'MiniSch_Init'
;------------------------------------------------------------
;	src/main.c:12: void MiniSch_Init(void)
;	-----------------------------------------
;	 function MiniSch_Init
;	-----------------------------------------
_MiniSch_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/main.c:14: AUXR = 0x00;	
	mov	_AUXR,#0x00
;	src/main.c:15: SCON = 0x50;	
	mov	_SCON,#0x50
;	src/main.c:16: TL1 = 0xFC;		//115200
	mov	_TL1,#0xfc
;	src/main.c:17: TH1 = 0xFF;
	mov	_TH1,#0xff
;	src/main.c:18: TR1 = 1;
;	assignBit
	setb	_TR1
;	src/main.c:20: TMOD = 0x00;	//time0 sch, time1 uart
	mov	_TMOD,#0x00
;	src/main.c:21: IE   = 0x92;  	//ea = 1, et0 = 1
	mov	_IE,#0x92
;	src/main.c:22: TL0  = 0xCD;
	mov	_TL0,#0xcd
;	src/main.c:23: TH0  = 0xF8;
	mov	_TH0,#0xf8
;	src/main.c:24: TR0  = 1;
;	assignBit
	setb	_TR0
;	src/main.c:25: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CPU_Init'
;------------------------------------------------------------
;	src/main.c:27: void CPU_Init(void)
;	-----------------------------------------
;	 function CPU_Init
;	-----------------------------------------
_CPU_Init:
;	src/main.c:29: WDT_CONTR = 0x26;	//wdt 2s.
	mov	_WDT_CONTR,#0x26
;	src/main.c:30: WDT_CONTR = 0x36;	//clear wdt.
	mov	_WDT_CONTR,#0x36
;	src/main.c:32: P1   = 0x00;
	mov	_P1,#0x00
;	src/main.c:33: P1M0 = 0xff;
	mov	_P1M0,#0xff
;	src/main.c:34: P1M1 = 0x00;
	mov	_P1M1,#0x00
;	src/main.c:36: P3   = 0x0f;
	mov	_P3,#0x0f
;	src/main.c:37: P3M0 = 0xf2;
	mov	_P3M0,#0xf2
;	src/main.c:38: P3M1 = 0x00;
	mov	_P3M1,#0x00
;	src/main.c:40: P5   = 0x00;
	mov	_P5,#0x00
;	src/main.c:41: P5M0 = 0x00;
	mov	_P5M0,#0x00
;	src/main.c:42: P5M1 = 0x00;
	mov	_P5M1,#0x00
;	src/main.c:43: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'task1'
;------------------------------------------------------------
;play_flag                 Allocated with name '_task1_play_flag_65536_24'
;_lc                       Allocated with name '_task1__lc_65536_24'
;------------------------------------------------------------
;	src/main.c:45: uint8_t task1(void)
;	-----------------------------------------
;	 function task1
;	-----------------------------------------
_task1:
;	src/main.c:48: _SS
	mov	a,#0x36
	cjne	a,_task1__lc_65536_24,00184$
	sjmp	00104$
00184$:
	mov	a,#0x3f
	cjne	a,_task1__lc_65536_24,00185$
	sjmp	00125$
00185$:
	mov	a,#0x43
	cjne	a,_task1__lc_65536_24,00186$
	sjmp	00120$
00186$:
;	src/main.c:50: pwm_init();
	lcall	_pwm_init
;	src/main.c:51: while(MINI_SCH_RUN)
00130$:
	jnb	_MINI_SCH_RUN,00133$
;	src/main.c:53: Sem_Take(key_sem, 0xff);
	mov	_key_sem,#0xff
	mov	_task1__lc_65536_24,#0x36
	mov	dpl,#0x00
	ret
00104$:
	mov	a,_key_sem
	jz	00112$
	mov	a,(_key_sem + 0x0001)
	jnz	00112$
	mov	r7,_key_sem
	cjne	r7,#0xff,00190$
	sjmp	00107$
00190$:
	mov	a,r7
	dec	a
	mov	_key_sem,a
00107$:
	mov	dpl,#0x01
	ret
00112$:
;	src/main.c:54: if(key_sem.sem_value)
	mov	a,(_key_sem + 0x0001)
	mov	r7,a
	jz	00130$
;	src/main.c:56: key_sem.sem_value--;
	mov	a,r7
	dec	a
	mov	(_key_sem + 0x0001),a
;	src/main.c:57: play_flag = 1;
	mov	_task1_play_flag_65536_24,#0x01
;	src/main.c:58: while(play_flag)
00125$:
	mov	a,_task1_play_flag_65536_24
	jz	00130$
;	src/main.c:60: if(dac_send())  //返回为1时表示需要继续填充数据
	lcall	_dac_send
	mov	a,dpl
	jz	00119$
;	src/main.c:62: WaitX(10);
	mov	_task1__lc_65536_24,#0x3f
	mov	dpl,#0x0a
;	src/main.c:66: WaitX(200);
	ret
00119$:
	mov	_task1__lc_65536_24,#0x43
	mov	dpl,#0xc8
	ret
00120$:
;	src/main.c:67: play_flag = 0;
	mov	_task1_play_flag_65536_24,#0x00
;	src/main.c:72: _EE
	sjmp	00125$
00133$:
	mov	_task1__lc_65536_24,#0x00
	mov	dpl,#0xff
;	src/main.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'task2'
;------------------------------------------------------------
;_lc                       Allocated with name '_task2__lc_65536_37'
;------------------------------------------------------------
;	src/main.c:75: uint8_t task2(void)
;	-----------------------------------------
;	 function task2
;	-----------------------------------------
_task2:
;	src/main.c:77: _SS
	mov	a,#0x52
	cjne	a,_task2__lc_65536_37,00170$
	sjmp	00104$
00170$:
	mov	a,#0x55
	cjne	a,_task2__lc_65536_37,00171$
	sjmp	00108$
00171$:
	mov	a,#0x5c
	cjne	a,_task2__lc_65536_37,00172$
	sjmp	00114$
00172$:
	mov	a,#0x5d
	cjne	a,_task2__lc_65536_37,00173$
	sjmp	00121$
00173$:
;	src/main.c:78: Sem_Init(key_sem, 0);
	mov	(_key_sem + 0x0001),#0x00
;	src/main.c:79: while(MINI_SCH_RUN)
00128$:
	jnb	_MINI_SCH_RUN,00131$
;	src/main.c:81: WaitX(10);
	mov	_task2__lc_65536_37,#0x52
	mov	dpl,#0x0a
	ret
00104$:
;	src/main.c:82: if(P33 == 0)
	jb	_P33,00128$
;	src/main.c:84: WaitX(20);
	mov	_task2__lc_65536_37,#0x55
	mov	dpl,#0x14
	ret
00108$:
;	src/main.c:85: if(P33 == 0)
	jb	_P33,00128$
;	src/main.c:87: Sem_Release(key_sem);
	mov	a,(_key_sem + 0x0001)
	mov	r7,a
	inc	a
	mov	(_key_sem + 0x0001),a
;	src/main.c:88: while(P33 == 0)
00121$:
	jb	_P33,00128$
;	src/main.c:90: while(P33 == 0)
00114$:
	jb	_P33,00118$
;	src/main.c:91: WaitX(20);
	mov	_task2__lc_65536_37,#0x5c
	mov	dpl,#0x14
;	src/main.c:92: WaitX(20);
	ret
00118$:
	mov	_task2__lc_65536_37,#0x5d
	mov	dpl,#0x14
;	src/main.c:97: _EE
	ret
00131$:
	mov	_task2__lc_65536_37,#0x00
	mov	dpl,#0xff
;	src/main.c:98: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;d                         Allocated to registers r7 
;d                         Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:100: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src/main.c:102: InitTasks();
	mov	r7,#0x05
00124$:
	mov	ar6,r7
	mov	a,r6
	dec	a
	add	a,#_timers
	mov	r0,a
	mov	@r0,#0x00
	djnz	r7,00124$
;	src/main.c:103: CPU_Init();
	lcall	_CPU_Init
;	src/main.c:104: MiniSch_Init();
	lcall	_MiniSch_Init
;	src/main.c:105: printf("start up!\n");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_printf
;	src/main.c:106: while(1)
00122$:
;	src/main.c:108: WDT_CONTR = 0x36;
	mov	_WDT_CONTR,#0x36
;	src/main.c:109: RunTaskA(task1, 0);
	mov	a,_timers
	jnz	00112$
	lcall	_task1
	mov	r7,dpl
00105$:
	mov	a,r7
	cjne	a,_timers,00169$
	sjmp	00112$
00169$:
	mov	_timers,r7
	sjmp	00105$
00112$:
;	src/main.c:110: RunTaskA(task2, 1);
	mov	a,(_timers + 0x0001)
	jnz	00122$
	lcall	_task2
	mov	r7,dpl
00113$:
	mov	a,r7
	cjne	a,(_timers + 0x0001),00171$
	sjmp	00122$
00171$:
	mov	(_timers + 0x0001),r7
;	src/main.c:112: }
	sjmp	00113$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "start up!"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
