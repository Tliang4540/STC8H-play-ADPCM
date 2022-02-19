;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module pwm_dac
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wav_buf
	.globl _IndexTable
	.globl _StepSizeTable
	.globl _PWM2_Interrupt
	.globl _ADPCM_Decode
	.globl _printf_byte
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
	.globl _dac_buff1
	.globl _dac_sendflag
	.globl _dac_write
	.globl _dac_read
	.globl _pwm_init
	.globl _dac_send
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
_dac_read::
	.ds 1
_dac_write::
	.ds 1
_dac_sendflag::
	.ds 1
_index:
	.ds 1
_predsample:
	.ds 4
_ADPCM_Decode_xcode_65536_5:
	.ds 1
_ADPCM_Decode_step_65536_6:
	.ds 2
_dac_send_i_65536_23:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_dac_buff1::
	.ds 256
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'dac_send'
;------------------------------------------------------------
;i                         Allocated with name '_dac_send_i_65536_23'
;p                         Allocated to registers r6 r7 r5 
;------------------------------------------------------------
;	src/pwm_dac.c:376: static uint16_t i = 0;
	clr	a
	mov	_dac_send_i_65536_23,a
	mov	(_dac_send_i_65536_23 + 1),a
;	src/pwm_dac.c:4: uint8_t dac_read = 0;         //读缓存位置
;	1-genFromRTrack replaced	mov	_dac_read,#0x00
	mov	_dac_read,a
;	src/pwm_dac.c:5: uint8_t dac_write = 0;        //写缓存位置
;	1-genFromRTrack replaced	mov	_dac_write,#0x00
	mov	_dac_write,a
;	src/pwm_dac.c:6: uint8_t dac_sendflag = 0;     //正在发送数据标志位
;	1-genFromRTrack replaced	mov	_dac_sendflag,#0x00
	mov	_dac_sendflag,a
;	src/pwm_dac.c:278: static int8_t  index = 0;	//willow add
;	1-genFromRTrack replaced	mov	_index,#0x00
	mov	_index,a
;	src/pwm_dac.c:279: static int32_t predsample = 0;
	mov	_predsample,a
	mov	(_predsample + 1),a
	mov	(_predsample + 2),a
	mov	(_predsample + 3),a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'ADPCM_Decode'
;------------------------------------------------------------
;xcode                     Allocated with name '_ADPCM_Decode_xcode_65536_5'
;step                      Allocated with name '_ADPCM_Decode_step_65536_6'
;diffq                     Allocated to registers r1 r2 r3 r4 
;------------------------------------------------------------
;	src/pwm_dac.c:281: uint8_t ADPCM_Decode(uint8_t xcode)
;	-----------------------------------------
;	 function ADPCM_Decode
;	-----------------------------------------
_ADPCM_Decode:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_ADPCM_Decode_xcode_65536_5,dpl
;	src/pwm_dac.c:286: step = StepSizeTable[index];
	clr	F0
	mov	b,#0x02
	mov	a,_index
	jnb	acc.7,00154$
	cpl	F0
	cpl	a
	inc	a
00154$:
	mul	ab
	jnb	F0,00155$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00155$:
	add	a,#_StepSizeTable
	mov	dpl,a
	mov	a,#(_StepSizeTable >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_ADPCM_Decode_step_65536_6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
;	src/pwm_dac.c:289: diffq = step>> 3;
	mov	(_ADPCM_Decode_step_65536_6 + 1),a
	mov	r3,_ADPCM_Decode_step_65536_6
	swap	a
	rl	a
	xch	a,r3
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r3
	xch	a,r3
	anl	a,#0x1f
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	mov	r4,a
	mov	ar1,r3
	mov	ar2,r4
;	src/pwm_dac.c:290: if (xcode&4)
	clr	a
	mov	r3,a
	mov	r4,a
	mov	a,_ADPCM_Decode_xcode_65536_5
	jnb	acc.2,00102$
;	src/pwm_dac.c:292: diffq += step;
	mov	r0,_ADPCM_Decode_step_65536_6
	mov	r5,(_ADPCM_Decode_step_65536_6 + 1)
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r0
	add	a,r1
	mov	r1,a
	mov	a,r5
	addc	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
00102$:
;	src/pwm_dac.c:295: if (xcode&2)
	mov	a,_ADPCM_Decode_xcode_65536_5
	jnb	acc.1,00104$
;	src/pwm_dac.c:297: diffq += step>>1;
	mov	r6,_ADPCM_Decode_step_65536_6
	mov	a,(_ADPCM_Decode_step_65536_6 + 1)
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	mov	ar0,r6
	mov	ar5,r7
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r0
	add	a,r1
	mov	r1,a
	mov	a,r5
	addc	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
00104$:
;	src/pwm_dac.c:300: if (xcode&1)
	mov	a,_ADPCM_Decode_xcode_65536_5
	jnb	acc.0,00106$
;	src/pwm_dac.c:302: diffq += step>>2;
	mov	r6,_ADPCM_Decode_step_65536_6
	mov	a,(_ADPCM_Decode_step_65536_6 + 1)
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	mov	ar0,r6
	mov	ar5,r7
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r0
	add	a,r1
	mov	r1,a
	mov	a,r5
	addc	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
00106$:
;	src/pwm_dac.c:306: if (xcode&8)
	mov	a,_ADPCM_Decode_xcode_65536_5
	jnb	acc.3,00108$
;	src/pwm_dac.c:308: predsample -= diffq;
	mov	a,_predsample
	clr	c
	subb	a,r1
	mov	_predsample,a
	mov	a,(_predsample + 1)
	subb	a,r2
	mov	(_predsample + 1),a
	mov	a,(_predsample + 2)
	subb	a,r3
	mov	(_predsample + 2),a
	mov	a,(_predsample + 3)
	subb	a,r4
	mov	(_predsample + 3),a
	sjmp	00109$
00108$:
;	src/pwm_dac.c:312: predsample += diffq;
	mov	a,r1
	add	a,_predsample
	mov	_predsample,a
	mov	a,r2
	addc	a,(_predsample + 1)
	mov	(_predsample + 1),a
	mov	a,r3
	addc	a,(_predsample + 2)
	mov	(_predsample + 2),a
	mov	a,r4
	addc	a,(_predsample + 3)
	mov	(_predsample + 3),a
00109$:
;	src/pwm_dac.c:316: if (predsample > 32767)
	clr	c
	mov	a,#0xff
	subb	a,_predsample
	mov	a,#0x7f
	subb	a,(_predsample + 1)
	clr	a
	subb	a,(_predsample + 2)
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_predsample + 3)
	xrl	b,#0x80
	subb	a,b
	jnc	00113$
;	src/pwm_dac.c:318: predsample = 32767;
	mov	_predsample,#0xff
	mov	(_predsample + 1),#0x7f
	clr	a
	mov	(_predsample + 2),a
	mov	(_predsample + 3),a
	sjmp	00114$
00113$:
;	src/pwm_dac.c:320: else if (predsample < -32768)
	clr	c
	mov	a,(_predsample + 1)
	subb	a,#0x80
	mov	a,(_predsample + 2)
	subb	a,#0xff
	mov	a,(_predsample + 3)
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00114$
;	src/pwm_dac.c:322: predsample = -32768;
	mov	_predsample,#0x00
	mov	(_predsample + 1),#0x80
	mov	(_predsample + 2),#0xff
	mov	(_predsample + 3),#0xff
00114$:
;	src/pwm_dac.c:326: index += IndexTable [xcode];
	mov	a,_ADPCM_Decode_xcode_65536_5
	mov	dptr,#_IndexTable
	movc	a,@a+dptr
	add	a,_index
;	src/pwm_dac.c:328: if (index < 0)
	mov	_index,a
	jnb	acc.7,00118$
;	src/pwm_dac.c:330: index = 0;
	mov	_index,#0x00
	sjmp	00119$
00118$:
;	src/pwm_dac.c:332: else if (index > 88)
	clr	c
	mov	a,#(0x58 ^ 0x80)
	mov	b,_index
	xrl	b,#0x80
	subb	a,b
	jnc	00119$
;	src/pwm_dac.c:334: index = 88;
	mov	_index,#0x58
00119$:
;	src/pwm_dac.c:338: return (uint8_t)((predsample/256)+128);
	clr	a
	mov	__divslong_PARM_2,a
	mov	(__divslong_PARM_2 + 1),#0x01
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,_predsample
	mov	dph,(_predsample + 1)
	mov	b,(_predsample + 2)
	mov	a,(_predsample + 3)
	lcall	__divslong
	mov	r4,dpl
	mov	a,#0x80
	add	a,r4
;	src/pwm_dac.c:339: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_init'
;------------------------------------------------------------
;	src/pwm_dac.c:341: void pwm_init(void)
;	-----------------------------------------
;	 function pwm_init
;	-----------------------------------------
_pwm_init:
;	src/pwm_dac.c:343: P_SW2 = 0x80;
	mov	_P_SW2,#0x80
;	src/pwm_dac.c:344: PWM1_CCER1 = 0x00;
	mov	dptr,#0xfecc
	clr	a
	movx	@dptr,a
;	src/pwm_dac.c:345: PWM1_CCMR2 = 0x60;
	mov	dptr,#0xfec9
	mov	a,#0x60
	movx	@dptr,a
;	src/pwm_dac.c:346: PWM1_CCER1 = 0x10;
	mov	dptr,#0xfecc
	mov	a,#0x10
	movx	@dptr,a
;	src/pwm_dac.c:347: PWM1_CCR2H = 0x00;
	mov	dptr,#0xfed7
	clr	a
	movx	@dptr,a
;	src/pwm_dac.c:348: PWM1_CCR2L = 0x80;
	mov	dptr,#0xfed8
	mov	a,#0x80
	movx	@dptr,a
;	src/pwm_dac.c:349: PWM1_ARRH  = 0x01;
	mov	dptr,#0xfed2
	rl	a
	movx	@dptr,a
;	src/pwm_dac.c:350: PWM1_ARRL  = 0x00;
	mov	dptr,#0xfed3
	clr	a
	movx	@dptr,a
;	src/pwm_dac.c:351: PWM1_ENO   = 0x04;
	mov	dptr,#0xfeb1
	mov	a,#0x04
	movx	@dptr,a
;	src/pwm_dac.c:352: PWM1_BKR   = 0x80;
	mov	dptr,#0xfedd
	mov	a,#0x80
	movx	@dptr,a
;	src/pwm_dac.c:353: PWM1_CR1   = 0x01;
	mov	dptr,#0xfec0
	rl	a
	movx	@dptr,a
;	src/pwm_dac.c:354: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PWM2_Interrupt'
;------------------------------------------------------------
;	src/pwm_dac.c:356: void PWM2_Interrupt(void) interrupt (27)
;	-----------------------------------------
;	 function PWM2_Interrupt
;	-----------------------------------------
_PWM2_Interrupt:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	src/pwm_dac.c:358: PWM2_SR1 = 0x00;
	mov	dptr,#0xfee5
	clr	a
	movx	@dptr,a
;	src/pwm_dac.c:359: if(dac_read != dac_write)
	mov	a,_dac_write
	cjne	a,_dac_read,00110$
	sjmp	00102$
00110$:
;	src/pwm_dac.c:361: PWM1_CCR2L = dac_buff1[dac_read++];
	mov	r7,_dac_read
	inc	_dac_read
	mov	a,r7
	add	a,#_dac_buff1
	mov	dpl,a
	clr	a
	addc	a,#(_dac_buff1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#0xfed8
	movx	@dptr,a
	sjmp	00104$
00102$:
;	src/pwm_dac.c:365: dac_read = 0;
	mov	_dac_read,#0x00
;	src/pwm_dac.c:366: dac_write = 0;
	mov	_dac_write,#0x00
;	src/pwm_dac.c:367: dac_sendflag = 0;
	mov	_dac_sendflag,#0x00
;	src/pwm_dac.c:368: PWM1_CCR2L = 0x80;  //保持中值
	mov	dptr,#0xfed8
	mov	a,#0x80
	movx	@dptr,a
;	src/pwm_dac.c:369: PWM2_CR1 = 0x00;    //停止发送
	mov	dptr,#0xfee0
	clr	a
	movx	@dptr,a
;	src/pwm_dac.c:370: PWM2_IER = 0x00;
	mov	dptr,#0xfee4
	movx	@dptr,a
00104$:
;	src/pwm_dac.c:372: }
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'dac_send'
;------------------------------------------------------------
;i                         Allocated with name '_dac_send_i_65536_23'
;p                         Allocated to registers r6 r7 r5 
;------------------------------------------------------------
;	src/pwm_dac.c:374: uint8_t dac_send(void)
;	-----------------------------------------
;	 function dac_send
;	-----------------------------------------
_dac_send:
;	src/pwm_dac.c:378: while((dac_write != (uint8_t)(dac_read-1)) && (dac_write != (uint8_t)(dac_read-2)))   //还有缓存空间则继续解码数据
00107$:
	mov	a,_dac_read
	mov	r7,a
	dec	a
	mov	r6,a
	cjne	a,_dac_write,00138$
	ljmp	00109$
00138$:
	dec	r7
	dec	r7
	mov	a,r7
	cjne	a,_dac_write,00139$
	ljmp	00109$
00139$:
;	src/pwm_dac.c:380: if((i % 255) == 0)    //块数据头,每块255个字节
	mov	__moduint_PARM_2,#0xff
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_dac_send_i_65536_23
	mov	dph,(_dac_send_i_65536_23 + 1)
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00140$
	ljmp	00104$
00140$:
;	src/pwm_dac.c:382: int16_t *p = (int16_t *)&wav_buf[i];  //16位音频数据
	mov	a,_dac_send_i_65536_23
	add	a,#_wav_buf
	mov	r6,a
	mov	a,(_dac_send_i_65536_23 + 1)
	addc	a,#(_wav_buf >> 8)
	mov	r7,a
	mov	r5,#0x80
;	src/pwm_dac.c:383: predsample = *p;
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	_predsample,r6
	mov	a,r7
	mov	(_predsample + 1),a
	rlc	a
	subb	a,acc
	mov	(_predsample + 2),a
	mov	(_predsample + 3),a
