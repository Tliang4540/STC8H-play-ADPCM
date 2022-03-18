                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UART1_Interrupt
                                     12 	.globl _P
                                     13 	.globl _F1
                                     14 	.globl _OV
                                     15 	.globl _RS0
                                     16 	.globl _RS1
                                     17 	.globl _F0
                                     18 	.globl _AC
                                     19 	.globl _CY
                                     20 	.globl _P54
                                     21 	.globl _P53
                                     22 	.globl _P52
                                     23 	.globl _P51
                                     24 	.globl _P50
                                     25 	.globl _P47
                                     26 	.globl _P46
                                     27 	.globl _P45
                                     28 	.globl _P44
                                     29 	.globl _P43
                                     30 	.globl _P42
                                     31 	.globl _P41
                                     32 	.globl _P40
                                     33 	.globl _PX0
                                     34 	.globl _PT0
                                     35 	.globl _PX1
                                     36 	.globl _PT1
                                     37 	.globl _PS
                                     38 	.globl _PADC
                                     39 	.globl _PLVD
                                     40 	.globl _PPCA
                                     41 	.globl _P37
                                     42 	.globl _P36
                                     43 	.globl _P35
                                     44 	.globl _P34
                                     45 	.globl _P33
                                     46 	.globl _P32
                                     47 	.globl _P31
                                     48 	.globl _P30
                                     49 	.globl _EX0
                                     50 	.globl _ET0
                                     51 	.globl _EX1
                                     52 	.globl _ET1
                                     53 	.globl _ES
                                     54 	.globl _EADC
                                     55 	.globl _ELVD
                                     56 	.globl _EA
                                     57 	.globl _P27
                                     58 	.globl _P26
                                     59 	.globl _P25
                                     60 	.globl _P24
                                     61 	.globl _P23
                                     62 	.globl _P22
                                     63 	.globl _P21
                                     64 	.globl _P20
                                     65 	.globl _RI
                                     66 	.globl _TI
                                     67 	.globl _RB8
                                     68 	.globl _TB8
                                     69 	.globl _REN
                                     70 	.globl _SM2
                                     71 	.globl _SM1
                                     72 	.globl _SM0
                                     73 	.globl _P17
                                     74 	.globl _P16
                                     75 	.globl _P15
                                     76 	.globl _P14
                                     77 	.globl _P13
                                     78 	.globl _P12
                                     79 	.globl _P11
                                     80 	.globl _P10
                                     81 	.globl _IT0
                                     82 	.globl _IE0
                                     83 	.globl _IT1
                                     84 	.globl _IE1
                                     85 	.globl _TR0
                                     86 	.globl _TF0
                                     87 	.globl _TR1
                                     88 	.globl _TF1
                                     89 	.globl _P07
                                     90 	.globl _P06
                                     91 	.globl _P05
                                     92 	.globl _P04
                                     93 	.globl _P03
                                     94 	.globl _P02
                                     95 	.globl _P01
                                     96 	.globl _P00
                                     97 	.globl _RSTCFG
                                     98 	.globl _USBADR
                                     99 	.globl _P7
                                    100 	.globl _IAP_TPS
                                    101 	.globl _USBCON
                                    102 	.globl _B
                                    103 	.globl _AUXINTIF
                                    104 	.globl _IP3H
                                    105 	.globl _USBDAT
                                    106 	.globl _P6
                                    107 	.globl _CMPCR2
                                    108 	.globl _CMPCR1
                                    109 	.globl _DPH1
                                    110 	.globl _DPL1
                                    111 	.globl _DPS
                                    112 	.globl _P7M0
                                    113 	.globl _P7M1
                                    114 	.globl _ACC
                                    115 	.globl _IP3
                                    116 	.globl _ADCCFG
                                    117 	.globl _USBCLK
                                    118 	.globl _T2L
                                    119 	.globl _T2H
                                    120 	.globl _T3L
                                    121 	.globl _T3H
                                    122 	.globl _T4L
                                    123 	.globl _T4H
                                    124 	.globl _T4T3M
                                    125 	.globl _PSW
                                    126 	.globl _SPDAT
                                    127 	.globl _SPCTL
                                    128 	.globl _SPSTAT
                                    129 	.globl _P6M0
                                    130 	.globl _P6M1
                                    131 	.globl _P5M0
                                    132 	.globl _P5M1
                                    133 	.globl _P5
                                    134 	.globl _IAP_CONTR
                                    135 	.globl _IAP_TRIG
                                    136 	.globl _IAP_CMD
                                    137 	.globl _IAP_ADDRL
                                    138 	.globl _IAP_ADDRH
                                    139 	.globl _IAP_DATA
                                    140 	.globl _WDT_CONTR
                                    141 	.globl _P4
                                    142 	.globl _ADC_RESL
                                    143 	.globl _ADC_RES
                                    144 	.globl _ADC_CONTR
                                    145 	.globl _P_SW2
                                    146 	.globl _SADEN
                                    147 	.globl _IP
                                    148 	.globl _IPH
                                    149 	.globl _IP2H
                                    150 	.globl _IP2
                                    151 	.globl _P4M0
                                    152 	.globl _P4M1
                                    153 	.globl _P3M0
                                    154 	.globl _P3M1
                                    155 	.globl _P3
                                    156 	.globl _IE2
                                    157 	.globl _TA
                                    158 	.globl _S3BUF
                                    159 	.globl _S3CON
                                    160 	.globl _WKTCH
                                    161 	.globl _WKTCL
                                    162 	.globl _SADDR
                                    163 	.globl _IE
                                    164 	.globl _P_SW1
                                    165 	.globl _P2
                                    166 	.globl _IRTRIM
                                    167 	.globl _LIRTRIM
                                    168 	.globl _IRCBAND
                                    169 	.globl _S2BUF
                                    170 	.globl _S2CON
                                    171 	.globl _SBUF
                                    172 	.globl _SCON
                                    173 	.globl _P2M0
                                    174 	.globl _P2M1
                                    175 	.globl _P0M0
                                    176 	.globl _P0M1
                                    177 	.globl _P1M0
                                    178 	.globl _P1M1
                                    179 	.globl _P1
                                    180 	.globl _INTCLKO
                                    181 	.globl _AUXR
                                    182 	.globl _TH1
                                    183 	.globl _TH0
                                    184 	.globl _TL1
                                    185 	.globl _TL0
                                    186 	.globl _TMOD
                                    187 	.globl _TCON
                                    188 	.globl _PCON
                                    189 	.globl _S4BUF
                                    190 	.globl _S4CON
                                    191 	.globl _DPH
                                    192 	.globl _DPL
                                    193 	.globl _SP
                                    194 	.globl _P0
                                    195 	.globl _UartSend_Buff
                                    196 	.globl _send_flag
                                    197 	.globl _reset
                                    198 	.globl _UartSend_Length
                                    199 	.globl _UartSend_Count
                                    200 	.globl _printf
                                    201 	.globl _printf_byte
                                    202 ;--------------------------------------------------------
                                    203 ; special function registers
                                    204 ;--------------------------------------------------------
                                    205 	.area RSEG    (ABS,DATA)
      000000                        206 	.org 0x0000
                           000080   207 _P0	=	0x0080
                           000081   208 _SP	=	0x0081
                           000082   209 _DPL	=	0x0082
                           000083   210 _DPH	=	0x0083
                           000084   211 _S4CON	=	0x0084
                           000085   212 _S4BUF	=	0x0085
                           000087   213 _PCON	=	0x0087
                           000088   214 _TCON	=	0x0088
                           000089   215 _TMOD	=	0x0089
                           00008A   216 _TL0	=	0x008a
                           00008B   217 _TL1	=	0x008b
                           00008C   218 _TH0	=	0x008c
                           00008D   219 _TH1	=	0x008d
                           00008E   220 _AUXR	=	0x008e
                           00008F   221 _INTCLKO	=	0x008f
                           000090   222 _P1	=	0x0090
                           000091   223 _P1M1	=	0x0091
                           000092   224 _P1M0	=	0x0092
                           000093   225 _P0M1	=	0x0093
                           000094   226 _P0M0	=	0x0094
                           000095   227 _P2M1	=	0x0095
                           000096   228 _P2M0	=	0x0096
                           000098   229 _SCON	=	0x0098
                           000099   230 _SBUF	=	0x0099
                           00009A   231 _S2CON	=	0x009a
                           00009B   232 _S2BUF	=	0x009b
                           00009D   233 _IRCBAND	=	0x009d
                           00009E   234 _LIRTRIM	=	0x009e
                           00009F   235 _IRTRIM	=	0x009f
                           0000A0   236 _P2	=	0x00a0
                           0000A2   237 _P_SW1	=	0x00a2
                           0000A8   238 _IE	=	0x00a8
                           0000A9   239 _SADDR	=	0x00a9
                           0000AA   240 _WKTCL	=	0x00aa
                           0000AB   241 _WKTCH	=	0x00ab
                           0000AC   242 _S3CON	=	0x00ac
                           0000AD   243 _S3BUF	=	0x00ad
                           0000AE   244 _TA	=	0x00ae
                           0000AF   245 _IE2	=	0x00af
                           0000B0   246 _P3	=	0x00b0
                           0000B1   247 _P3M1	=	0x00b1
                           0000B2   248 _P3M0	=	0x00b2
                           0000B3   249 _P4M1	=	0x00b3
                           0000B4   250 _P4M0	=	0x00b4
                           0000B5   251 _IP2	=	0x00b5
                           0000B6   252 _IP2H	=	0x00b6
                           0000B7   253 _IPH	=	0x00b7
                           0000B8   254 _IP	=	0x00b8
                           0000B9   255 _SADEN	=	0x00b9
                           0000BA   256 _P_SW2	=	0x00ba
                           0000BC   257 _ADC_CONTR	=	0x00bc
                           0000BD   258 _ADC_RES	=	0x00bd
                           0000BE   259 _ADC_RESL	=	0x00be
                           0000C0   260 _P4	=	0x00c0
                           0000C1   261 _WDT_CONTR	=	0x00c1
                           0000C2   262 _IAP_DATA	=	0x00c2
                           0000C3   263 _IAP_ADDRH	=	0x00c3
                           0000C4   264 _IAP_ADDRL	=	0x00c4
                           0000C5   265 _IAP_CMD	=	0x00c5
                           0000C6   266 _IAP_TRIG	=	0x00c6
                           0000C7   267 _IAP_CONTR	=	0x00c7
                           0000C8   268 _P5	=	0x00c8
                           0000C9   269 _P5M1	=	0x00c9
                           0000CA   270 _P5M0	=	0x00ca
                           0000CB   271 _P6M1	=	0x00cb
                           0000CC   272 _P6M0	=	0x00cc
                           0000CD   273 _SPSTAT	=	0x00cd
                           0000CE   274 _SPCTL	=	0x00ce
                           0000CF   275 _SPDAT	=	0x00cf
                           0000D0   276 _PSW	=	0x00d0
                           0000D1   277 _T4T3M	=	0x00d1
                           0000D2   278 _T4H	=	0x00d2
                           0000D3   279 _T4L	=	0x00d3
                           0000D4   280 _T3H	=	0x00d4
                           0000D5   281 _T3L	=	0x00d5
                           0000D6   282 _T2H	=	0x00d6
                           0000D7   283 _T2L	=	0x00d7
                           0000DC   284 _USBCLK	=	0x00dc
                           0000DE   285 _ADCCFG	=	0x00de
                           0000DF   286 _IP3	=	0x00df
                           0000E0   287 _ACC	=	0x00e0
                           0000E1   288 _P7M1	=	0x00e1
                           0000E2   289 _P7M0	=	0x00e2
                           0000E3   290 _DPS	=	0x00e3
                           0000E4   291 _DPL1	=	0x00e4
                           0000E5   292 _DPH1	=	0x00e5
                           0000E6   293 _CMPCR1	=	0x00e6
                           0000E7   294 _CMPCR2	=	0x00e7
                           0000E8   295 _P6	=	0x00e8
                           0000EC   296 _USBDAT	=	0x00ec
                           0000EE   297 _IP3H	=	0x00ee
                           0000EF   298 _AUXINTIF	=	0x00ef
                           0000F0   299 _B	=	0x00f0
                           0000F4   300 _USBCON	=	0x00f4
                           0000F5   301 _IAP_TPS	=	0x00f5
                           0000F8   302 _P7	=	0x00f8
                           0000FC   303 _USBADR	=	0x00fc
                           0000FF   304 _RSTCFG	=	0x00ff
                                    305 ;--------------------------------------------------------
                                    306 ; special function bits
                                    307 ;--------------------------------------------------------
                                    308 	.area RSEG    (ABS,DATA)
      000000                        309 	.org 0x0000
                           000080   310 _P00	=	0x0080
                           000081   311 _P01	=	0x0081
                           000082   312 _P02	=	0x0082
                           000083   313 _P03	=	0x0083
                           000084   314 _P04	=	0x0084
                           000085   315 _P05	=	0x0085
                           000086   316 _P06	=	0x0086
                           000087   317 _P07	=	0x0087
                           00008F   318 _TF1	=	0x008f
                           00008E   319 _TR1	=	0x008e
                           00008D   320 _TF0	=	0x008d
                           00008C   321 _TR0	=	0x008c
                           00008B   322 _IE1	=	0x008b
                           00008A   323 _IT1	=	0x008a
                           000089   324 _IE0	=	0x0089
                           000088   325 _IT0	=	0x0088
                           000090   326 _P10	=	0x0090
                           000091   327 _P11	=	0x0091
                           000092   328 _P12	=	0x0092
                           000093   329 _P13	=	0x0093
                           000094   330 _P14	=	0x0094
                           000095   331 _P15	=	0x0095
                           000096   332 _P16	=	0x0096
                           000097   333 _P17	=	0x0097
                           00009F   334 _SM0	=	0x009f
                           00009E   335 _SM1	=	0x009e
                           00009D   336 _SM2	=	0x009d
                           00009C   337 _REN	=	0x009c
                           00009B   338 _TB8	=	0x009b
                           00009A   339 _RB8	=	0x009a
                           000099   340 _TI	=	0x0099
                           000098   341 _RI	=	0x0098
                           0000A0   342 _P20	=	0x00a0
                           0000A1   343 _P21	=	0x00a1
                           0000A2   344 _P22	=	0x00a2
                           0000A3   345 _P23	=	0x00a3
                           0000A4   346 _P24	=	0x00a4
                           0000A5   347 _P25	=	0x00a5
                           0000A6   348 _P26	=	0x00a6
                           0000A7   349 _P27	=	0x00a7
                           0000AF   350 _EA	=	0x00af
                           0000AE   351 _ELVD	=	0x00ae
                           0000AD   352 _EADC	=	0x00ad
                           0000AC   353 _ES	=	0x00ac
                           0000AB   354 _ET1	=	0x00ab
                           0000AA   355 _EX1	=	0x00aa
                           0000A9   356 _ET0	=	0x00a9
                           0000A8   357 _EX0	=	0x00a8
                           0000B0   358 _P30	=	0x00b0
                           0000B1   359 _P31	=	0x00b1
                           0000B2   360 _P32	=	0x00b2
                           0000B3   361 _P33	=	0x00b3
                           0000B4   362 _P34	=	0x00b4
                           0000B5   363 _P35	=	0x00b5
                           0000B6   364 _P36	=	0x00b6
                           0000B7   365 _P37	=	0x00b7
                           0000BF   366 _PPCA	=	0x00bf
                           0000BE   367 _PLVD	=	0x00be
                           0000BD   368 _PADC	=	0x00bd
                           0000BC   369 _PS	=	0x00bc
                           0000BB   370 _PT1	=	0x00bb
                           0000BA   371 _PX1	=	0x00ba
                           0000B9   372 _PT0	=	0x00b9
                           0000B8   373 _PX0	=	0x00b8
                           0000C0   374 _P40	=	0x00c0
                           0000C1   375 _P41	=	0x00c1
                           0000C2   376 _P42	=	0x00c2
                           0000C3   377 _P43	=	0x00c3
                           0000C4   378 _P44	=	0x00c4
                           0000C5   379 _P45	=	0x00c5
                           0000C6   380 _P46	=	0x00c6
                           0000C7   381 _P47	=	0x00c7
                           0000C8   382 _P50	=	0x00c8
                           0000C9   383 _P51	=	0x00c9
                           0000CA   384 _P52	=	0x00ca
                           0000CB   385 _P53	=	0x00cb
                           0000CC   386 _P54	=	0x00cc
                           0000D7   387 _CY	=	0x00d7
                           0000D6   388 _AC	=	0x00d6
                           0000D5   389 _F0	=	0x00d5
                           0000D4   390 _RS1	=	0x00d4
                           0000D3   391 _RS0	=	0x00d3
                           0000D2   392 _OV	=	0x00d2
                           0000D1   393 _F1	=	0x00d1
                           0000D0   394 _P	=	0x00d0
                                    395 ;--------------------------------------------------------
                                    396 ; overlayable register banks
                                    397 ;--------------------------------------------------------
                                    398 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        399 	.ds 8
                                    400 ;--------------------------------------------------------
                                    401 ; internal ram data
                                    402 ;--------------------------------------------------------
                                    403 	.area DSEG    (DATA)
      00001D                        404 _UartSend_Count::
      00001D                        405 	.ds 1
      00001E                        406 _UartSend_Length::
      00001E                        407 	.ds 1
      00001F                        408 _reset::
      00001F                        409 	.ds 1
                                    410 ;--------------------------------------------------------
                                    411 ; overlayable items in internal ram 
                                    412 ;--------------------------------------------------------
                                    413 	.area	OSEG    (OVR,DATA)
                                    414 	.area	OSEG    (OVR,DATA)
                                    415 ;--------------------------------------------------------
                                    416 ; indirectly addressable internal ram data
                                    417 ;--------------------------------------------------------
                                    418 	.area ISEG    (DATA)
                                    419 ;--------------------------------------------------------
                                    420 ; absolute internal ram data
                                    421 ;--------------------------------------------------------
                                    422 	.area IABS    (ABS,DATA)
                                    423 	.area IABS    (ABS,DATA)
                                    424 ;--------------------------------------------------------
                                    425 ; bit data
                                    426 ;--------------------------------------------------------
                                    427 	.area BSEG    (BIT)
      000001                        428 _send_flag::
      000001                        429 	.ds 1
                                    430 ;--------------------------------------------------------
                                    431 ; paged external ram data
                                    432 ;--------------------------------------------------------
                                    433 	.area PSEG    (PAG,XDATA)
                                    434 ;--------------------------------------------------------
                                    435 ; external ram data
                                    436 ;--------------------------------------------------------
                                    437 	.area XSEG    (XDATA)
      000101                        438 _UartSend_Buff::
      000101                        439 	.ds 256
                                    440 ;--------------------------------------------------------
                                    441 ; absolute external ram data
                                    442 ;--------------------------------------------------------
                                    443 	.area XABS    (ABS,XDATA)
                                    444 ;--------------------------------------------------------
                                    445 ; external initialized ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area XISEG   (XDATA)
                                    448 	.area HOME    (CODE)
                                    449 	.area GSINIT0 (CODE)
                                    450 	.area GSINIT1 (CODE)
                                    451 	.area GSINIT2 (CODE)
                                    452 	.area GSINIT3 (CODE)
                                    453 	.area GSINIT4 (CODE)
                                    454 	.area GSINIT5 (CODE)
                                    455 	.area GSINIT  (CODE)
                                    456 	.area GSFINAL (CODE)
                                    457 	.area CSEG    (CODE)
                                    458 ;--------------------------------------------------------
                                    459 ; global & static initialisations
                                    460 ;--------------------------------------------------------
                                    461 	.area HOME    (CODE)
                                    462 	.area GSINIT  (CODE)
                                    463 	.area GSFINAL (CODE)
                                    464 	.area GSINIT  (CODE)
                                    465 ;	src/uart.c:6: volatile uint8_t UartSend_Count = 0;            //读缓存位置
      00015A 75 1D 00         [24]  466 	mov	_UartSend_Count,#0x00
                                    467 ;	src/uart.c:7: volatile uint8_t UartSend_Length = 0;           //写缓存位置
      00015D 75 1E 00         [24]  468 	mov	_UartSend_Length,#0x00
                                    469 ;	src/uart.c:9: volatile uint8_t reset = 0;                     //收到6个字节数据进行复位,用来不断电重烧程序
      000160 75 1F 00         [24]  470 	mov	_reset,#0x00
                                    471 ;	src/uart.c:5: volatile bit send_flag = 0;                     //开始发送标志
                                    472 ;	assignBit
      000163 C2 01            [12]  473 	clr	_send_flag
                                    474 ;--------------------------------------------------------
                                    475 ; Home
                                    476 ;--------------------------------------------------------
                                    477 	.area HOME    (CODE)
                                    478 	.area HOME    (CODE)
                                    479 ;--------------------------------------------------------
                                    480 ; code
                                    481 ;--------------------------------------------------------
                                    482 	.area CSEG    (CODE)
                                    483 ;------------------------------------------------------------
                                    484 ;Allocation info for local variables in function 'UART1_Interrupt'
                                    485 ;------------------------------------------------------------
                                    486 ;	src/uart.c:11: void UART1_Interrupt(void) interrupt(4)
                                    487 ;	-----------------------------------------
                                    488 ;	 function UART1_Interrupt
                                    489 ;	-----------------------------------------
      000690                        490 _UART1_Interrupt:
                           000007   491 	ar7 = 0x07
                           000006   492 	ar6 = 0x06
                           000005   493 	ar5 = 0x05
                           000004   494 	ar4 = 0x04
                           000003   495 	ar3 = 0x03
                           000002   496 	ar2 = 0x02
                           000001   497 	ar1 = 0x01
                           000000   498 	ar0 = 0x00
      000690 C0 E0            [24]  499 	push	acc
      000692 C0 82            [24]  500 	push	dpl
      000694 C0 83            [24]  501 	push	dph
      000696 C0 07            [24]  502 	push	ar7
      000698 C0 D0            [24]  503 	push	psw
      00069A 75 D0 00         [24]  504 	mov	psw,#0x00
                                    505 ;	src/uart.c:13: if(TI)
                                    506 ;	src/uart.c:15: TI = 0;
                                    507 ;	assignBit
      00069D 10 99 02         [24]  508 	jbc	_TI,00128$
      0006A0 80 24            [24]  509 	sjmp	00105$
      0006A2                        510 00128$:
                                    511 ;	src/uart.c:16: if(UartSend_Count != UartSend_Length)
      0006A2 E5 1E            [12]  512 	mov	a,_UartSend_Length
      0006A4 B5 1D 02         [24]  513 	cjne	a,_UartSend_Count,00129$
      0006A7 80 15            [24]  514 	sjmp	00102$
      0006A9                        515 00129$:
                                    516 ;	src/uart.c:18: SBUF = UartSend_Buff[UartSend_Count++];
      0006A9 E5 1D            [12]  517 	mov	a,_UartSend_Count
      0006AB FF               [12]  518 	mov	r7,a
      0006AC 04               [12]  519 	inc	a
      0006AD F5 1D            [12]  520 	mov	_UartSend_Count,a
      0006AF EF               [12]  521 	mov	a,r7
      0006B0 24 01            [12]  522 	add	a,#_UartSend_Buff
      0006B2 F5 82            [12]  523 	mov	dpl,a
      0006B4 E4               [12]  524 	clr	a
      0006B5 34 01            [12]  525 	addc	a,#(_UartSend_Buff >> 8)
      0006B7 F5 83            [12]  526 	mov	dph,a
      0006B9 E0               [24]  527 	movx	a,@dptr
      0006BA F5 99            [12]  528 	mov	_SBUF,a
      0006BC 80 08            [24]  529 	sjmp	00105$
      0006BE                        530 00102$:
                                    531 ;	src/uart.c:23: send_flag = 0;
                                    532 ;	assignBit
      0006BE C2 01            [12]  533 	clr	_send_flag
                                    534 ;	src/uart.c:24: UartSend_Count = 0;
      0006C0 75 1D 00         [24]  535 	mov	_UartSend_Count,#0x00
                                    536 ;	src/uart.c:25: UartSend_Length = 0;
      0006C3 75 1E 00         [24]  537 	mov	_UartSend_Length,#0x00
      0006C6                        538 00105$:
                                    539 ;	src/uart.c:28: if(RI)
                                    540 ;	src/uart.c:30: RI = 0;
                                    541 ;	assignBit
      0006C6 10 98 02         [24]  542 	jbc	_RI,00130$
      0006C9 80 0E            [24]  543 	sjmp	00110$
      0006CB                        544 00130$:
                                    545 ;	src/uart.c:31: reset++;
      0006CB E5 1F            [12]  546 	mov	a,_reset
      0006CD 04               [12]  547 	inc	a
      0006CE F5 1F            [12]  548 	mov	_reset,a
                                    549 ;	src/uart.c:32: if(reset > 6)
      0006D0 E5 1F            [12]  550 	mov	a,_reset
      0006D2 24 F9            [12]  551 	add	a,#0xff - 0x06
      0006D4 50 03            [24]  552 	jnc	00110$
                                    553 ;	src/uart.c:34: IAP_CONTR |= 0x60;
      0006D6 43 C7 60         [24]  554 	orl	_IAP_CONTR,#0x60
      0006D9                        555 00110$:
                                    556 ;	src/uart.c:37: }
      0006D9 D0 D0            [24]  557 	pop	psw
      0006DB D0 07            [24]  558 	pop	ar7
      0006DD D0 83            [24]  559 	pop	dph
      0006DF D0 82            [24]  560 	pop	dpl
      0006E1 D0 E0            [24]  561 	pop	acc
      0006E3 32               [24]  562 	reti
                                    563 ;	eliminated unneeded push/pop b
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'printf'
                                    566 ;------------------------------------------------------------
                                    567 ;s                         Allocated to registers 
                                    568 ;------------------------------------------------------------
                                    569 ;	src/uart.c:39: void printf(uint8_t *s)
                                    570 ;	-----------------------------------------
                                    571 ;	 function printf
                                    572 ;	-----------------------------------------
      0006E4                        573 _printf:
      0006E4 AD 82            [24]  574 	mov	r5,dpl
      0006E6 AE 83            [24]  575 	mov	r6,dph
      0006E8 AF F0            [24]  576 	mov	r7,b
                                    577 ;	src/uart.c:41: while(*s != 0)
      0006EA                        578 00101$:
      0006EA 8D 82            [24]  579 	mov	dpl,r5
      0006EC 8E 83            [24]  580 	mov	dph,r6
      0006EE 8F F0            [24]  581 	mov	b,r7
      0006F0 12 08 64         [24]  582 	lcall	__gptrget
      0006F3 60 25            [24]  583 	jz	00103$
                                    584 ;	src/uart.c:43: UartSend_Buff[UartSend_Length++] = *s++;    //填充缓存数据
      0006F5 E5 1E            [12]  585 	mov	a,_UartSend_Length
      0006F7 FC               [12]  586 	mov	r4,a
      0006F8 04               [12]  587 	inc	a
      0006F9 F5 1E            [12]  588 	mov	_UartSend_Length,a
      0006FB EC               [12]  589 	mov	a,r4
      0006FC 24 01            [12]  590 	add	a,#_UartSend_Buff
      0006FE FC               [12]  591 	mov	r4,a
      0006FF E4               [12]  592 	clr	a
      000700 34 01            [12]  593 	addc	a,#(_UartSend_Buff >> 8)
      000702 FB               [12]  594 	mov	r3,a
      000703 8D 82            [24]  595 	mov	dpl,r5
      000705 8E 83            [24]  596 	mov	dph,r6
      000707 8F F0            [24]  597 	mov	b,r7
      000709 12 08 64         [24]  598 	lcall	__gptrget
      00070C FA               [12]  599 	mov	r2,a
      00070D A3               [24]  600 	inc	dptr
      00070E AD 82            [24]  601 	mov	r5,dpl
      000710 AE 83            [24]  602 	mov	r6,dph
      000712 8C 82            [24]  603 	mov	dpl,r4
      000714 8B 83            [24]  604 	mov	dph,r3
      000716 EA               [12]  605 	mov	a,r2
      000717 F0               [24]  606 	movx	@dptr,a
      000718 80 D0            [24]  607 	sjmp	00101$
      00071A                        608 00103$:
                                    609 ;	src/uart.c:46: if(send_flag == 0)
      00071A 20 01 15         [24]  610 	jb	_send_flag,00106$
                                    611 ;	src/uart.c:48: send_flag = 1;
                                    612 ;	assignBit
      00071D D2 01            [12]  613 	setb	_send_flag
                                    614 ;	src/uart.c:49: SBUF = UartSend_Buff[UartSend_Count++];
      00071F E5 1D            [12]  615 	mov	a,_UartSend_Count
      000721 FF               [12]  616 	mov	r7,a
      000722 04               [12]  617 	inc	a
      000723 F5 1D            [12]  618 	mov	_UartSend_Count,a
      000725 EF               [12]  619 	mov	a,r7
      000726 24 01            [12]  620 	add	a,#_UartSend_Buff
      000728 F5 82            [12]  621 	mov	dpl,a
      00072A E4               [12]  622 	clr	a
      00072B 34 01            [12]  623 	addc	a,#(_UartSend_Buff >> 8)
      00072D F5 83            [12]  624 	mov	dph,a
      00072F E0               [24]  625 	movx	a,@dptr
      000730 F5 99            [12]  626 	mov	_SBUF,a
      000732                        627 00106$:
                                    628 ;	src/uart.c:51: }
      000732 22               [24]  629 	ret
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'printf_byte'
                                    632 ;------------------------------------------------------------
                                    633 ;byte                      Allocated to registers r7 
                                    634 ;------------------------------------------------------------
                                    635 ;	src/uart.c:53: void printf_byte(uint8_t byte)
                                    636 ;	-----------------------------------------
                                    637 ;	 function printf_byte
                                    638 ;	-----------------------------------------
      000733                        639 _printf_byte:
      000733 AF 82            [24]  640 	mov	r7,dpl
                                    641 ;	src/uart.c:55: UartSend_Buff[UartSend_Length++] = byte;
      000735 E5 1E            [12]  642 	mov	a,_UartSend_Length
      000737 FE               [12]  643 	mov	r6,a
      000738 04               [12]  644 	inc	a
      000739 F5 1E            [12]  645 	mov	_UartSend_Length,a
      00073B EE               [12]  646 	mov	a,r6
      00073C 24 01            [12]  647 	add	a,#_UartSend_Buff
      00073E F5 82            [12]  648 	mov	dpl,a
      000740 E4               [12]  649 	clr	a
      000741 34 01            [12]  650 	addc	a,#(_UartSend_Buff >> 8)
      000743 F5 83            [12]  651 	mov	dph,a
      000745 EF               [12]  652 	mov	a,r7
      000746 F0               [24]  653 	movx	@dptr,a
                                    654 ;	src/uart.c:57: if(send_flag == 0)
      000747 20 01 15         [24]  655 	jb	_send_flag,00103$
                                    656 ;	src/uart.c:59: send_flag = 1;
                                    657 ;	assignBit
      00074A D2 01            [12]  658 	setb	_send_flag
                                    659 ;	src/uart.c:60: SBUF = UartSend_Buff[UartSend_Count++];
      00074C E5 1D            [12]  660 	mov	a,_UartSend_Count
      00074E FF               [12]  661 	mov	r7,a
      00074F 04               [12]  662 	inc	a
      000750 F5 1D            [12]  663 	mov	_UartSend_Count,a
      000752 EF               [12]  664 	mov	a,r7
      000753 24 01            [12]  665 	add	a,#_UartSend_Buff
      000755 F5 82            [12]  666 	mov	dpl,a
      000757 E4               [12]  667 	clr	a
      000758 34 01            [12]  668 	addc	a,#(_UartSend_Buff >> 8)
      00075A F5 83            [12]  669 	mov	dph,a
      00075C E0               [24]  670 	movx	a,@dptr
      00075D F5 99            [12]  671 	mov	_SBUF,a
      00075F                        672 00103$:
                                    673 ;	src/uart.c:62: }
      00075F 22               [24]  674 	ret
                                    675 	.area CSEG    (CODE)
                                    676 	.area CONST   (CODE)
                                    677 	.area XINIT   (CODE)
                                    678 	.area CABS    (ABS,CODE)