;	src/pwm_dac.c:384: i+=2;
	mov	a,#0x02
	add	a,_dac_send_i_65536_23
	mov	_dac_send_i_65536_23,a
	clr	a
	addc	a,(_dac_send_i_65536_23 + 1)
	mov	(_dac_send_i_65536_23 + 1),a
;	src/pwm_dac.c:385: dac_buff1[dac_write] = (predsample/256)+128;  //转换为8bit
	mov	a,_dac_write
	add	a,#_dac_buff1
	mov	r6,a
	clr	a
	addc	a,#(_dac_buff1 >> 8)
	mov	r7,a
	clr	a
	mov	__divslong_PARM_2,a
	mov	(__divslong_PARM_2 + 1),#0x01
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,_predsample
	mov	dph,(_predsample + 1)
	mov	b,(_predsample + 2)
	mov	a,(_predsample + 3)
	push	ar7
	push	ar6
	lcall	__divslong
	mov	r2,dpl
	pop	ar6
	pop	ar7
	mov	a,#0x80
	add	a,r2
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	src/pwm_dac.c:386: printf_byte(dac_buff1[dac_write]);            //串口输出音频数据
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	dpl,a
	lcall	_printf_byte
;	src/pwm_dac.c:387: dac_write++;
	inc	_dac_write
;	src/pwm_dac.c:389: index = wav_buf[i++];
	mov	r6,_dac_send_i_65536_23
	mov	r7,(_dac_send_i_65536_23 + 1)
	inc	_dac_send_i_65536_23
	clr	a
	cjne	a,_dac_send_i_65536_23,00141$
	inc	(_dac_send_i_65536_23 + 1)
00141$:
	mov	a,r6
	add	a,#_wav_buf
	mov	dpl,a
	mov	a,r7
	addc	a,#(_wav_buf >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_index,a
	ljmp	00107$
00104$:
;	src/pwm_dac.c:393: dac_buff1[dac_write] = ADPCM_Decode(wav_buf[i]&0x0f);
	mov	a,_dac_write
	add	a,#_dac_buff1
	mov	r6,a
	clr	a
	addc	a,#(_dac_buff1 >> 8)
	mov	r7,a
	mov	a,_dac_send_i_65536_23
	add	a,#_wav_buf
	mov	dpl,a
	mov	a,(_dac_send_i_65536_23 + 1)
	addc	a,#(_wav_buf >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x0f
	anl	a,r5
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_ADPCM_Decode
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
;	src/pwm_dac.c:394: printf_byte(dac_buff1[dac_write]);
	mov	a,_dac_write
	add	a,#_dac_buff1
	mov	dpl,a
	clr	a
	addc	a,#(_dac_buff1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	lcall	_printf_byte
;	src/pwm_dac.c:395: dac_write++;
	inc	_dac_write
;	src/pwm_dac.c:396: dac_buff1[dac_write] = ADPCM_Decode(wav_buf[i]>>4);
	mov	a,_dac_write
	add	a,#_dac_buff1
	mov	r6,a
	clr	a
	addc	a,#(_dac_buff1 >> 8)
	mov	r7,a
	mov	a,_dac_send_i_65536_23
	add	a,#_wav_buf
	mov	dpl,a
	mov	a,(_dac_send_i_65536_23 + 1)
	addc	a,#(_wav_buf >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	swap	a
	anl	a,#0x0f
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_ADPCM_Decode
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
;	src/pwm_dac.c:397: printf_byte(dac_buff1[dac_write]);
	mov	a,_dac_write
	add	a,#_dac_buff1
	mov	dpl,a
	clr	a
	addc	a,#(_dac_buff1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	lcall	_printf_byte
;	src/pwm_dac.c:398: dac_write++;
	inc	_dac_write
;	src/pwm_dac.c:399: i++;
	inc	_dac_send_i_65536_23
	clr	a
	cjne	a,_dac_send_i_65536_23,00142$
	inc	(_dac_send_i_65536_23 + 1)
00142$:
;	src/pwm_dac.c:400: if(i == (uint16_t)sizeof(wav_buf))  //解码结束
	mov	a,#0xaa
	cjne	a,_dac_send_i_65536_23,00143$
	mov	a,#0x0c
	cjne	a,(_dac_send_i_65536_23 + 1),00143$
	sjmp	00144$
00143$:
	ljmp	00107$
00144$:
;	src/pwm_dac.c:402: i = 0;
	clr	a
	mov	_dac_send_i_65536_23,a
	mov	(_dac_send_i_65536_23 + 1),a
;	src/pwm_dac.c:403: index = 0;
;	1-genFromRTrack replaced	mov	_index,#0x00
	mov	_index,a
;	src/pwm_dac.c:404: predsample = 0;
	mov	_predsample,a
	mov	(_predsample + 1),a
	mov	(_predsample + 2),a
	mov	(_predsample + 3),a
;	src/pwm_dac.c:405: return 0;
	mov	dpl,#0x00
	ret
00109$:
;	src/pwm_dac.c:410: if(dac_sendflag == 0)
	mov	a,_dac_sendflag
	jnz	00111$
;	src/pwm_dac.c:412: PWM2_CNTRH = 0x00;
	mov	dptr,#0xfeee
	clr	a
	movx	@dptr,a
;	src/pwm_dac.c:413: PWM2_CNTRL = 0x00;
	mov	dptr,#0xfeef
	movx	@dptr,a
;	src/pwm_dac.c:415: PWM2_ARRH = 0x0A;
	mov	dptr,#0xfef2
	mov	a,#0x0a
	movx	@dptr,a
;	src/pwm_dac.c:416: PWM2_ARRL = 0xCD;
	mov	dptr,#0xfef3
	mov	a,#0xcd
	movx	@dptr,a
;	src/pwm_dac.c:418: PWM2_SR1 = 0x00;
	mov	dptr,#0xfee5
	clr	a
	movx	@dptr,a
;	src/pwm_dac.c:419: PWM2_IER = 0x01;
	mov	dptr,#0xfee4
	inc	a
	movx	@dptr,a
;	src/pwm_dac.c:420: PWM2_CR1 = 0x01;
	mov	dptr,#0xfee0
	movx	@dptr,a
;	src/pwm_dac.c:421: dac_sendflag = 1;
;	1-genFromRTrack replaced	mov	_dac_sendflag,#0x01
	mov	_dac_sendflag,a
00111$:
;	src/pwm_dac.c:423: return 1;
	mov	dpl,#0x01
;	src/pwm_dac.c:424: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_StepSizeTable:
	.byte #0x07, #0x00	; 7
	.byte #0x08, #0x00	; 8
	.byte #0x09, #0x00	; 9
	.byte #0x0a, #0x00	; 10
	.byte #0x0b, #0x00	; 11
	.byte #0x0c, #0x00	; 12
	.byte #0x0d, #0x00	; 13
	.byte #0x0e, #0x00	; 14
	.byte #0x10, #0x00	; 16
	.byte #0x11, #0x00	; 17
	.byte #0x13, #0x00	; 19
	.byte #0x15, #0x00	; 21
	.byte #0x17, #0x00	; 23
	.byte #0x19, #0x00	; 25
	.byte #0x1c, #0x00	; 28
	.byte #0x1f, #0x00	; 31
	.byte #0x22, #0x00	; 34
	.byte #0x25, #0x00	; 37
	.byte #0x29, #0x00	; 41
	.byte #0x2d, #0x00	; 45
	.byte #0x32, #0x00	; 50
	.byte #0x37, #0x00	; 55
	.byte #0x3c, #0x00	; 60
	.byte #0x42, #0x00	; 66
	.byte #0x49, #0x00	; 73
	.byte #0x50, #0x00	; 80
	.byte #0x58, #0x00	; 88
	.byte #0x61, #0x00	; 97
	.byte #0x6b, #0x00	; 107
	.byte #0x76, #0x00	; 118
	.byte #0x82, #0x00	; 130
	.byte #0x8f, #0x00	; 143
	.byte #0x9d, #0x00	; 157
	.byte #0xad, #0x00	; 173
	.byte #0xbe, #0x00	; 190
	.byte #0xd1, #0x00	; 209
	.byte #0xe6, #0x00	; 230
	.byte #0xfd, #0x00	; 253
	.byte #0x17, #0x01	; 279
	.byte #0x33, #0x01	; 307
	.byte #0x51, #0x01	; 337
	.byte #0x73, #0x01	; 371
	.byte #0x98, #0x01	; 408
	.byte #0xc1, #0x01	; 449
	.byte #0xee, #0x01	; 494
	.byte #0x20, #0x02	; 544
	.byte #0x56, #0x02	; 598
	.byte #0x92, #0x02	; 658
	.byte #0xd4, #0x02	; 724
	.byte #0x1c, #0x03	; 796
	.byte #0x6c, #0x03	; 876
	.byte #0xc3, #0x03	; 963
	.byte #0x24, #0x04	; 1060
	.byte #0x8e, #0x04	; 1166
	.byte #0x02, #0x05	; 1282
	.byte #0x83, #0x05	; 1411
	.byte #0x10, #0x06	; 1552
	.byte #0xab, #0x06	; 1707
	.byte #0x56, #0x07	; 1878
	.byte #0x12, #0x08	; 2066
	.byte #0xe0, #0x08	; 2272
	.byte #0xc3, #0x09	; 2499
	.byte #0xbd, #0x0a	; 2749
	.byte #0xd0, #0x0b	; 3024
	.byte #0xff, #0x0c	; 3327
	.byte #0x4c, #0x0e	; 3660
	.byte #0xba, #0x0f	; 4026
	.byte #0x4c, #0x11	; 4428
	.byte #0x07, #0x13	; 4871
	.byte #0xee, #0x14	; 5358
	.byte #0x06, #0x17	; 5894
	.byte #0x54, #0x19	; 6484
	.byte #0xdc, #0x1b	; 7132
	.byte #0xa5, #0x1e	; 7845
	.byte #0xb6, #0x21	; 8630
	.byte #0x15, #0x25	; 9493
	.byte #0xca, #0x28	; 10442
	.byte #0xdf, #0x2c	; 11487
	.byte #0x5b, #0x31	; 12635
	.byte #0x4b, #0x36	; 13899
	.byte #0xb9, #0x3b	; 15289
	.byte #0xb2, #0x41	; 16818
	.byte #0x44, #0x48	; 18500
	.byte #0x7e, #0x4f	; 20350
	.byte #0x71, #0x57	; 22385
	.byte #0x2f, #0x60	; 24623
	.byte #0xce, #0x69	; 27086
	.byte #0x62, #0x74	; 29794
	.byte #0xff, #0x7f	; 32767
_IndexTable:
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0x02	;  2
	.db #0x04	;  4
	.db #0x06	;  6
	.db #0x08	;  8
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0x02	;  2
	.db #0x04	;  4
	.db #0x06	;  6
	.db #0x08	;  8
_wav_buf:
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5f	; 95
	.db #0x1f	; 31
	.db #0x50	; 80	'P'
	.db #0x11	; 17
	.db #0x9d	; 157
	.db #0x99	; 153
	.db #0x60	; 96
	.db #0x89	; 137
	.db #0xbc	; 188
	.db #0x9c	; 156
	.db #0x60	; 96
	.db #0x10	; 16
	.db #0x6b	; 107	'k'
	.db #0x79	; 121	'y'
	.db #0x52	; 82	'R'
	.db #0x92	; 146
	.db #0xde	; 222
	.db #0x8a	; 138
	.db #0x31	; 49	'1'
	.db #0x15	; 21
	.db #0xb0	; 176
	.db #0xbb	; 187
	.db #0x18	; 24
	.db #0x26	; 38
	.db #0x81	; 129
	.db #0xbb	; 187
	.db #0x9a	; 154
	.db #0x43	; 67	'C'
	.db #0x02	; 2
	.db #0xb8	; 184
	.db #0xaa	; 170
	.db #0x20	; 32
	.db #0x24	; 36
	.db #0x90	; 144
	.db #0xab	; 171
	.db #0x0a	; 10
	.db #0x21	; 33
	.db #0x82	; 130
	.db #0x19	; 25
	.db #0x04	; 4
	.db #0x84	; 132
	.db #0xbe	; 190
	.db #0x8b	; 139
	.db #0x27	; 39
	.db #0x90	; 144
	.db #0xcd	; 205
	.db #0x3a	; 58
	.db #0x36	; 54	'6'
	.db #0x94	; 148
	.db #0xcb	; 203
	.db #0x9a	; 154
	.db #0x31	; 49	'1'
	.db #0x03	; 3
	.db #0xa1	; 161
	.db #0xbb	; 187
	.db #0x79	; 121	'y'
	.db #0x12	; 18
	.db #0xaa	; 170
	.db #0xac	; 172
	.db #0x32	; 50	'2'
	.db #0x25	; 37
	.db #0xa1	; 161
	.db #0xdb	; 219
	.db #0xab	; 171
	.db #0x32	; 50	'2'
	.db #0x27	; 39
	.db #0x81	; 129
	.db #0xcb	; 203
	.db #0x0b	; 11
	.db #0x14	; 20
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0xa8	; 168
	.db #0x88	; 136
	.db #0x11	; 17
	.db #0xc8	; 200
	.db #0x38	; 56	'8'
	.db #0x26	; 38
	.db #0xca	; 202
	.db #0x40	; 64
	.db #0x13	; 19
	.db #0xf9	; 249
	.db #0xdb	; 219
	.db #0x10	; 16
	.db #0x34	; 52	'4'
	.db #0x01	; 1
	.db #0xc9	; 201
	.db #0x9a	; 154
	.db #0x82	; 130
	.db #0x90	; 144
	.db #0x09	; 9
	.db #0x35	; 53	'5'
	.db #0x13	; 19
	.db #0xfb	; 251
	.db #0x0b	; 11
	.db #0x14	; 20
	.db #0xb0	; 176
	.db #0x8c	; 140
	.db #0x44	; 68	'D'
	.db #0x92	; 146
	.db #0xae	; 174
	.db #0x19	; 25
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x98	; 152
	.db #0x8b	; 139
	.db #0x12	; 18
	.db #0xe3	; 227
	.db #0x9b	; 155
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0xc8	; 200
	.db #0x13	; 19
	.db #0xa9	; 169
	.db #0x17	; 23
	.db #0xb9	; 185
	.db #0x8f	; 143
	.db #0x41	; 65	'A'
	.db #0x12	; 18
	.db #0x98	; 152
	.db #0xbe	; 190
	.db #0x19	; 25
	.db #0x34	; 52	'4'
	.db #0x90	; 144
	.db #0x98	; 152
	.db #0xac	; 172
	.db #0x43	; 67	'C'
	.db #0x84	; 132
	.db #0xe9	; 233
	.db #0x98	; 152
	.db #0x32	; 50	'2'
	.db #0x22	; 34
	.db #0xc8	; 200
	.db #0x9e	; 158
	.db #0x22	; 34
	.db #0xb1	; 177
	.db #0xc8	; 200
	.db #0x4a	; 74	'J'
	.db #0x54	; 84	'T'
	.db #0x98	; 152
	.db #0xbb	; 187
	.db #0x98	; 152
	.db #0x25	; 37
	.db #0x92	; 146
	.db #0x9b	; 155
	.db #0x61	; 97	'a'
	.db #0xa0	; 160
	.db #0xca	; 202
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x28	; 40
	.db #0x22	; 34
	.db #0xea	; 234
	.db #0xaf	; 175
	.db #0x20	; 32
	.db #0x35	; 53	'5'
	.db #0xc0	; 192
	.db #0xab	; 171
	.db #0x41	; 65	'A'
	.db #0x03	; 3
	.db #0xca	; 202
	.db #0x8c	; 140
	.db #0x62	; 98	'b'
	.db #0x82	; 130
	.db #0xca	; 202
	.db #0x09	; 9
	.db #0x33	; 51	'3'
	.db #0x98	; 152
	.db #0xaa	; 170
	.db #0x30	; 48	'0'
	.db #0x13	; 19
	.db #0xeb	; 235
	.db #0x19	; 25
	.db #0x14	; 20
	.db #0xaa	; 170
	.db #0x0a	; 10
	.db #0x32	; 50	'2'
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x06	; 6
	.db #0xc8	; 200
	.db #0x89	; 137
	.db #0x31	; 49	'1'
	.db #0x13	; 19
	.db #0xec	; 236
	.db #0x09	; 9
	.db #0x23	; 35
	.db #0xa1	; 161
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0xf1	; 241
	.db #0x8c	; 140
	.db #0x41	; 65	'A'
	.db #0x03	; 3
	.db #0xc9	; 201
	.db #0x89	; 137
	.db #0x15	; 21
	.db #0xc8	; 200
	.db #0x8a	; 138
	.db #0x31	; 49	'1'
	.db #0x91	; 145
	.db #0xa8	; 168
	.db #0x08	; 8
	.db #0x25	; 37
	.db #0x99	; 153
	.db #0xab	; 171
	.db #0x51	; 81	'Q'
	.db #0xc1	; 193
	.db #0x09	; 9
	.db #0x18	; 24
	.db #0xa2	; 162
	.db #0xc0	; 192
	.db #0x04	; 4
	.db #0x94	; 148
	.db #0x0a	; 10
	.db #0xb1	; 177
	.db #0xf1	; 241
	.db #0x43	; 67	'C'
	.db #0x84	; 132
	.db #0x31	; 49	'1'
	.db #0xa0	; 160
	.db #0xda	; 218
	.db #0x28	; 40
	.db #0xfd	; 253
	.db #0x9f	; 159
	.db #0x30	; 48	'0'
	.db #0xa1	; 161
	.db #0x89	; 137
	.db #0x53	; 83	'S'
	.db #0x02	; 2
	.db #0x41	; 65	'A'
	.db #0x04	; 4
	.db #0xbb	; 187
	.db #0x38	; 56	'8'
	.db #0xa4	; 164
	.db #0xfc	; 252
	.db #0x9b	; 155
	.db #0x10	; 16
	.db #0x99	; 153
	.db #0x0a	; 10
	.db #0x53	; 83	'S'
	.db #0x24	; 36
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x30	; 48	'0'
	.db #0x14	; 20
	.db #0xb1	; 177
	.db #0xaa	; 170
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0x8a	; 138
	.db #0x02	; 2
	.db #0xb5	; 181
	.db #0xb8	; 184
	.db #0x4b	; 75	'K'
	.db #0x30	; 48	'0'
	.db #0x26	; 38
	.db #0x90	; 144
	.db #0x98	; 152
	.db #0xa9	; 169
	.db #0x48	; 72	'H'
	.db #0x15	; 21
	.db #0x98	; 152
	.db #0x09	; 9
	.db #0xd8	; 216
	.db #0xbd	; 189
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0x50	; 80	'P'
	.db #0x24	; 36
	.db #0xb0	; 176
	.db #0x8a	; 138
	.db #0x98	; 152
	.db #0x48	; 72	'H'
	.db #0x54	; 84	'T'
	.db #0xb0	; 176
	.db #0x8a	; 138
	.db #0xa0	; 160
	.db #0xcc	; 204
	.db #0x0b	; 11
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x26	; 38
	.db #0xb0	; 176
	.db #0x0b	; 11
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x37	; 55	'7'
	.db #0x92	; 146
	.db #0xab	; 171
	.db #0xab	; 171
	.db #0xdc	; 220
	.db #0x8c	; 140
	.db #0x22	; 34
	.db #0x43	; 67	'C'
	.db #0x14	; 20
	.db #0xba	; 186
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x15	; 21
	.db #0x98	; 152
	.db #0x9a	; 154
	.db #0xcb	; 203
	.db #0x9c	; 156
	.db #0xbd	; 189
	.db #0x52	; 82	'R'
	.db #0x13	; 19
	.db #0x30	; 48	'0'
	.db #0xc1	; 193
	.db #0x9d	; 157
	.db #0x21	; 33
	.db #0x11	; 17
	.db #0x51	; 81	'Q'
	.db #0xa0	; 160
	.db #0x9b	; 155
	.db #0xa0	; 160
	.db #0xcb	; 203
	.db #0xbc	; 188
	.db #0x32	; 50	'2'
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x99	; 153
	.db #0xaa	; 170
	.db #0x20	; 32
	.db #0x16	; 22
	.db #0x11	; 17
	.db #0x81	; 129
	.db #0xcb	; 203
	.db #0x89	; 137
	.db #0xca	; 202
	.db #0xbe	; 190
	.db #0x22	; 34
	.db #0x33	; 51	'3'
	.db #0x25	; 37
	.db #0xbb	; 187
	.db #0x9b	; 155
	.db #0x30	; 48	'0'
	.db #0x36	; 54	'6'
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0x08	; 8
	.db #0xe9	; 233
	.db #0xca	; 202
	.db #0x48	; 72	'H'
	.db #0x21	; 33
	.db #0x42	; 66	'B'
	.db #0xd8	; 216
	.db #0x8a	; 138
	.db #0x10	; 16
	.db #0x42	; 66	'B'
	.db #0x82	; 130
	.db #0x88	; 136
	.db #0x98	; 152
	.db #0x8b	; 139
	.db #0xba	; 186
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0x03	; 3
	.db #0x41	; 65	'A'
	.db #0xa8	; 168
	.db #0x9b	; 155
	.db #0x10	; 16
	.db #0x34	; 52	'4'
	.db #0x03	; 3
	.db #0x98	; 152
	.db #0x99	; 153
	.db #0xab	; 171
	.db #0xc9	; 201
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x24	; 36
	.db #0x99	; 153
	.db #0xaa	; 170
	.db #0x3a	; 58
	.db #0x25	; 37
	.db #0x31	; 49	'1'
	.db #0x98	; 152
	.db #0x8c	; 140
	.db #0xa8	; 168
	.db #0xa9	; 169
	.db #0xfb	; 251
	.db #0x2d	; 45
	.db #0x10	; 16
	.db #0x72	; 114	'r'
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x89	; 137
	.db #0x24	; 36
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0xda	; 218
	.db #0x80	; 128
	.db #0x9a	; 154
	.db #0xdb	; 219
	.db #0x2a	; 42
	.db #0x02	; 2
	.db #0x54	; 84	'T'
	.db #0xa0	; 160
	.db #0x89	; 137
	.db #0x89	; 137
	.db #0x44	; 68	'D'
	.db #0x11	; 17
	.db #0x91	; 145
	.db #0xaa	; 170
	.db #0xb9	; 185
	.db #0xb0	; 176
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0x39	; 57	'9'
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0xd0	; 208
	.db #0x29	; 41
	.db #0x22	; 34
	.db #0x33	; 51	'3'
	.db #0x8a	; 138
	.db #0x9a	; 154
	.db #0x9e	; 158
	.db #0xc1	; 193
	.db #0xbc	; 188
	.db #0x82	; 130
	.db #0x50	; 80	'P'
	.db #0x13	; 19
	.db #0x80	; 128
	.db #0xcb	; 203
	.db #0x11	; 17
	.db #0x42	; 66	'B'
	.db #0x06	; 6
	.db #0x88	; 136
	.db #0xa9	; 169
	.db #0x0b	; 11
	.db #0xc9	; 201
	.db #0xad	; 173
	.db #0x82	; 130
	.db #0x50	; 80	'P'
	.db #0x23	; 35
	.db #0x0a	; 10
	.db #0xda	; 218
	.db #0x28	; 40
	.db #0x24	; 36
	.db #0x23	; 35
	.db #0xb8	; 184
	.db #0xc9	; 201
	.db #0xaa	; 170
	.db #0xb8	; 184
	.db #0xaf	; 175
	.db #0x80	; 128
	.db #0x62	; 98	'b'
	.db #0x83	; 131
	.db #0x81	; 129
	.db #0xbc	; 188
	.db #0x83	; 131
	.db #0x62	; 98	'b'
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0x98	; 152
	.db #0x8a	; 138
	.db #0x9d	; 157
	.db #0x91	; 145
	.db #0x62	; 98	'b'
	.db #0x02	; 2
	.db #0x80	; 128
	.db #0x8c	; 140
	.db #0x18	; 24
	.db #0x62	; 98	'b'
	.db #0x01	; 1
	.db #0xa1	; 161
	.db #0xaa	; 170
	.db #0xb9	; 185
	.db #0xc9	; 201
	.db #0x1e	; 30
	.db #0x89	; 137
	.db #0x15	; 21
	.db #0x02	; 2
	.db #0x81	; 129
	.db #0x0d	; 13
	.db #0x08	; 8
	.db #0x43	; 67	'C'
	.db #0x01	; 1
	.db #0xa2	; 162
	.db #0x9d	; 157
	.db #0xb9	; 185
	.db #0xba	; 186
	.db #0x1c	; 28
	.db #0x29	; 41
	.db #0x27	; 39
	.db #0x10	; 16
	.db #0xb1	; 177
	.db #0x1a	; 26
	.db #0x29	; 41
	.db #0x27	; 39
	.db #0x10	; 16
	.db #0xc0	; 192
	.db #0x99	; 153
	.db #0x9c	; 156
	.db #0xea	; 234
	.db #0x81	; 129
	.db #0x4a	; 74	'J'
	.db #0x12	; 18
	.db #0x21	; 33
	.db #0xaa	; 170
	.db #0xb2	; 178
	.db #0x60	; 96
	.db #0x69	; 105	'i'
	.db #0x1d	; 29
	.db #0x49	; 73	'I'
	.db #0x31	; 49	'1'
	.db #0x90	; 144
	.db #0xaa	; 170
	.db #0xcc	; 204
	.db #0xc9	; 201
	.db #0x2c	; 44
	.db #0x1c	; 28
	.db #0x14	; 20
	.db #0x21	; 33
	.db #0xa1	; 161
	.db #0x88	; 136
	.db #0x1a	; 26
	.db #0x15	; 21
	.db #0x33	; 51	'3'
	.db #0xa0	; 160
	.db #0xe9	; 233
	.db #0x9c	; 156
	.db #0xdb	; 219
	.db #0x18	; 24
	.db #0x3b	; 59
	.db #0x06	; 6
	.db #0x21	; 33
	.db #0xa8	; 168
	.db #0x91	; 145
	.db #0x5a	; 90	'Z'
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0xd9	; 217
	.db #0x99	; 153
	.db #0xac	; 172
	.db #0x90	; 144
	.db #0x6b	; 107	'k'
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0xb0	; 176
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x17	; 23
	.db #0x00	; 0
	.db #0xc8	; 200
	.db #0xc9	; 201
	.db #0xbc	; 188
	.db #0xc0	; 192
	.db #0x38	; 56	'8'
	.db #0x30	; 48	'0'
	.db #0x15	; 21
	.db #0x28	; 40
	.db #0xb8	; 184
	.db #0x21	; 33
	.db #0x39	; 57	'9'
	.db #0x87	; 135
	.db #0x11	; 17
	.db #0x9a	; 154
	.db #0xd9	; 217
	.db #0xbc	; 188
	.db #0x9a	; 154
	.db #0x2b	; 43
	.db #0x33	; 51	'3'
	.db #0x45	; 69	'E'
	.db #0x80	; 128
	.db #0xa2	; 162
	.db #0x38	; 56	'8'
	.db #0x29	; 41
	.db #0x06	; 6
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0xb8	; 184
	.db #0xaf	; 175
	.db #0x8b	; 139
	.db #0x1d	; 29
	.db #0x81	; 129
	.db #0x24	; 36
	.db #0x20	; 32
	.db #0x91	; 145
	.db #0x20	; 32
	.db #0x3b	; 59
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x09	; 9
	.db #0xf0	; 240
	.db #0xba	; 186
	.db #0x8f	; 143
	.db #0xa9	; 169
	.db #0x01	; 1
	.db #0x32	; 50	'2'
	.db #0x12	; 18
	.db #0x95	; 149
	.db #0x20	; 32
	.db #0x1a	; 26
	.db #0x21	; 33
	.db #0x58	; 88	'X'
	.db #0x18	; 24
	.db #0xa8	; 168
	.db #0xcc	; 204
	.db #0xbd	; 189
	.db #0xc9	; 201
	.db #0x19	; 25
	.db #0x20	; 32
	.db #0x16	; 22
	.db #0x21	; 33
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x83	; 131
	.db #0xb3	; 179
	.db #0xcc	; 204
	.db #0xce	; 206
	.db #0xab	; 171
	.db #0x9c	; 156
	.db #0x10	; 16
	.db #0x52	; 82	'R'
	.db #0x31	; 49	'1'
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x19	; 25
	.db #0xa3	; 163
	.db #0x15	; 21
	.db #0x18	; 24
	.db #0xf1	; 241
	.db #0xa9	; 169
	.db #0x9f	; 159
	.db #0xba	; 186
	.db #0x08	; 8
	.db #0x48	; 72	'H'
	.db #0x22	; 34
	.db #0x13	; 19
	.db #0x22	; 34
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x71	; 113	'q'
	.db #0x0a	; 10
	.db #0xd9	; 217
	.db #0xcb	; 203
	.db #0x9d	; 157
	.db #0x9c	; 156
	.db #0x80	; 128
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0x84	; 132
	.db #0x21	; 33
	.db #0x19	; 25
	.db #0xa3	; 163
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x89	; 137
	.db #0xdb	; 219
	.db #0xfb	; 251
	.db #0x9b	; 155
	.db #0x8e	; 142
	.db #0x80	; 128
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x84	; 132
	.db #0x83	; 131
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0x31	; 49	'1'
	.db #0x2d	; 45
	.db #0xcc	; 204
	.db #0xbb	; 187
	.db #0x9f	; 159
	.db #0x9b	; 155
	.db #0x88	; 136
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x12	; 18
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0xa3	; 163
	.db #0x02	; 2
	.db #0x2a	; 42
	.db #0xbc	; 188
	.db #0xed	; 237
	.db #0xab	; 171
	.db #0x8e	; 142
	.db #0x89	; 137
	.db #0x32	; 50	'2'
	.db #0x60	; 96
	.db #0x01	; 1
	.db #0x94	; 148
	.db #0x82	; 130
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x1a	; 26
	.db #0xa9	; 169
	.db #0xfb	; 251
	.db #0x9c	; 156
	.db #0x8e	; 142
	.db #0x8a	; 138
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x14	; 20
	.db #0x23	; 35
	.db #0x30	; 48	'0'
	.db #0x2a	; 42
	.db #0x90	; 144
	.db #0x21	; 33
	.db #0x4a	; 74	'J'
	.db #0x9a	; 154
	.db #0xfa	; 250
	.db #0xdc	; 220
	.db #0xd9	; 217
	.db #0x99	; 153
	.db #0x18	; 24
	.db #0x22	; 34
	.db #0x33	; 51	'3'
	.db #0x43	; 67	'C'
	.db #0x11	; 17
	.db #0x82	; 130
	.db #0x11	; 17
	.db #0x29	; 41
	.db #0x92	; 146
	.db #0x93	; 147
	.db #0xad	; 173
	.db #0xcf	; 207
	.db #0xac	; 172
	.db #0x9d	; 157
	.db #0xa8	; 168
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x84	; 132
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x2a	; 42
	.db #0xb8	; 184
	.db #0xfb	; 251
	.db #0xbc	; 188
	.db #0xcc	; 204
	.db #0x9b	; 155
	.db #0x89	; 137
	.db #0x23	; 35
	.db #0x54	; 84	'T'
	.db #0x31	; 49	'1'
	.db #0x12	; 18
	.db #0x02	; 2
	.db #0x12	; 18
	.db #0x18	; 24
	.db #0xa2	; 162
	.db #0xb5	; 181
	.db #0xa0	; 160
	.db #0xad	; 173
	.db #0xbf	; 191
	.db #0x47	; 71	'G'
	.db #0xe2	; 226
	.db #0x44	; 68	'D'
	.db #0xac	; 172
	.db #0x99	; 153
	.db #0x21	; 33
	.db #0x71	; 113	'q'
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0xb3	; 179
	.db #0x84	; 132
	.db #0x00	; 0
	.db #0xa8	; 168
	.db #0xda	; 218
	.db #0xbc	; 188
	.db #0xbe	; 190
	.db #0xcb	; 203
	.db #0x98	; 152
	.db #0x11	; 17
	.db #0x52	; 82	'R'
	.db #0x41	; 65	'A'
	.db #0x31	; 49	'1'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x20	; 32
	.db #0x5a	; 90	'Z'
	.db #0x3b	; 59
	.db #0x8b	; 139
	.db #0xea	; 234
	.db #0xca	; 202
	.db #0xeb	; 235
	.db #0xc9	; 201
	.db #0xa0	; 160
	.db #0x02	; 2
	.db #0x41	; 65	'A'
	.db #0x40	; 64
	.db #0x21	; 33
	.db #0x32	; 50	'2'
	.db #0x30	; 48	'0'
	.db #0x29	; 41
	.db #0x90	; 144
	.db #0xc3	; 195
	.db #0x98	; 152
	.db #0xac	; 172
	.db #0xcd	; 205
	.db #0xac	; 172
	.db #0x9d	; 157
	.db #0x8a	; 138
	.db #0x81	; 129
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x32	; 50	'2'
	.db #0x13	; 19
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0xb8	; 184
	.db #0xcc	; 204
	.db #0xbe	; 190
	.db #0xcd	; 205
	.db #0xbb	; 187
	.db #0x9a	; 154
	.db #0x20	; 32
	.db #0x72	; 114	'r'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x18	; 24
	.db #0x81	; 129
	.db #0x93	; 147
	.db #0xa0	; 160
	.db #0xfb	; 251
	.db #0xeb	; 235
	.db #0xdb	; 219
	.db #0xca	; 202
	.db #0x89	; 137
	.db #0x4a	; 74	'J'
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x13	; 19
	.db #0x22	; 34
	.db #0x83	; 131
	.db #0x84	; 132
	.db #0x21	; 33
	.db #0x3a	; 58
	.db #0xa8	; 168
	.db #0xd9	; 217
	.db #0xac	; 172
	.db #0xae	; 174
	.db #0x9d	; 157
	.db #0x8c	; 140
	.db #0x88	; 136
	.db #0x83	; 131
	.db #0x15	; 21
	.db #0x31	; 49	'1'
	.db #0x30	; 48	'0'
	.db #0x12	; 18
	.db #0x02	; 2
	.db #0x93	; 147
	.db #0x83	; 131
	.db #0x08	; 8
	.db #0x9d	; 157
	.db #0xcc	; 204
	.db #0xcb	; 203
	.db #0x9e	; 158
	.db #0x9c	; 156
	.db #0x99	; 153
	.db #0x93	; 147
	.db #0x06	; 6
	.db #0x22	; 34
	.db #0x31	; 49	'1'
	.db #0x20	; 32
	.db #0x12	; 18
	.db #0x48	; 72	'H'
	.db #0x29	; 41
	.db #0xb0	; 176
	.db #0xd4	; 212
	.db #0xa8	; 168
	.db #0xab	; 171
	.db #0xae	; 174
	.db #0xbc	; 188
	.db #0x8a	; 138
	.db #0x29	; 41
	.db #0x42	; 66	'B'
	.db #0x33	; 51	'3'
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x48	; 72	'H'
	.db #0x18	; 24
	.db #0x80	; 128
	.db #0xa0	; 160
	.db #0xba	; 186
	.db #0xbd	; 189
	.db #0xcd	; 205
	.db #0xbc	; 188
	.db #0xbb	; 187
	.db #0x88	; 136
	.db #0x42	; 66	'B'
	.db #0x33	; 51	'3'
	.db #0x25	; 37
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0x12	; 18
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x98	; 152
	.db #0xcb	; 203
	.db #0xec	; 236
	.db #0xca	; 202
	.db #0xbd	; 189
	.db #0x9d	; 157
	.db #0x9a	; 154
	.db #0x10	; 16
	.db #0x33	; 51	'3'
	.db #0x43	; 67	'C'
	.db #0x24	; 36
	.db #0x13	; 19
	.db #0x13	; 19
	.db #0x21	; 33
	.db #0x20	; 32
	.db #0x08	; 8
	.db #0xaa	; 170
	.db #0xdc	; 220
	.db #0xcb	; 203
	.db #0xcd	; 205
	.db #0xbc	; 188
	.db #0x9b	; 155
	.db #0x09	; 9
	.db #0x33	; 51	'3'
	.db #0x35	; 53	'5'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x03	; 3
	.db #0x13	; 19
	.db #0x0b	; 11
	.db #0xbe	; 190
	.db #0xdb	; 219
	.db #0xbd	; 189
	.db #0xaf	; 175
	.db #0xac	; 172
	.db #0x89	; 137
	.db #0x20	; 32
	.db #0x23	; 35
	.db #0x15	; 21
	.db #0x23	; 35
	.db #0x32	; 50	'2'
	.db #0x21	; 33
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x90	; 144
	.db #0xc9	; 201
	.db #0xbb	; 187
	.db #0xce	; 206
	.db #0xcd	; 205
	.db #0xac	; 172
	.db #0x8b	; 139
	.db #0x19	; 25
	.db #0x32	; 50	'2'
	.db #0x25	; 37
	.db #0x23	; 35
	.db #0x33	; 51	'3'
	.db #0x32	; 50	'2'
	.db #0x13	; 19
	.db #0x13	; 19
	.db #0x01	; 1
	.db #0xa9	; 169
	.db #0xaf	; 175
	.db #0xdb	; 219
	.db #0xdc	; 220
	.db #0xbb	; 187
	.db #0xac	; 172
	.db #0x19	; 25
	.db #0x21	; 33
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0x12	; 18
	.db #0x03	; 3
	.db #0x88	; 136
	.db #0xcb	; 203
	.db #0xdc	; 220
	.db #0xec	; 236
	.db #0xcb	; 203
	.db #0xbb	; 187
	.db #0x89	; 137
	.db #0x30	; 48	'0'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x32	; 50	'2'
	.db #0x31	; 49	'1'
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0xbb	; 187
	.db #0xdd	; 221
	.db #0xdc	; 220
	.db #0xbd	; 189
	.db #0xcb	; 203
	.db #0x9a	; 154
	.db #0x10	; 16
	.db #0x42	; 66	'B'
	.db #0x32	; 50	'2'
	.db #0x24	; 36
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0xac	; 172
	.db #0x1d	; 29
	.db #0x3a	; 58
	.db #0x02	; 2
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0xcb	; 203
	.db #0xfb	; 251
	.db #0xdb	; 219
	.db #0xbc	; 188
	.db #0xbc	; 188
	.db #0x8a	; 138
	.db #0x20	; 32
	.db #0x24	; 36
	.db #0x43	; 67	'C'
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x22	; 34
	.db #0x02	; 2
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0xa8	; 168
	.db #0xbe	; 190
	.db #0xcd	; 205
	.db #0xdc	; 220
	.db #0xca	; 202
	.db #0xaa	; 170
	.db #0x18	; 24
	.db #0x32	; 50	'2'
	.db #0x43	; 67	'C'
	.db #0x33	; 51	'3'
	.db #0x24	; 36
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0xa0	; 160
	.db #0xea	; 234
	.db #0xdb	; 219
	.db #0xdc	; 220
	.db #0xbb	; 187
	.db #0xad	; 173
	.db #0x88	; 136
	.db #0x31	; 49	'1'
	.db #0x43	; 67	'C'
	.db #0x32	; 50	'2'
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x13	; 19
	.db #0x81	; 129
	.db #0xcb	; 203
	.db #0xbf	; 191
	.db #0xcd	; 205
	.db #0xbc	; 188
	.db #0xcb	; 203
	.db #0x89	; 137
	.db #0x11	; 17
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x22	; 34
	.db #0x12	; 18
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0xc9	; 201
	.db #0xbd	; 189
	.db #0xcd	; 205
	.db #0xbd	; 189
	.db #0xbc	; 188
	.db #0x99	; 153
	.db #0x20	; 32
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x31	; 49	'1'
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0xb9	; 185
	.db #0xed	; 237
	.db #0xdb	; 219
	.db #0xcc	; 204
	.db #0xba	; 186
	.db #0x9b	; 155
	.db #0x10	; 16
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0x22	; 34
	.db #0x32	; 50	'2'
	.db #0x22	; 34
	.db #0x33	; 51	'3'
	.db #0x23	; 35
	.db #0x01	; 1
	.db #0xc9	; 201
	.db #0xdc	; 220
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xca	; 202
	.db #0xa9	; 169
	.db #0x08	; 8
	.db #0x32	; 50	'2'
	.db #0x34	; 52	'4'
	.db #0x33	; 51	'3'
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0x24	; 36
	.db #0x23	; 35
	.db #0x11	; 17
	.db #0xa9	; 169
	.db #0xfb	; 251
	.db #0xdb	; 219
	.db #0xcc	; 204
	.db #0xbb	; 187
	.db #0xbb	; 187
	.db #0x09	; 9
	.db #0x31	; 49	'1'
	.db #0x45	; 69	'E'
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x43	; 67	'C'
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x98	; 152
	.db #0xdb	; 219
	.db #0xbc	; 188
	.db #0xce	; 206
	.db #0xcb	; 203
	.db #0xaa	; 170
	.db #0x99	; 153
	.db #0x11	; 17
	.db #0x43	; 67	'C'
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x10	; 16
	.db #0x98	; 152
	.db #0xba	; 186
	.db #0xce	; 206
	.db #0xbc	; 188
	.db #0xbd	; 189
	.db #0xab	; 171
	.db #0x9a	; 154
	.db #0x08	; 8
	.db #0x33	; 51	'3'
	.db #0x45	; 69	'E'
	.db #0x42	; 66	'B'
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x90	; 144
	.db #0xb9	; 185
	.db #0xbd	; 189
	.db #0xdd	; 221
	.db #0xbb	; 187
	.db #0xbb	; 187
	.db #0xab	; 171
	.db #0x09	; 9
	.db #0x21	; 33
	.db #0x35	; 53	'5'
	.db #0x34	; 52	'4'
	.db #0x53	; 83	'S'
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0x12	; 18
	.db #0x88	; 136
	.db #0xa0	; 160
	.db #0xbb	; 187
	.db #0xbe	; 190
	.db #0xbe	; 190
	.db #0xbb	; 187
	.db #0xaa	; 170
	.db #0x9a	; 154
	.db #0x10	; 16
	.db #0x21	; 33
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x32	; 50	'2'
	.db #0x34	; 52	'4'
	.db #0x32	; 50	'2'
	.db #0x12	; 18
	.db #0x02	; 2
	.db #0xba	; 186
	.db #0xcc	; 204
	.db #0xdb	; 219
	.db #0xac	; 172
	.db #0xa9	; 169
	.db #0x8a	; 138
	.db #0x98	; 152
	.db #0x21	; 33
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x63	; 99	'c'
	.db #0x34	; 52	'4'
	.db #0x12	; 18
	.db #0x33	; 51	'3'
	.db #0x01	; 1
	.db #0x88	; 136
	.db #0xc8	; 200
	.db #0xbf	; 191
	.db #0xab	; 171
	.db #0xac	; 172
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0x41	; 65	'A'
	.db #0x62	; 98	'b'
	.db #0x22	; 34
	.db #0x32	; 50	'2'
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x84	; 132
	.db #0x99	; 153
	.db #0xd8	; 216
	.db #0xde	; 222
	.db #0xa9	; 169
	.db #0x09	; 9
	.db #0xb8	; 184
	.db #0xca	; 202
	.db #0x09	; 9
	.db #0x12	; 18
	.db #0x03	; 3
	.db #0x11	; 17
	.db #0x27	; 39
	.db #0x33	; 51	'3'
	.db #0x26	; 38
	.db #0x11	; 17
	.db #0x22	; 34
	.db #0x81	; 129
	.db #0xba	; 186
	.db #0xce	; 206
	.db #0xad	; 173
	.db #0x88	; 136
	.db #0xa0	; 160
	.db #0x98	; 152
	.db #0x10	; 16
	.db #0x44	; 68	'D'
	.db #0x92	; 146
	.db #0x80	; 128
	.db #0x21	; 33
	.db #0x8e	; 142
	.db #0x21	; 33
	.db #0xc8	; 200
	.db #0x08	; 8
	.db #0x51	; 81	'Q'
	.db #0xa0	; 160
	.db #0xbc	; 188
	.db #0x85	; 133
	.db #0xfd	; 253
	.db #0x25	; 37
	.db #0x0e	; 14
	.db #0x91	; 145
	.db #0xad	; 173
	.db #0x63	; 99	'c'
	.db #0x53	; 83	'S'
	.db #0x71	; 113	'q'
	.db #0x77	; 119	'w'
	.db #0xe8	; 232
	.db #0xab	; 171
	.db #0x31	; 49	'1'
	.db #0x14	; 20
	.db #0xa9	; 169
	.db #0x1a	; 26
	.db #0x22	; 34
	.db #0x80	; 128
	.db #0xc9	; 201
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0x46	; 70	'F'
	.db #0x82	; 130
	.db #0xab	; 171
	.db #0x0a	; 10
	.db #0x11	; 17
	.db #0xb0	; 176
	.db #0xac	; 172
	.db #0x20	; 32
	.db #0x14	; 20
	.db #0x81	; 129
	.db #0x88	; 136
	.db #0x89	; 137
	.db #0x88	; 136
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x44	; 68	'D'
	.db #0xa1	; 161
	.db #0x9a	; 154
	.db #0x28	; 40
	.db #0x90	; 144
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0x28	; 40
	.db #0x34	; 52	'4'
	.db #0x90	; 144
	.db #0xbb	; 187
	.db #0x0a	; 10
	.db #0x21	; 33
	.db #0x88	; 136
	.db #0x30	; 48	'0'
	.db #0x35	; 53	'5'
	.db #0x92	; 146
	.db #0xbd	; 189
	.db #0x18	; 24
	.db #0x23	; 35
	.db #0xcb	; 203
	.db #0x0d	; 13
	.db #0x21	; 33
	.db #0xd0	; 208
	.db #0xbc	; 188
	.db #0x40	; 64
	.db #0x34	; 52	'4'
	.db #0x98	; 152
	.db #0x8b	; 139
	.db #0x53	; 83	'S'
	.db #0x83	; 131
	.db #0xbb	; 187
	.db #0x39	; 57	'9'
	.db #0x26	; 38
	.db #0x90	; 144
	.db #0xca	; 202
	.db #0xce	; 206
	.db #0x8a	; 138
	.db #0x11	; 17
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x44	; 68	'D'
	.db #0x81	; 129
	.db #0x99	; 153
	.db #0x10	; 16
	.db #0x34	; 52	'4'
	.db #0x01	; 1
	.db #0x98	; 152
	.db #0xa8	; 168
	.db #0xfa	; 250
	.db #0xbf	; 191
	.db #0x9b	; 155
	.db #0x28	; 40
	.db #0x31	; 49	'1'
	.db #0x44	; 68	'D'
	.db #0x13	; 19
	.db #0xa0	; 160
	.db #0x8a	; 138
	.db #0x21	; 33
	.db #0x32	; 50	'2'
	.db #0x54	; 84	'T'
	.db #0x01	; 1
	.db #0xfa	; 250
	.db #0xcc	; 204
	.db #0xab	; 171
	.db #0x8a	; 138
	.db #0x41	; 65	'A'
	.db #0x34	; 52	'4'
	.db #0x22	; 34
	.db #0x80	; 128
	.db #0x99	; 153
	.db #0x9a	; 154
	.db #0x41	; 65	'A'
	.db #0x35	; 53	'5'
	.db #0x03	; 3
	.db #0xa0	; 160
	.db #0xfe	; 254
	.db #0xbc	; 188
	.db #0x09	; 9
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x81	; 129
	.db #0xbb	; 187
	.db #0x9c	; 156
	.db #0x41	; 65	'A'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x81	; 129
	.db #0xcc	; 204
	.db #0xbd	; 189
	.db #0xab	; 171
	.db #0x31	; 49	'1'
	.db #0x25	; 37
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x88	; 136
	.db #0xbb	; 187
	.db #0x09	; 9
	.db #0x64	; 100	'd'
	.db #0x23	; 35
	.db #0x22	; 34
	.db #0xd8	; 216
	.db #0xcd	; 205
	.db #0xab	; 171
	.db #0x1a	; 26
	.db #0x53	; 83	'S'
	.db #0x13	; 19
	.db #0x80	; 128
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x89	; 137
	.db #0x31	; 49	'1'
	.db #0x36	; 54	'6'
	.db #0x33	; 51	'3'
	.db #0x83	; 131
	.db #0xed	; 237
	.db #0xbc	; 188
	.db #0x9b	; 155
	.db #0x48	; 72	'H'
	.db #0x25	; 37
	.db #0x81	; 129
	.db #0x98	; 152
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x31	; 49	'1'
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0x32	; 50	'2'
	.db #0xa0	; 160
	.db #0xee	; 238
	.db #0xbb	; 187
	.db #0xab	; 171
	.db #0x62	; 98	'b'
	.db #0x24	; 36
	.db #0x80	; 128
	.db #0x9b	; 155
	.db #0x89	; 137
	.db #0x88	; 136
	.db #0x43	; 67	'C'
	.db #0x13	; 19
	.db #0x08	; 8
	.db #0x50	; 80	'P'
	.db #0x81	; 129
	.db #0xdc	; 220
	.db #0xbc	; 188
	.db #0x8b	; 139
	.db #0x62	; 98	'b'
	.db #0x23	; 35
	.db #0x98	; 152
	.db #0xab	; 171
	.db #0x89	; 137
	.db #0x21	; 33
	.db #0x33	; 51	'3'
	.db #0x12	; 18
	.db #0x10	; 16
	.db #0x73	; 115	's'
	.db #0x03	; 3
	.db #0xdd	; 221
	.db #0xcc	; 204
	.db #0x8a	; 138
	.db #0x52	; 82	'R'
	.db #0x22	; 34
	.db #0xa8	; 168
	.db #0xaa	; 170
	.db #0x89	; 137
	.db #0x32	; 50	'2'
	.db #0x24	; 36
	.db #0x81	; 129
	.db #0x88	; 136
	.db #0x60	; 96
	.db #0x01	; 1
	.db #0xeb	; 235
	.db #0xbc	; 188
	.db #0x9a	; 154
	.db #0x44	; 68	'D'
	.db #0x13	; 19
	.db #0xb8	; 184
	.db #0x9b	; 155
	.db #0x09	; 9
	.db #0x41	; 65	'A'
	.db #0x24	; 36
	.db #0x80	; 128
	.db #0x89	; 137
	.db #0x31	; 49	'1'
	.db #0x94	; 148
	.db #0xe9	; 233
	.db #0xfb	; 251
	.db #0x9a	; 154
	.db #0x42	; 66	'B'
	.db #0x13	; 19
	.db #0x98	; 152
	.db #0xab	; 171
	.db #0x0a	; 10
	.db #0x31	; 49	'1'
	.db #0x25	; 37
	.db #0x91	; 145
	.db #0x90	; 144
	.db #0x33	; 51	'3'
	.db #0x14	; 20
	.db #0xbc	; 188
	.db #0xbf	; 191
	.db #0xac	; 172
	.db #0x48	; 72	'H'
	.db #0x25	; 37
	.db #0x90	; 144
	.db #0x9b	; 155
	.db #0x89	; 137
	.db #0x38	; 56	'8'
	.db #0x34	; 52	'4'
	.db #0x90	; 144
	.db #0x19	; 25
	.db #0x43	; 67	'C'
	.db #0x82	; 130
	.db #0xda	; 218
	.db #0xdb	; 219
	.db #0xad	; 173
	.db #0x28	; 40
	.db #0x35	; 53	'5'
	.db #0x6c	; 108	'l'
	.db #0x2a	; 42
	.db #0x4e	; 78	'N'
	.db #0xa9	; 169
	.db #0xaa	; 170
	.db #0x08	; 8
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x99	; 153
	.db #0x20	; 32
	.db #0x43	; 67	'C'
	.db #0x91	; 145
	.db #0xcd	; 205
	.db #0xba	; 186
	.db #0xcb	; 203
	.db #0x31	; 49	'1'
	.db #0x37	; 55	'7'
	.db #0xa8	; 168
	.db #0xab	; 171
	.db #0x19	; 25
	.db #0x40	; 64
	.db #0x32	; 50	'2'
	.db #0x88	; 136
	.db #0x19	; 25
	.db #0x54	; 84	'T'
	.db #0x81	; 129
	.db #0xab	; 171
	.db #0xdb	; 219
	.db #0xbc	; 188
	.db #0x1a	; 26
	.db #0x46	; 70	'F'
	.db #0x81	; 129
	.db #0xab	; 171
	.db #0x0a	; 10
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x02	; 2
	.db #0x80	; 128
	.db #0x41	; 65	'A'
	.db #0x06	; 6
	.db #0xc0	; 192
	.db #0xb9	; 185
	.db #0xfb	; 251
	.db #0x9a	; 154
	.db #0x42	; 66	'B'
	.db #0x14	; 20
	.db #0xb9	; 185
	.db #0x9b	; 155
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x21	; 33
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x64	; 100	'd'
	.db #0xa0	; 160
	.db #0x8c	; 140
	.db #0xb9	; 185
	.db #0xcf	; 207
	.db #0x18	; 24
	.db #0x25	; 37
	.db #0x90	; 144
	.db #0xab	; 171
	.db #0x09	; 9
	.db #0x32	; 50	'2'
	.db #0x23	; 35
	.db #0x89	; 137
	.db #0x38	; 56	'8'
	.db #0x35	; 53	'5'
	.db #0x82	; 130
	.db #0xda	; 218
	.db #0xba	; 186
	.db #0xce	; 206
	.db #0x0a	; 10
	.db #0x63	; 99	'c'
	.db #0x81	; 129
	.db #0xb9	; 185
	.db #0x8a	; 138
	.db #0x31	; 49	'1'
	.db #0x24	; 36
	.db #0x80	; 128
	.db #0x19	; 25
	.db #0x43	; 67	'C'
	.db #0x13	; 19
	.db #0xca	; 202
	.db #0x9c	; 156
	.db #0xd9	; 217
	.db #0xad	; 173
	.db #0x38	; 56	'8'
	.db #0x15	; 21
	.db #0xa0	; 160
	.db #0xab	; 171
	.db #0x10	; 16
	.db #0x25	; 37
	.db #0x81	; 129
	.db #0x19	; 25
	.db #0x33	; 51	'3'
	.db #0x03	; 3
	.db #0xa0	; 160
	.db #0xca	; 202
	.db #0xec	; 236
	.db #0xcc	; 204
	.db #0x19	; 25
	.db #0x34	; 52	'4'
	.db #0x90	; 144
	.db #0xaa	; 170
	.db #0x08	; 8
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x34	; 52	'4'
	.db #0xb0	; 176
	.db #0xaa	; 170
	.db #0xd1	; 209
	.db #0xcf	; 207
	.db #0x8b	; 139
	.db #0x43	; 67	'C'
	.db #0x81	; 129
	.db #0xa9	; 169
	.db #0x88	; 136
	.db #0x20	; 32
	.db #0x32	; 50	'2'
	.db #0x12	; 18
	.db #0x30	; 48	'0'
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x9a	; 154
	.db #0xa8	; 168
	.db #0xde	; 222
	.db #0x9c	; 156
	.db #0x38	; 56	'8'
	.db #0x23	; 35
	.db #0xa9	; 169
	.db #0x9b	; 155
	.db #0x10	; 16
	.db #0x53	; 83	'S'
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x73	; 115	's'
	.db #0x04	; 4
	.db #0xa9	; 169
	.db #0x08	; 8
	.db #0xd9	; 217
	.db #0xbd	; 189
	.db #0x09	; 9
	.db #0x22	; 34
	.db #0x92	; 146
	.db #0xaa	; 170
	.db #0x88	; 136
	.db #0x43	; 67	'C'
	.db #0x33	; 51	'3'
	.db #0x28	; 40
	.db #0x71	; 113	'q'
	.db #0x53	; 83	'S'
	.db #0x90	; 144
	.db #0x0a	; 10
	.db #0xa9	; 169
	.db #0xcf	; 207
	.db #0x9b	; 155
	.db #0x31	; 49	'1'
	.db #0x02	; 2
	.db #0xa9	; 169
	.db #0x8b	; 139
	.db #0x33	; 51	'3'
	.db #0x15	; 21
	.db #0x82	; 130
	.db #0x02	; 2
	.db #0x27	; 39
	.db #0x04	; 4
	.db #0xb8	; 184
	.db #0x89	; 137
	.db #0xfa	; 250
	.db #0xbc	; 188
	.db #0x18	; 24
	.db #0x13	; 19
	.db #0x90	; 144
	.db #0x9a	; 154
	.db #0x29	; 41
	.db #0x53	; 83	'S'
	.db #0x11	; 17
	.db #0x20	; 32
	.db #0x43	; 67	'C'
	.db #0x16	; 22
	.db #0x91	; 145
	.db #0xa9	; 169
	.db #0xb8	; 184
	.db #0xdf	; 223
	.db #0x9a	; 154
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0xa9	; 169
	.db #0x89	; 137
	.db #0x30	; 48	'0'
	.db #0x26	; 38
	.db #0x81	; 129
	.db #0x40	; 64
	.db #0x33	; 51	'3'
	.db #0x13	; 19
	.db #0xb8	; 184
	.db #0xca	; 202
	.db #0xfa	; 250
	.db #0xbe	; 190
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x90	; 144
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x62	; 98	'b'
	.db #0x12	; 18
	.db #0x18	; 24
	.db #0x52	; 82	'R'
	.db #0x32	; 50	'2'
	.db #0x80	; 128
	.db #0x9b	; 155
	.db #0xa9	; 169
	.db #0xff	; 255
	.db #0x0b	; 11
	.db #0x10	; 16
	.db #0x81	; 129
	.db #0xa9	; 169
	.db #0x88	; 136
	.db #0x22	; 34
	.db #0x24	; 36
	.db #0x82	; 130
	.db #0x31	; 49	'1'
	.db #0x36	; 54	'6'
	.db #0x13	; 19
	.db #0x98	; 152
	.db #0xca	; 202
	.db #0xfa	; 250
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x88	; 136
	.db #0x89	; 137
	.db #0x10	; 16
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x20	; 32
	.db #0x73	; 115	's'
	.db #0x32	; 50	'2'
	.db #0x91	; 145
	.db #0x8a	; 138
	.db #0xfb	; 251
	.db #0xaf	; 175
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x99	; 153
	.db #0x09	; 9
	.db #0x42	; 66	'B'
	.db #0x03	; 3
	.db #0x11	; 17
	.db #0x34	; 52	'4'
	.db #0x33	; 51	'3'
	.db #0xce	; 206
	.db #0x3b	; 59
	.db #0x3d	; 61
	.db #0xb0	; 176
	.db #0xba	; 186
	.db #0xff	; 255
	.db #0x9b	; 155
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x88	; 136
	.db #0x9a	; 154
	.db #0x38	; 56	'8'
	.db #0x14	; 20
	.db #0x32	; 50	'2'
	.db #0x34	; 52	'4'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x90	; 144
	.db #0x9a	; 154
	.db #0xf9	; 249
	.db #0xad	; 173
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xa0	; 160
	.db #0x18	; 24
	.db #0x33	; 51	'3'
	.db #0x30	; 48	'0'
	.db #0x73	; 115	's'
	.db #0x22	; 34
	.db #0x52	; 82	'R'
	.db #0x92	; 146
	.db #0x9a	; 154
	.db #0xf0	; 240
	.db #0xeb	; 235
	.db #0x88	; 136
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x8b	; 139
	.db #0x31	; 49	'1'
	.db #0x23	; 35
	.db #0x34	; 52	'4'
	.db #0x24	; 36
	.db #0x52	; 82	'R'
	.db #0x02	; 2
	.db #0xab	; 171
	.db #0xa9	; 169
	.db #0xef	; 239
	.db #0x99	; 153
	.db #0x90	; 144
	.db #0x01	; 1
	.db #0xa2	; 162
	.db #0x99	; 153
	.db #0x10	; 16
	.db #0x52	; 82	'R'
	.db #0x23	; 35
	.db #0x42	; 66	'B'
	.db #0x33	; 51	'3'
	.db #0x04	; 4
	.db #0x90	; 144
	.db #0xd9	; 217
	.db #0xaf	; 175
	.db #0x8b	; 139
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x90	; 144
	.db #0xa8	; 168
	.db #0x11	; 17
	.db #0x14	; 20
	.db #0x63	; 99	'c'
	.db #0x33	; 51	'3'
	.db #0x62	; 98	'b'
	.db #0x21	; 33
	.db #0xa8	; 168
	.db #0x89	; 137
	.db #0xed	; 237
	.db #0xaa	; 170
	.db #0x88	; 136
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0xa9	; 169
	.db #0x09	; 9
	.db #0x32	; 50	'2'
	.db #0x62	; 98	'b'
	.db #0x53	; 83	'S'
	.db #0x23	; 35
	.db #0x44	; 68	'D'
	.db #0x90	; 144
	.db #0x99	; 153
	.db #0xfa	; 250
	.db #0xaa	; 170
	.db #0x89	; 137
	.db #0x89	; 137
	.db #0x08	; 8
	.db #0x98	; 152
	.db #0x0a	; 10
	.db #0x11	; 17
	.db #0x42	; 66	'B'
	.db #0x26	; 38
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x13	; 19
	.db #0x9a	; 154
	.db #0xd9	; 217
	.db #0xcc	; 204
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x19	; 25
	.db #0x88	; 136
	.db #0x09	; 9
	.db #0x18	; 24
	.db #0x22	; 34
	.db #0x54	; 84	'T'
	.db #0x34	; 52	'4'
	.db #0x44	; 68	'D'
	.db #0x23	; 35
	.db #0xa8	; 168
	.db #0x99	; 153
	.db #0xdc	; 220
	.db #0xbb	; 187
	.db #0xaa	; 170
	.db #0x9a	; 154
	.db #0x80	; 128
	.db #0x19	; 25
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x25	; 37
	.db #0x27	; 39
	.db #0x44	; 68	'D'
	.db #0x32	; 50	'2'
	.db #0x01	; 1
	.db #0xb2	; 178
	.db #0xea	; 234
	.db #0xcb	; 203
	.db #0xab	; 171
	.db #0x8b	; 139
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x81	; 129
	.db #0x33	; 51	'3'
	.db #0x37	; 55	'7'
	.db #0x63	; 99	'c'
	.db #0x43	; 67	'C'
	.db #0x02	; 2
	.db #0x82	; 130
	.db #0xd0	; 208
	.db #0xdb	; 219
	.db #0xbb	; 187
	.db #0xba	; 186
	.db #0x89	; 137
	.db #0x08	; 8
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x44	; 68	'D'
	.db #0x24	; 36
	.db #0x45	; 69	'E'
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x92	; 146
	.db #0xfb	; 251
	.db #0xcb	; 203
	.db #0xbb	; 187
	.db #0xab	; 171
	.db #0x89	; 137
	.db #0x10	; 16
	.db #0x40	; 64
	.db #0x31	; 49	'1'
	.db #0x12	; 18
	.db #0x23	; 35
	.db #0x37	; 55	'7'
	.db #0x53	; 83	'S'
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x98	; 152
	.db #0xae	; 174
	.db #0xbc	; 188
	.db #0xba	; 186
	.db #0xba	; 186
	.db #0x91	; 145
	.db #0x02	; 2
	.db #0x33	; 51	'3'
	.db #0x62	; 98	'b'
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x44	; 68	'D'
	.db #0x33	; 51	'3'
	.db #0x04	; 4
	.db #0x93	; 147
	.db #0xd9	; 217
	.db #0xdc	; 220
	.db #0xab	; 171
	.db #0xac	; 172
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x20	; 32
	.db #0x84	; 132
	.db #0x23	; 35
	.db #0x40	; 64
	.db #0x42	; 66	'B'
	.db #0x52	; 82	'R'
	.db #0x22	; 34
	.db #0x83	; 131
	.db #0xb2	; 178
	.db #0xdb	; 219
	.db #0xbe	; 190
	.db #0xcb	; 203
	.db #0x9a	; 154
	.db #0x09	; 9
	.db #0x18	; 24
	.db #0x31	; 49	'1'
	.db #0x23	; 35
	.db #0x41	; 65	'A'
	.db #0x31	; 49	'1'
	.db #0x17	; 23
	.db #0x53	; 83	'S'
	.db #0x20	; 32
	.db #0x92	; 146
	.db #0xb1	; 177
	.db #0xbc	; 188
	.db #0xcd	; 205
	.db #0x9c	; 156
	.db #0x8a	; 138
	.db #0x09	; 9
	.db #0x18	; 24
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x31	; 49	'1'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x50	; 80	'P'
	.db #0x08	; 8
	.db #0xb0	; 176
	.db #0xca	; 202
	.db #0xcb	; 203
	.db #0x9d	; 157
	.db #0x0b	; 11
	.db #0x99	; 153
	.db #0x02	; 2
	.db #0x11	; 17
	.db #0x32	; 50	'2'
	.db #0x42	; 66	'B'
	.db #0x31	; 49	'1'
	.db #0x54	; 84	'T'
	.db #0x51	; 81	'Q'
	.db #0x01	; 1
	.db #0x93	; 147
	.db #0xa1	; 161
	.db #0xdb	; 219
	.db #0xdb	; 219
	.db #0xac	; 172
	.db #0x8b	; 139
	.db #0x41	; 65	'A'
	.db #0xca	; 202
	.db #0x42	; 66	'B'
	.db #0x18	; 24
	.db #0x28	; 40
	.db #0x21	; 33
	.db #0x33	; 51	'3'
	.db #0x32	; 50	'2'
	.db #0x43	; 67	'C'
	.db #0x73	; 115	's'
	.db #0x32	; 50	'2'
	.db #0x13	; 19
	.db #0x12	; 18
	.db #0xaa	; 170
	.db #0xbe	; 190
	.db #0xbe	; 190
	.db #0xcb	; 203
	.db #0xaa	; 170
	.db #0x88	; 136
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x38	; 56	'8'
	.db #0x01	; 1
	.db #0x83	; 131
	.db #0x24	; 36
	.db #0x62	; 98	'b'
	.db #0x31	; 49	'1'
	.db #0x12	; 18
	.db #0x80	; 128
	.db #0xaa	; 170
	.db #0xbf	; 191
	.db #0xad	; 173
	.db #0xbb	; 187
	.db #0x98	; 152
	.db #0x08	; 8
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x43	; 67	'C'
	.db #0x20	; 32
	.db #0x94	; 148
	.db #0x15	; 21
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x05	; 5
	.db #0x2a	; 42
	.db #0xf0	; 240
	.db #0xaa	; 170
	.db #0xad	; 173
	.db #0xab	; 171
	.db #0x8a	; 138
	.db #0xa8	; 168
	.db #0x03	; 3
	.db #0x13	; 19
	.db #0x15	; 21
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x15	; 21
	.db #0x73	; 115	's'
	.db #0x18	; 24
	.db #0x94	; 148
	.db #0x08	; 8
	.db #0xd9	; 217
	.db #0xc9	; 201
	.db #0xc9	; 201
	.db #0xaa	; 170
	.db #0x99	; 153
	.db #0x18	; 24
	.db #0x82	; 130
	.db #0x16	; 22
	.db #0x10	; 16
	.db #0x83	; 131
	.db #0x48	; 72	'H'
	.db #0x82	; 130
	.db #0x27	; 39
	.db #0x32	; 50	'2'
	.db #0xb3	; 179
	.db #0x02	; 2
	.db #0xcf	; 207
	.db #0xc9	; 201
	.db #0xab	; 171
	.db #0xa9	; 169
	.db #0x10	; 16
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x23	; 35
	.db #0x88	; 136
	.db #0xb4	; 180
	.db #0x4a	; 74	'J'
	.db #0x80	; 128
	.db #0x46	; 70	'F'
	.db #0x50	; 80	'P'
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0xbc	; 188
	.db #0xdb	; 219
	.db #0xac	; 172
	.db #0xa8	; 168
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x81	; 129
	.db #0x88	; 136
	.db #0x8a	; 138
	.db #0x29	; 41
	.db #0x72	; 114	'r'
	.db #0x34	; 52	'4'
	.db #0x85	; 133
	.db #0x03	; 3
	.db #0x9c	; 156
	.db #0xdb	; 219
	.db #0xbb	; 187
	.db #0xbb	; 187
	.db #0x88	; 136
	.db #0x30	; 48	'0'
	.db #0x34	; 52	'4'
	.db #0x33	; 51	'3'
	.db #0x31	; 49	'1'
	.db #0xb1	; 177
	.db #0x90	; 144
	.db #0x9b	; 155
	.db #0x59	; 89	'Y'
	.db #0x73	; 115	's'
	.db #0x73	; 115	's'
	.db #0x01	; 1
	.db #0xb3	; 179
	.db #0x09	; 9
	.db #0xaf	; 175
	.db #0xda	; 218
	.db #0x89	; 137
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x32	; 50	'2'
	.db #0x21	; 33
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x98	; 152
	.db #0x32	; 50	'2'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x02	; 2
	.db #0xa3	; 163
	.db #0xb9	; 185
	.db #0xaf	; 175
	.db #0xad	; 173
	.db #0xaa	; 170
	.db #0x99	; 153
	.db #0x11	; 17
	.db #0x41	; 65	'A'
	.db #0x23	; 35
	.db #0x33	; 51	'3'
	.db #0x38	; 56	'8'
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0xb0	; 176
	.db #0x34	; 52	'4'
	.db #0x71	; 113	'q'
	.db #0x26	; 38
	.db #0x30	; 48	'0'
	.db #0x09	; 9
	.db #0xeb	; 235
	.db #0xca	; 202
	.db #0x9c	; 156
	.db #0x9c	; 156
	.db #0x88	; 136
	.db #0x11	; 17
	.db #0x32	; 50	'2'
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x28	; 40
	.db #0xb0	; 176
	.db #0x98	; 152
	.db #0x1b	; 27
	.db #0x20	; 32
	.db #0x36	; 54	'6'
	.db #0x35	; 53	'5'
	.db #0x21	; 33
	.db #0xb2	; 178
	.db #0xca	; 202
	.db #0xde	; 222
	.db #0xba	; 186
	.db #0xbb	; 187
	.db #0x89	; 137
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x15	; 21
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0xb1	; 177
	.db #0xa8	; 168
	.db #0x0a	; 10
	.db #0x30	; 48	'0'
	.db #0x72	; 114	'r'
	.db #0x34	; 52	'4'
	.db #0x85	; 133
	.db #0x94	; 148
	.db #0x80	; 128
	.db #0xca	; 202
	.db #0xac	; 172
	.db #0x9e	; 158
	.db #0xaa	; 170
	.db #0x98	; 152
	.db #0x11	; 17
	.db #0x41	; 65	'A'
	.db #0x23	; 35
	.db #0x14	; 20
	.db #0x11	; 17
	.db #0x8a	; 138
	.db #0xd8	; 216
	.db #0x80	; 128
	.db #0x29	; 41
	.db #0x41	; 65	'A'
	.db #0x34	; 52	'4'
	.db #0x52	; 82	'R'
	.db #0x10	; 16
	.db #0xa1	; 161
	.db #0xb9	; 185
	.db #0xbf	; 191
	.db #0xeb	; 235
	.db #0xaa	; 170
	.db #0x89	; 137
	.db #0x29	; 41
	.db #0x30	; 48	'0'
	.db #0x44	; 68	'D'
	.db #0x21	; 33
	.db #0x02	; 2
	.db #0x90	; 144
	.db #0xc0	; 192
	.db #0x88	; 136
	.db #0x4b	; 75	'K'
	.db #0x28	; 40
	.db #0x24	; 36
	.db #0x35	; 53	'5'
	.db #0x41	; 65	'A'
	.db #0x80	; 128
	.db #0xb1	; 177
	.db #0xca	; 202
	.db #0x9f	; 159
	.db #0x9e	; 158
	.db #0x99	; 153
	.db #0x89	; 137
	.db #0x28	; 40
	.db #0x21	; 33
	.db #0x14	; 20
	.db #0x23	; 35
	.db #0x10	; 16
	.db #0xb1	; 177
	.db #0xa0	; 160
	.db #0x0d	; 13
	.db #0x0a	; 10
	.db #0x12	; 18
	.db #0x26	; 38
	.db #0x25	; 37
	.db #0x22	; 34
	.db #0x0f	; 15
	.db #0x2b	; 43
	.db #0x3c	; 60
	.db #0x81	; 129
	.db #0x9b	; 155
	.db #0xbe	; 190
	.db #0xcc	; 204
	.db #0xab	; 171
	.db #0x9c	; 156
	.db #0x98	; 152
	.db #0x02	; 2
	.db #0x24	; 36
	.db #0x43	; 67	'C'
	.db #0x22	; 34
	.db #0x12	; 18
	.db #0x88	; 136
	.db #0xca	; 202
	.db #0xb0	; 176
	.db #0x89	; 137
	.db #0x28	; 40
	.db #0x26	; 38
	.db #0x45	; 69	'E'
	.db #0x51	; 81	'Q'
	.db #0x28	; 40
	.db #0x98	; 152
	.db #0xe1	; 225
	.db #0xb9	; 185
	.db #0xdb	; 219
	.db #0xba	; 186
	.db #0x99	; 153
	.db #0x2a	; 42
	.db #0x38	; 56	'8'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x31	; 49	'1'
	.db #0x10	; 16
	.db #0x98	; 152
	.db #0x88	; 136
	.db #0x0c	; 12
	.db #0x8a	; 138
	.db #0xa1	; 161
	.db #0x05	; 5
	.db #0x44	; 68	'D'
	.db #0x60	; 96
	.db #0x10	; 16
	.db #0x80	; 128
	.db #0xa0	; 160
	.db #0xdb	; 219
	.db #0xbc	; 188
	.db #0x9d	; 157
	.db #0x9b	; 155
	.db #0x88	; 136
	.db #0x20	; 32
	.db #0x43	; 67	'C'
	.db #0x24	; 36
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x90	; 144
	.db #0x99	; 153
	.db #0xaa	; 170
	.db #0xa9	; 169
	.db #0x18	; 24
	.db #0x61	; 97	'a'
	.db #0x53	; 83	'S'
	.db #0x24	; 36
	.db #0x13	; 19
	.db #0x10	; 16
	.db #0xab	; 171
	.db #0xf9	; 249
	.db #0xdc	; 220
	.db #0x9b	; 155
	.db #0x9c	; 156
	.db #0x88	; 136
	.db #0x20	; 32
	.db #0x51	; 81	'Q'
	.db #0x22	; 34
	.db #0x13	; 19
	.db #0x82	; 130
	.db #0x88	; 136
	.db #0x9b	; 155
	.db #0xbb	; 187
	.db #0x99	; 153
	.db #0x39	; 57	'9'
	.db #0x70	; 112	'p'
	.db #0x53	; 83	'S'
	.db #0x33	; 51	'3'
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x09	; 9
	.db #0xdb	; 219
	.db #0xfb	; 251
	.db #0xca	; 202
	.db #0x9c	; 156
	.db #0x9a	; 154
	.db #0x09	; 9
	.db #0x30	; 48	'0'
	.db #0x52	; 82	'R'
	.db #0x33	; 51	'3'
	.db #0x23	; 35
	.db #0x81	; 129
	.db #0xc0	; 192
	.db #0xc8	; 200
	.db #0x99	; 153
	.db #0x0a	; 10
	.db #0x29	; 41
	.db #0x33	; 51	'3'
	.db #0x27	; 39
	.db #0x43	; 67	'C'
	.db #0x22	; 34
	.db #0x11	; 17
	.db #0x80	; 128
	.db #0xba	; 186
	.db #0xde	; 222
	.db #0xeb	; 235
	.db #0xca	; 202
	.db #0xa9	; 169
	.db #0x09	; 9
	.db #0x10	; 16
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x22	; 34
	.db #0x02	; 2
	.db #0xa1	; 161
	.db #0xb9	; 185
	.db #0x8c	; 140
	.db #0x8c	; 140
	.db #0x80	; 128
	.db #0x32	; 50	'2'
	.db #0x44	; 68	'D'
	.db #0x33	; 51	'3'
	.db #0x15	; 21
	.db #0x22	; 34
	.db #0x1a	; 26
	.db #0xaa	; 170
	.db #0xfa	; 250
	.db #0xcc	; 204
	.db #0xac	; 172
	.db #0x9c	; 156
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x32	; 50	'2'
	.db #0x44	; 68	'D'
	.db #0x23	; 35
	.db #0x12	; 18
	.db #0x80	; 128
	.db #0xa8	; 168
	.db #0xd9	; 217
	.db #0xb8	; 184
	.db #0x18	; 24
	.db #0x58	; 88	'X'
	.db #0x31	; 49	'1'
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x22	; 34
	.db #0x80	; 128
	.db #0xc2	; 194
	.db #0xb0	; 176
	.db #0xbe	; 190
	.db #0xbf	; 191
	.db #0xdb	; 219
	.db #0xa9	; 169
	.db #0x88	; 136
	.db #0x11	; 17
	.db #0x52	; 82	'R'
	.db #0x33	; 51	'3'
	.db #0x42	; 66	'B'
	.db #0x10	; 16
	.db #0x98	; 152
	.db #0xa8	; 168
	.db #0x9b	; 155
	.db #0x8b	; 139
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x61	; 97	'a'
	.db #0x21	; 33
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0xa9	; 169
	.db #0xf8	; 248
	.db #0xad	; 173
	.db #0xae	; 174
	.db #0xca	; 202
	.db #0xa8	; 168
	.db #0x18	; 24
	.db #0x30	; 48	'0'
	.db #0x43	; 67	'C'
	.db #0x25	; 37
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0xa8	; 168
	.db #0xb8	; 184
	.db #0xaa	; 170
	.db #0x9a	; 154
	.db #0x02	; 2
	.db #0x45	; 69	'E'
	.db #0x51	; 81	'Q'
	.db #0x21	; 33
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0xb1	; 177
	.db #0xd2	; 210
	.db #0xd8	; 216
	.db #0xad	; 173
	.db #0x9f	; 159
	.db #0xaa	; 170
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x34	; 52	'4'
	.db #0x15	; 21
	.db #0x13	; 19
	.db #0x00	; 0
	.db #0xa8	; 168
	.db #0xb9	; 185
	.db #0xaa	; 170
	.db #0x8b	; 139
	.db #0x11	; 17
	.db #0x26	; 38
	.db #0x53	; 83	'S'
	.db #0x32	; 50	'2'
	.db #0x12	; 18
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0xb8	; 184
	.db #0xfb	; 251
	.db #0xcf	; 207
	.db #0x9c	; 156
	.db #0xab	; 171
	.db #0x99	; 153
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x42	; 66	'B'
	.db #0x13	; 19
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0xba	; 186
	.db #0xb8	; 184
	.db #0x88	; 136
	.db #0x28	; 40
	.db #0x24	; 36
	.db #0x16	; 22
	.db #0x32	; 50	'2'
	.db #0x22	; 34
	.db #0x03	; 3
	.db #0x12	; 18
	.db #0x2a	; 42
	.db #0xbf	; 191
	.db #0xcf	; 207
	.db #0xac	; 172
	.db #0xbb	; 187
	.db #0xa9	; 169
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0xb8	; 184
	.db #0xe1	; 225
	.db #0x3d	; 61
	.db #0x25	; 37
	.db #0x23	; 35
	.db #0x01	; 1
	.db #0x90	; 144
	.db #0xa9	; 169
	.db #0xab	; 171
	.db #0xbb	; 187
	.db #0x09	; 9
	.db #0x43	; 67	'C'
	.db #0x54	; 84	'T'
	.db #0x33	; 51	'3'
	.db #0x25	; 37
	.db #0x22	; 34
	.db #0x11	; 17
	.db #0x90	; 144
	.db #0xa8	; 168
	.db #0xef	; 239
	.db #0xcc	; 204
	.db #0xba	; 186
	.db #0x9a	; 154
	.db #0x0a	; 10
	.db #0x21	; 33
	.db #0x44	; 68	'D'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x21	; 33
	.db #0x89	; 137
	.db #0xba	; 186
	.db #0xdb	; 219
	.db #0xa9	; 169
	.db #0x08	; 8
	.db #0x31	; 49	'1'
	.db #0x35	; 53	'5'
	.db #0x34	; 52	'4'
	.db #0x62	; 98	'b'
	.db #0x10	; 16
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0xdb	; 219
	.db #0xcf	; 207
	.db #0xcb	; 203
	.db #0xba	; 186
	.db #0x99	; 153
	.db #0x28	; 40
	.db #0x41	; 65	'A'
	.db #0x53	; 83	'S'
	.db #0x32	; 50	'2'
	.db #0x12	; 18
	.db #0x82	; 130
	.db #0x88	; 136
	.db #0x9b	; 155
	.db #0xdb	; 219
	.db #0xa8	; 168
	.db #0x28	; 40
	.db #0x42	; 66	'B'
	.db #0x34	; 52	'4'
	.db #0x43	; 67	'C'
	.db #0x22	; 34
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0xff	; 255
	.db #0xcd	; 205
	.db #0xc9	; 201
	.db #0x99	; 153
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0x33	; 51	'3'
	.db #0x25	; 37
	.db #0x23	; 35
	.db #0x13	; 19
	.db #0x91	; 145
	.db #0xb8	; 184
	.db #0x8c	; 140
	.db #0x8d	; 141
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x32	; 50	'2'
	.db #0x43	; 67	'C'
	.db #0x33	; 51	'3'
	.db #0x32	; 50	'2'
	.db #0x21	; 33
	.db #0x02	; 2
	.db #0xc4	; 196
	.db #0xdb	; 219
	.db #0xdf	; 223
	.db #0xbb	; 187
	.db #0xba	; 186
	.db #0x9a	; 154
	.db #0x19	; 25
	.db #0x43	; 67	'C'
	.db #0x35	; 53	'5'
	.db #0x42	; 66	'B'
	.db #0x23	; 35
	.db #0x01	; 1
	.db #0x90	; 144
	.db #0xba	; 186
	.db #0xac	; 172
	.db #0x9b	; 155
	.db #0x88	; 136
	.db #0x42	; 66	'B'
	.db #0x53	; 83	'S'
	.db #0x14	; 20
	.db #0x13	; 19
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x20	; 32
	.db #0xd9	; 217
	.db #0xfd	; 253
	.db #0xcb	; 203
	.db #0xbb	; 187
	.db #0xba	; 186
	.db #0x99	; 153
	.db #0x31	; 49	'1'
	.db #0x54	; 84	'T'
	.db #0x42	; 66	'B'
	.db #0x32	; 50	'2'
	.db #0x12	; 18
	.db #0x81	; 129
	.db #0xb0	; 176
	.db #0xc9	; 201
	.db #0xaa	; 170
	.db #0x9b	; 155
	.db #0x0a	; 10
	.db #0x42	; 66	'B'
	.db #0x44	; 68	'D'
	.db #0x43	; 67	'C'
	.db #0x21	; 33
	.db #0x13	; 19
	.db #0x33	; 51	'3'
	.db #0x90	; 144
	.db #0xfc	; 252
	.db #0xec	; 236
	.db #0xba	; 186
	.db #0x9b	; 155
	.db #0x8b	; 139
	.db #0x09	; 9
	.db #0x23	; 35
	.db #0x26	; 38
	.db #0x24	; 36
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x10	; 16
	.db #0x8a	; 138
	.db #0xda	; 218
	.db #0xaa	; 170
	.db #0x99	; 153
	.db #0x08	; 8
	.db #0x42	; 66	'B'
	.db #0x53	; 83	'S'
	.db #0x32	; 50	'2'
	.db #0x43	; 67	'C'
	.db #0x41	; 65	'A'
	.db #0x80	; 128
	.db #0xd3	; 211
	.db #0xe8	; 232
	.db #0xad	; 173
	.db #0xac	; 172
	.db #0x9a	; 154
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x35	; 53	'5'
	.db #0x43	; 67	'C'
	.db #0x21	; 33
	.db #0x11	; 17
	.db #0xa1	; 161
	.db #0xc0	; 192
	.db #0xa9	; 169
	.db #0xab	; 171
	.db #0x0c	; 12
	.db #0x29	; 41
	.db #0x51	; 81	'Q'
	.db #0x33	; 51	'3'
	.db #0x15	; 21
	.db #0x23	; 35
	.db #0x52	; 82	'R'
	.db #0x10	; 16
	.db #0xb8	; 184
	.db #0xfd	; 253
	.db #0xcb	; 203
	.db #0xaa	; 170
	.db #0x9a	; 154
	.db #0x89	; 137
	.db #0x28	; 40
	.db #0x33	; 51	'3'
	.db #0x26	; 38
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0xaa	; 170
	.db #0xbc	; 188
	.db #0xda	; 218
	.db #0x99	; 153
	.db #0x11	; 17
	.db #0x52	; 82	'R'
	.db #0x42	; 66	'B'
	.db #0x23	; 35
	.db #0x33	; 51	'3'
	.db #0x32	; 50	'2'
	.db #0x84	; 132
	.db #0xfa	; 250
	.db #0xbd	; 189
	.db #0xbd	; 189
	.db #0xab	; 171
	.db #0xaa	; 170
	.db #0x89	; 137
	.db #0x21	; 33
	.db #0x44	; 68	'D'
	.db #0x43	; 67	'C'
	.db #0x32	; 50	'2'
	.db #0x13	; 19
	.db #0x02	; 2
	.db #0xa1	; 161
	.db #0x99	; 153
	.db #0x9e	; 158
	.db #0x9a	; 154
	.db #0x88	; 136
	.db #0x12	; 18
	.db #0x34	; 52	'4'
	.db #0x63	; 99	'c'
	.db #0x32	; 50	'2'
	.db #0x34	; 52	'4'
	.db #0x12	; 18
	.db #0xda	; 218
	.db #0xdd	; 221
	.db #0xda	; 218
	.db #0xb9	; 185
	.db #0xa9	; 169
	.db #0x89	; 137
	.db #0x28	; 40
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x12	; 18
	.db #0x80	; 128
	.db #0xab	; 171
	.db #0xba	; 186
	.db #0xca	; 202
	.db #0xa9	; 169
	.db #0x32	; 50	'2'
	.db #0x35	; 53	'5'
	.db #0x52	; 82	'R'
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0x02	; 2
	.db #0xe1	; 225
	.db #0xac	; 172
	.db #0xb7	; 183
	.db #0x04	; 4
	.db #0x39	; 57	'9'
	.db #0xdc	; 220
	.db #0xab	; 171
	.db #0x8b	; 139
	.db #0x19	; 25
	.db #0x20	; 32
	.db #0x34	; 52	'4'
	.db #0x25	; 37
	.db #0x14	; 20
	.db #0x21	; 33
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0xb9	; 185
	.db #0xc9	; 201
	.db #0xa8	; 168
	.db #0x10	; 16
	.db #0x41	; 65	'A'
	.db #0x53	; 83	'S'
	.db #0x43	; 67	'C'
	.db #0x22	; 34
	.db #0x12	; 18
	.db #0xc1	; 193
	.db #0xdd	; 221
	.db #0xcc	; 204
	.db #0xca	; 202
	.db #0xaa	; 170
	.db #0x89	; 137
	.db #0x10	; 16
	.db #0x22	; 34
	.db #0x35	; 53	'5'
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x80	; 128
	.db #0xa8	; 168
	.db #0xba	; 186
	.db #0x9c	; 156
	.db #0x88	; 136
	.db #0x02	; 2
	.db #0x53	; 83	'S'
	.db #0x44	; 68	'D'
	.db #0x43	; 67	'C'
	.db #0x32	; 50	'2'
	.db #0x81	; 129
	.db #0xfb	; 251
	.db #0xcc	; 204
	.db #0xbc	; 188
	.db #0xcb	; 203
	.db #0xaa	; 170
	.db #0x80	; 128
	.db #0x22	; 34
	.db #0x53	; 83	'S'
	.db #0x43	; 67	'C'
	.db #0x22	; 34
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x98	; 152
	.db #0xaa	; 170
	.db #0x8b	; 139
	.db #0x18	; 24
	.db #0x33	; 51	'3'
	.db #0x73	; 115	's'
	.db #0x54	; 84	'T'
	.db #0x23	; 35
	.db #0x08	; 8
	.db #0xa8	; 168
	.db #0xfc	; 252
	.db #0xcc	; 204
	.db #0xbb	; 187
	.db #0xab	; 171
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x43	; 67	'C'
	.db #0x25	; 37
	.db #0x23	; 35
	.db #0x22	; 34
	.db #0x11	; 17
	.db #0x08	; 8
	.db #0x99	; 153
	.db #0xb9	; 185
	.db #0x9b	; 155
	.db #0x28	; 40
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x54	; 84	'T'
	.db #0x22	; 34
	.db #0x02	; 2
	.db #0xb8	; 184
	.db #0xdf	; 223
	.db #0xcb	; 203
	.db #0xbb	; 187
	.db #0xbb	; 187
	.db #0x09	; 9
	.db #0x21	; 33
	.db #0x43	; 67	'C'
	.db #0x35	; 53	'5'
	.db #0x23	; 35
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x80	; 128
	.db #0x89	; 137
	.db #0xa9	; 169
	.db #0x99	; 153
	.db #0x20	; 32
	.db #0x62	; 98	'b'
	.db #0x53	; 83	'S'
	.db #0x43	; 67	'C'
	.db #0x23	; 35
	.db #0x12	; 18
	.db #0xc0	; 192
	.db #0xcf	; 207
	.db #0xcc	; 204
	.db #0xab	; 171
	.db #0xab	; 171
	.db #0x89	; 137
	.db #0x10	; 16
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x33	; 51	'3'
	.db #0x24	; 36
	.db #0x11	; 17
	.db #0x81	; 129
	.db #0x98	; 152
	.db #0x99	; 153
	.db #0x89	; 137
	.db #0x19	; 25
	.db #0x44	; 68	'D'
	.db #0x25	; 37
	.db #0x21	; 33
	.db #0x15	; 21
	.db #0x91	; 145
	.db #0xbc	; 188
	.db #0xdd	; 221
	.db #0xcb	; 203
	.db #0xab	; 171
	.db #0xaa	; 170
	.db #0x89	; 137
	.db #0x21	; 33
	.db #0x33	; 51	'3'
	.db #0x35	; 53	'5'
	.db #0x25	; 37
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x81	; 129
	.db #0x88	; 136
	.db #0x99	; 153
	.db #0x89	; 137
	.db #0x42	; 66	'B'
	.db #0x54	; 84	'T'
	.db #0x43	; 67	'C'
	.db #0x11	; 17
	.db #0x90	; 144
	.db #0xb0	; 176
	.db #0xcf	; 207
	.db #0xcc	; 204
	.db #0xab	; 171
	.db #0x9b	; 155
	.db #0x9a	; 154
	.db #0x88	; 136
	.db #0x42	; 66	'B'
	.db #0x44	; 68	'D'
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa8	; 168
	.db #0x9a	; 154
	.db #0x18	; 24
	.db #0x72	; 114	'r'
	.db #0x22	; 34
	.db #0x03	; 3
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0xf8	; 248
	.db #0xbe	; 190
	.db #0xdb	; 219
	.db #0xab	; 171
	.db #0xab	; 171
	.db #0x98	; 152
	.db #0x28	; 40
	.db #0x53	; 83	'S'
	.db #0x34	; 52	'4'
	.db #0x24	; 36
	.db #0x23	; 35
	.db #0x11	; 17
	.db #0x80	; 128
	.db #0xa8	; 168
	.db #0xaa	; 170
	.db #0x9a	; 154
	.db #0x08	; 8
	.db #0x21	; 33
	.db #0x26	; 38
	.db #0x21	; 33
	.db #0x42	; 66	'B'
	.db #0x93	; 147
	.db #0xeb	; 235
	.db #0xcd	; 205
	.db #0xdb	; 219
	.db #0xab	; 171
	.db #0x9a	; 154
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x43	; 67	'C'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x32	; 50	'2'
	.db #0x12	; 18
	.db #0x98	; 152
	.db #0xca	; 202
	.db #0xac	; 172
	.db #0xaa	; 170
	.db #0x88	; 136
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0xdb	; 219
	.db #0xad	; 173
	.db #0xeb	; 235
	.db #0xcb	; 203
	.db #0x9a	; 154
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0x31	; 49	'1'
	.db #0x23	; 35
	.db #0x82	; 130
	.db #0xaa	; 170
	.db #0xba	; 186
	.db #0xbf	; 191
	.db #0x99	; 153
	.db #0x98	; 152
	.db #0x89	; 137
	.db #0x09	; 9
	.db #0xb1	; 177
	.db #0xe9	; 233
	.db #0xcb	; 203
	.db #0xca	; 202
	.db #0x98	; 152
	.db #0x89	; 137
	.db #0x11	; 17
	.db #0x64	; 100	'd'
	.db #0x44	; 68	'D'
	.db #0x22	; 34
	.db #0x13	; 19
	.db #0x12	; 18
	.db #0x91	; 145
	.db #0xdc	; 220
	.db #0x03	; 3
	.db #0x20	; 32
	.db #0xca	; 202
	.db #0xca	; 202
	.db #0xad	; 173
	.db #0xaa	; 170
	.db #0xbb	; 187
	.db #0x0a	; 10
	.db #0x10	; 16
	.db #0x32	; 50	'2'
	.db #0x46	; 70	'F'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x14	; 20
	.db #0xaa	; 170
	.db #0xbc	; 188
	.db #0xcb	; 203
	.db #0xaf	; 175
	.db #0x5a	; 90	'Z'
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x98	; 152
	.db #0xa1	; 161
	.db #0x88	; 136
	.db #0xb8	; 184
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x92	; 146
	.db #0x80	; 128
	.db #0x02	; 2
	.db #0x62	; 98	'b'
	.db #0x82	; 130
	.db #0x01	; 1
	.db #0xbd	; 189
	.db #0xa5	; 165
	.db #0x8a	; 138
	.db #0x98	; 152
	.db #0x80	; 128
	.db #0xa1	; 161
	.db #0x08	; 8
	.db #0x0b	; 11
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x88	; 136
	.db #0x80	; 128
	.db #0x98	; 152
	.db #0xb0	; 176
	.db #0x92	; 146
	.db #0x62	; 98	'b'
	.db #0x80	; 128
	.db #0x34	; 52	'4'
	.db #0x94	; 148
	.db #0x12	; 18
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x32	; 50	'2'
	.db #0x22	; 34
	.db #0x8c	; 140
	.db #0xc9	; 201
	.db #0xae	; 174
	.db #0xbc	; 188
	.db #0xdb	; 219
	.db #0x9b	; 155
	.db #0x20	; 32
	.db #0x59	; 89	'Y'
	.db #0x92	; 146
	.db #0x31	; 49	'1'
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0xb3	; 179
	.db #0x9a	; 154
	.db #0x1c	; 28
	.db #0x86	; 134
	.db #0x32	; 50	'2'
	.db #0x3b	; 59
	.db #0x17	; 23
	.db #0x43	; 67	'C'
	.db #0x11	; 17
	.db #0xb0	; 176
	.db #0xd1	; 209
	.db #0xdb	; 219
	.db #0xca	; 202
	.db #0x9d	; 157
	.db #0x8a	; 138
	.db #0x80	; 128
	.db #0x11	; 17
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x31	; 49	'1'
	.db #0x03	; 3
	.db #0x92	; 146
	.db #0x98	; 152
	.db #0xad	; 173
	.db #0xbc	; 188
	.db #0x99	; 153
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x60	; 96
	.db #0x32	; 50	'2'
	.db #0x25	; 37
	.db #0x22	; 34
	.db #0xa1	; 161
	.db #0xc9	; 201
	.db #0xad	; 173
	.db #0xbc	; 188
	.db #0xba	; 186
	.db #0x99	; 153
	.db #0x92	; 146
	.db #0x33	; 51	'3'
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x23	; 35
	.db #0x92	; 146
	.db #0xb9	; 185
	.db #0x9e	; 158
	.db #0xbb	; 187
	.db #0xda	; 218
	.db #0x90	; 144
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x43	; 67	'C'
	.db #0x23	; 35
	.db #0x16	; 22
	.db #0x22	; 34
	.db #0x9a	; 154
	.db #0xaa	; 170
	.db #0xae	; 174
	.db #0xb9	; 185
	.db #0xab	; 171
	.db #0x0a	; 10
	.db #0x90	; 144
	.db #0x06	; 6
	.db #0x19	; 25
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0xba	; 186
	.db #0x98	; 152
	.db #0xa0	; 160
	.db #0x30	; 48	'0'
	.db #0xe3	; 227
	.db #0x25	; 37
	.db #0x62	; 98	'b'
	.db #0x23	; 35
	.db #0x81	; 129
	.db #0x80	; 128
	.db #0x9a	; 154
	.db #0xac	; 172
	.db #0xba	; 186
	.db #0xac	; 172
	.db #0x9a	; 154
	.db #0xa9	; 169
	.db #0x00	; 0
	.db #0x19	; 25
	.db #0xb9	; 185
	.db #0x30	; 48	'0'
	.db #0x04	; 4
	.db #0x31	; 49	'1'
	.db #0x73	; 115	's'
	.db #0x82	; 130
	.db #0x81	; 129
	.db #0x01	; 1
	.db #0xa2	; 162
	.db #0x11	; 17
	.db #0xb2	; 178
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
