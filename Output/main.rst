                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _task2
                                     13 	.globl _task1
                                     14 	.globl _CPU_Init
                                     15 	.globl _MiniSch_Init
                                     16 	.globl _dac_send
                                     17 	.globl _pwm_init
                                     18 	.globl _printf
                                     19 	.globl _P
                                     20 	.globl _F1
                                     21 	.globl _OV
                                     22 	.globl _RS0
                                     23 	.globl _RS1
                                     24 	.globl _F0
                                     25 	.globl _AC
                                     26 	.globl _CY
                                     27 	.globl _P54
                                     28 	.globl _P53
                                     29 	.globl _P52
                                     30 	.globl _P51
                                     31 	.globl _P50
                                     32 	.globl _P47
                                     33 	.globl _P46
                                     34 	.globl _P45
                                     35 	.globl _P44
                                     36 	.globl _P43
                                     37 	.globl _P42
                                     38 	.globl _P41
                                     39 	.globl _P40
                                     40 	.globl _PX0
                                     41 	.globl _PT0
                                     42 	.globl _PX1
                                     43 	.globl _PT1
                                     44 	.globl _PS
                                     45 	.globl _PADC
                                     46 	.globl _PLVD
                                     47 	.globl _PPCA
                                     48 	.globl _P37
                                     49 	.globl _P36
                                     50 	.globl _P35
                                     51 	.globl _P34
                                     52 	.globl _P33
                                     53 	.globl _P32
                                     54 	.globl _P31
                                     55 	.globl _P30
                                     56 	.globl _EX0
                                     57 	.globl _ET0
                                     58 	.globl _EX1
                                     59 	.globl _ET1
                                     60 	.globl _ES
                                     61 	.globl _EADC
                                     62 	.globl _ELVD
                                     63 	.globl _EA
                                     64 	.globl _P27
                                     65 	.globl _P26
                                     66 	.globl _P25
                                     67 	.globl _P24
                                     68 	.globl _P23
                                     69 	.globl _P22
                                     70 	.globl _P21
                                     71 	.globl _P20
                                     72 	.globl _RI
                                     73 	.globl _TI
                                     74 	.globl _RB8
                                     75 	.globl _TB8
                                     76 	.globl _REN
                                     77 	.globl _SM2
                                     78 	.globl _SM1
                                     79 	.globl _SM0
                                     80 	.globl _P17
                                     81 	.globl _P16
                                     82 	.globl _P15
                                     83 	.globl _P14
                                     84 	.globl _P13
                                     85 	.globl _P12
                                     86 	.globl _P11
                                     87 	.globl _P10
                                     88 	.globl _IT0
                                     89 	.globl _IE0
                                     90 	.globl _IT1
                                     91 	.globl _IE1
                                     92 	.globl _TR0
                                     93 	.globl _TF0
                                     94 	.globl _TR1
                                     95 	.globl _TF1
                                     96 	.globl _P07
                                     97 	.globl _P06
                                     98 	.globl _P05
                                     99 	.globl _P04
                                    100 	.globl _P03
                                    101 	.globl _P02
                                    102 	.globl _P01
                                    103 	.globl _P00
                                    104 	.globl _RSTCFG
                                    105 	.globl _USBADR
                                    106 	.globl _P7
                                    107 	.globl _IAP_TPS
                                    108 	.globl _USBCON
                                    109 	.globl _B
                                    110 	.globl _AUXINTIF
                                    111 	.globl _IP3H
                                    112 	.globl _USBDAT
                                    113 	.globl _P6
                                    114 	.globl _CMPCR2
                                    115 	.globl _CMPCR1
                                    116 	.globl _DPH1
                                    117 	.globl _DPL1
                                    118 	.globl _DPS
                                    119 	.globl _P7M0
                                    120 	.globl _P7M1
                                    121 	.globl _ACC
                                    122 	.globl _IP3
                                    123 	.globl _ADCCFG
                                    124 	.globl _USBCLK
                                    125 	.globl _T2L
                                    126 	.globl _T2H
                                    127 	.globl _T3L
                                    128 	.globl _T3H
                                    129 	.globl _T4L
                                    130 	.globl _T4H
                                    131 	.globl _T4T3M
                                    132 	.globl _PSW
                                    133 	.globl _SPDAT
                                    134 	.globl _SPCTL
                                    135 	.globl _SPSTAT
                                    136 	.globl _P6M0
                                    137 	.globl _P6M1
                                    138 	.globl _P5M0
                                    139 	.globl _P5M1
                                    140 	.globl _P5
                                    141 	.globl _IAP_CONTR
                                    142 	.globl _IAP_TRIG
                                    143 	.globl _IAP_CMD
                                    144 	.globl _IAP_ADDRL
                                    145 	.globl _IAP_ADDRH
                                    146 	.globl _IAP_DATA
                                    147 	.globl _WDT_CONTR
                                    148 	.globl _P4
                                    149 	.globl _ADC_RESL
                                    150 	.globl _ADC_RES
                                    151 	.globl _ADC_CONTR
                                    152 	.globl _P_SW2
                                    153 	.globl _SADEN
                                    154 	.globl _IP
                                    155 	.globl _IPH
                                    156 	.globl _IP2H
                                    157 	.globl _IP2
                                    158 	.globl _P4M0
                                    159 	.globl _P4M1
                                    160 	.globl _P3M0
                                    161 	.globl _P3M1
                                    162 	.globl _P3
                                    163 	.globl _IE2
                                    164 	.globl _TA
                                    165 	.globl _S3BUF
                                    166 	.globl _S3CON
                                    167 	.globl _WKTCH
                                    168 	.globl _WKTCL
                                    169 	.globl _SADDR
                                    170 	.globl _IE
                                    171 	.globl _P_SW1
                                    172 	.globl _P2
                                    173 	.globl _IRTRIM
                                    174 	.globl _LIRTRIM
                                    175 	.globl _IRCBAND
                                    176 	.globl _S2BUF
                                    177 	.globl _S2CON
                                    178 	.globl _SBUF
                                    179 	.globl _SCON
                                    180 	.globl _P2M0
                                    181 	.globl _P2M1
                                    182 	.globl _P0M0
                                    183 	.globl _P0M1
                                    184 	.globl _P1M0
                                    185 	.globl _P1M1
                                    186 	.globl _P1
                                    187 	.globl _INTCLKO
                                    188 	.globl _AUXR
                                    189 	.globl _TH1
                                    190 	.globl _TH0
                                    191 	.globl _TL1
                                    192 	.globl _TL0
                                    193 	.globl _TMOD
                                    194 	.globl _TCON
                                    195 	.globl _PCON
                                    196 	.globl _S4BUF
                                    197 	.globl _S4CON
                                    198 	.globl _DPH
                                    199 	.globl _DPL
                                    200 	.globl _SP
                                    201 	.globl _P0
                                    202 	.globl _MINI_SCH_RUN
                                    203 	.globl _key_sem
                                    204 	.globl _timers
                                    205 ;--------------------------------------------------------
                                    206 ; special function registers
                                    207 ;--------------------------------------------------------
                                    208 	.area RSEG    (ABS,DATA)
      000000                        209 	.org 0x0000
                           000080   210 _P0	=	0x0080
                           000081   211 _SP	=	0x0081
                           000082   212 _DPL	=	0x0082
                           000083   213 _DPH	=	0x0083
                           000084   214 _S4CON	=	0x0084
                           000085   215 _S4BUF	=	0x0085
                           000087   216 _PCON	=	0x0087
                           000088   217 _TCON	=	0x0088
                           000089   218 _TMOD	=	0x0089
                           00008A   219 _TL0	=	0x008a
                           00008B   220 _TL1	=	0x008b
                           00008C   221 _TH0	=	0x008c
                           00008D   222 _TH1	=	0x008d
                           00008E   223 _AUXR	=	0x008e
                           00008F   224 _INTCLKO	=	0x008f
                           000090   225 _P1	=	0x0090
                           000091   226 _P1M1	=	0x0091
                           000092   227 _P1M0	=	0x0092
                           000093   228 _P0M1	=	0x0093
                           000094   229 _P0M0	=	0x0094
                           000095   230 _P2M1	=	0x0095
                           000096   231 _P2M0	=	0x0096
                           000098   232 _SCON	=	0x0098
                           000099   233 _SBUF	=	0x0099
                           00009A   234 _S2CON	=	0x009a
                           00009B   235 _S2BUF	=	0x009b
                           00009D   236 _IRCBAND	=	0x009d
                           00009E   237 _LIRTRIM	=	0x009e
                           00009F   238 _IRTRIM	=	0x009f
                           0000A0   239 _P2	=	0x00a0
                           0000A2   240 _P_SW1	=	0x00a2
                           0000A8   241 _IE	=	0x00a8
                           0000A9   242 _SADDR	=	0x00a9
                           0000AA   243 _WKTCL	=	0x00aa
                           0000AB   244 _WKTCH	=	0x00ab
                           0000AC   245 _S3CON	=	0x00ac
                           0000AD   246 _S3BUF	=	0x00ad
                           0000AE   247 _TA	=	0x00ae
                           0000AF   248 _IE2	=	0x00af
                           0000B0   249 _P3	=	0x00b0
                           0000B1   250 _P3M1	=	0x00b1
                           0000B2   251 _P3M0	=	0x00b2
                           0000B3   252 _P4M1	=	0x00b3
                           0000B4   253 _P4M0	=	0x00b4
                           0000B5   254 _IP2	=	0x00b5
                           0000B6   255 _IP2H	=	0x00b6
                           0000B7   256 _IPH	=	0x00b7
                           0000B8   257 _IP	=	0x00b8
                           0000B9   258 _SADEN	=	0x00b9
                           0000BA   259 _P_SW2	=	0x00ba
                           0000BC   260 _ADC_CONTR	=	0x00bc
                           0000BD   261 _ADC_RES	=	0x00bd
                           0000BE   262 _ADC_RESL	=	0x00be
                           0000C0   263 _P4	=	0x00c0
                           0000C1   264 _WDT_CONTR	=	0x00c1
                           0000C2   265 _IAP_DATA	=	0x00c2
                           0000C3   266 _IAP_ADDRH	=	0x00c3
                           0000C4   267 _IAP_ADDRL	=	0x00c4
                           0000C5   268 _IAP_CMD	=	0x00c5
                           0000C6   269 _IAP_TRIG	=	0x00c6
                           0000C7   270 _IAP_CONTR	=	0x00c7
                           0000C8   271 _P5	=	0x00c8
                           0000C9   272 _P5M1	=	0x00c9
                           0000CA   273 _P5M0	=	0x00ca
                           0000CB   274 _P6M1	=	0x00cb
                           0000CC   275 _P6M0	=	0x00cc
                           0000CD   276 _SPSTAT	=	0x00cd
                           0000CE   277 _SPCTL	=	0x00ce
                           0000CF   278 _SPDAT	=	0x00cf
                           0000D0   279 _PSW	=	0x00d0
                           0000D1   280 _T4T3M	=	0x00d1
                           0000D2   281 _T4H	=	0x00d2
                           0000D3   282 _T4L	=	0x00d3
                           0000D4   283 _T3H	=	0x00d4
                           0000D5   284 _T3L	=	0x00d5
                           0000D6   285 _T2H	=	0x00d6
                           0000D7   286 _T2L	=	0x00d7
                           0000DC   287 _USBCLK	=	0x00dc
                           0000DE   288 _ADCCFG	=	0x00de
                           0000DF   289 _IP3	=	0x00df
                           0000E0   290 _ACC	=	0x00e0
                           0000E1   291 _P7M1	=	0x00e1
                           0000E2   292 _P7M0	=	0x00e2
                           0000E3   293 _DPS	=	0x00e3
                           0000E4   294 _DPL1	=	0x00e4
                           0000E5   295 _DPH1	=	0x00e5
                           0000E6   296 _CMPCR1	=	0x00e6
                           0000E7   297 _CMPCR2	=	0x00e7
                           0000E8   298 _P6	=	0x00e8
                           0000EC   299 _USBDAT	=	0x00ec
                           0000EE   300 _IP3H	=	0x00ee
                           0000EF   301 _AUXINTIF	=	0x00ef
                           0000F0   302 _B	=	0x00f0
                           0000F4   303 _USBCON	=	0x00f4
                           0000F5   304 _IAP_TPS	=	0x00f5
                           0000F8   305 _P7	=	0x00f8
                           0000FC   306 _USBADR	=	0x00fc
                           0000FF   307 _RSTCFG	=	0x00ff
                                    308 ;--------------------------------------------------------
                                    309 ; special function bits
                                    310 ;--------------------------------------------------------
                                    311 	.area RSEG    (ABS,DATA)
      000000                        312 	.org 0x0000
                           000080   313 _P00	=	0x0080
                           000081   314 _P01	=	0x0081
                           000082   315 _P02	=	0x0082
                           000083   316 _P03	=	0x0083
                           000084   317 _P04	=	0x0084
                           000085   318 _P05	=	0x0085
                           000086   319 _P06	=	0x0086
                           000087   320 _P07	=	0x0087
                           00008F   321 _TF1	=	0x008f
                           00008E   322 _TR1	=	0x008e
                           00008D   323 _TF0	=	0x008d
                           00008C   324 _TR0	=	0x008c
                           00008B   325 _IE1	=	0x008b
                           00008A   326 _IT1	=	0x008a
                           000089   327 _IE0	=	0x0089
                           000088   328 _IT0	=	0x0088
                           000090   329 _P10	=	0x0090
                           000091   330 _P11	=	0x0091
                           000092   331 _P12	=	0x0092
                           000093   332 _P13	=	0x0093
                           000094   333 _P14	=	0x0094
                           000095   334 _P15	=	0x0095
                           000096   335 _P16	=	0x0096
                           000097   336 _P17	=	0x0097
                           00009F   337 _SM0	=	0x009f
                           00009E   338 _SM1	=	0x009e
                           00009D   339 _SM2	=	0x009d
                           00009C   340 _REN	=	0x009c
                           00009B   341 _TB8	=	0x009b
                           00009A   342 _RB8	=	0x009a
                           000099   343 _TI	=	0x0099
                           000098   344 _RI	=	0x0098
                           0000A0   345 _P20	=	0x00a0
                           0000A1   346 _P21	=	0x00a1
                           0000A2   347 _P22	=	0x00a2
                           0000A3   348 _P23	=	0x00a3
                           0000A4   349 _P24	=	0x00a4
                           0000A5   350 _P25	=	0x00a5
                           0000A6   351 _P26	=	0x00a6
                           0000A7   352 _P27	=	0x00a7
                           0000AF   353 _EA	=	0x00af
                           0000AE   354 _ELVD	=	0x00ae
                           0000AD   355 _EADC	=	0x00ad
                           0000AC   356 _ES	=	0x00ac
                           0000AB   357 _ET1	=	0x00ab
                           0000AA   358 _EX1	=	0x00aa
                           0000A9   359 _ET0	=	0x00a9
                           0000A8   360 _EX0	=	0x00a8
                           0000B0   361 _P30	=	0x00b0
                           0000B1   362 _P31	=	0x00b1
                           0000B2   363 _P32	=	0x00b2
                           0000B3   364 _P33	=	0x00b3
                           0000B4   365 _P34	=	0x00b4
                           0000B5   366 _P35	=	0x00b5
                           0000B6   367 _P36	=	0x00b6
                           0000B7   368 _P37	=	0x00b7
                           0000BF   369 _PPCA	=	0x00bf
                           0000BE   370 _PLVD	=	0x00be
                           0000BD   371 _PADC	=	0x00bd
                           0000BC   372 _PS	=	0x00bc
                           0000BB   373 _PT1	=	0x00bb
                           0000BA   374 _PX1	=	0x00ba
                           0000B9   375 _PT0	=	0x00b9
                           0000B8   376 _PX0	=	0x00b8
                           0000C0   377 _P40	=	0x00c0
                           0000C1   378 _P41	=	0x00c1
                           0000C2   379 _P42	=	0x00c2
                           0000C3   380 _P43	=	0x00c3
                           0000C4   381 _P44	=	0x00c4
                           0000C5   382 _P45	=	0x00c5
                           0000C6   383 _P46	=	0x00c6
                           0000C7   384 _P47	=	0x00c7
                           0000C8   385 _P50	=	0x00c8
                           0000C9   386 _P51	=	0x00c9
                           0000CA   387 _P52	=	0x00ca
                           0000CB   388 _P53	=	0x00cb
                           0000CC   389 _P54	=	0x00cc
                           0000D7   390 _CY	=	0x00d7
                           0000D6   391 _AC	=	0x00d6
                           0000D5   392 _F0	=	0x00d5
                           0000D4   393 _RS1	=	0x00d4
                           0000D3   394 _RS0	=	0x00d3
                           0000D2   395 _OV	=	0x00d2
                           0000D1   396 _F1	=	0x00d1
                           0000D0   397 _P	=	0x00d0
                                    398 ;--------------------------------------------------------
                                    399 ; overlayable register banks
                                    400 ;--------------------------------------------------------
                                    401 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        402 	.ds 8
                                    403 ;--------------------------------------------------------
                                    404 ; internal ram data
                                    405 ;--------------------------------------------------------
                                    406 	.area DSEG    (DATA)
      000021                        407 _timers::
      000021                        408 	.ds 5
      000026                        409 _key_sem::
      000026                        410 	.ds 2
      000028                        411 _task1_play_flag_65536_24:
      000028                        412 	.ds 1
      000029                        413 _task1__lc_65536_24:
      000029                        414 	.ds 1
      00002A                        415 _task2__lc_65536_37:
      00002A                        416 	.ds 1
                                    417 ;--------------------------------------------------------
                                    418 ; overlayable items in internal ram 
                                    419 ;--------------------------------------------------------
                                    420 ;--------------------------------------------------------
                                    421 ; Stack segment in internal ram 
                                    422 ;--------------------------------------------------------
                                    423 	.area	SSEG
      00002F                        424 __start__stack:
      00002F                        425 	.ds	1
                                    426 
                                    427 ;--------------------------------------------------------
                                    428 ; indirectly addressable internal ram data
                                    429 ;--------------------------------------------------------
                                    430 	.area ISEG    (DATA)
                                    431 ;--------------------------------------------------------
                                    432 ; absolute internal ram data
                                    433 ;--------------------------------------------------------
                                    434 	.area IABS    (ABS,DATA)
                                    435 	.area IABS    (ABS,DATA)
                                    436 ;--------------------------------------------------------
                                    437 ; bit data
                                    438 ;--------------------------------------------------------
                                    439 	.area BSEG    (BIT)
      000000                        440 _MINI_SCH_RUN::
      000000                        441 	.ds 1
                                    442 ;--------------------------------------------------------
                                    443 ; paged external ram data
                                    444 ;--------------------------------------------------------
                                    445 	.area PSEG    (PAG,XDATA)
                                    446 ;--------------------------------------------------------
                                    447 ; external ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area XSEG    (XDATA)
                                    450 ;--------------------------------------------------------
                                    451 ; absolute external ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area XABS    (ABS,XDATA)
                                    454 ;--------------------------------------------------------
                                    455 ; external initialized ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area XISEG   (XDATA)
                                    458 	.area HOME    (CODE)
                                    459 	.area GSINIT0 (CODE)
                                    460 	.area GSINIT1 (CODE)
                                    461 	.area GSINIT2 (CODE)
                                    462 	.area GSINIT3 (CODE)
                                    463 	.area GSINIT4 (CODE)
                                    464 	.area GSINIT5 (CODE)
                                    465 	.area GSINIT  (CODE)
                                    466 	.area GSFINAL (CODE)
                                    467 	.area CSEG    (CODE)
                                    468 ;--------------------------------------------------------
                                    469 ; interrupt vector 
                                    470 ;--------------------------------------------------------
                                    471 	.area HOME    (CODE)
      000000                        472 __interrupt_vect:
      000000 02 00 E1         [24]  473 	ljmp	__sdcc_gsinit_startup
      000003 02 06 35         [24]  474 	ljmp	_INT0_Interrupt
      000006                        475 	.ds	5
      00000B 02 06 39         [24]  476 	ljmp	_TIME0_Interrupt
      00000E                        477 	.ds	5
      000013 02 06 68         [24]  478 	ljmp	_INT1_Interrupt
      000016                        479 	.ds	5
      00001B 02 06 6C         [24]  480 	ljmp	_TIME1_Interrupt
      00001E                        481 	.ds	5
      000023 02 06 90         [24]  482 	ljmp	_UART1_Interrupt
      000026                        483 	.ds	5
      00002B 02 06 70         [24]  484 	ljmp	_ADC_Interrupt
      00002E                        485 	.ds	5
      000033 02 06 74         [24]  486 	ljmp	_LVD_Interrupt
      000036                        487 	.ds	5
      00003B 02 06 78         [24]  488 	ljmp	_PCA_Interrupt
      00003E                        489 	.ds	5
      000043 02 06 7C         [24]  490 	ljmp	_UART2_Interrupt
      000046                        491 	.ds	5
      00004B 02 06 80         [24]  492 	ljmp	_SPI_Interrupt
      00004E                        493 	.ds	5
      000053 02 06 84         [24]  494 	ljmp	_INT2_Interrupt
      000056                        495 	.ds	5
      00005B 02 06 88         [24]  496 	ljmp	_INT3_Interrupt
      00005E                        497 	.ds	5
      000063 02 06 8C         [24]  498 	ljmp	_TIME2_Interrupt
      000066                        499 	.ds	5
      00006B 32               [24]  500 	reti
      00006C                        501 	.ds	7
      000073 32               [24]  502 	reti
      000074                        503 	.ds	7
      00007B 32               [24]  504 	reti
      00007C                        505 	.ds	7
      000083 32               [24]  506 	reti
      000084                        507 	.ds	7
      00008B 32               [24]  508 	reti
      00008C                        509 	.ds	7
      000093 32               [24]  510 	reti
      000094                        511 	.ds	7
      00009B 32               [24]  512 	reti
      00009C                        513 	.ds	7
      0000A3 32               [24]  514 	reti
      0000A4                        515 	.ds	7
      0000AB 32               [24]  516 	reti
      0000AC                        517 	.ds	7
      0000B3 32               [24]  518 	reti
      0000B4                        519 	.ds	7
      0000BB 32               [24]  520 	reti
      0000BC                        521 	.ds	7
      0000C3 32               [24]  522 	reti
      0000C4                        523 	.ds	7
      0000CB 32               [24]  524 	reti
      0000CC                        525 	.ds	7
      0000D3 32               [24]  526 	reti
      0000D4                        527 	.ds	7
      0000DB 02 03 02         [24]  528 	ljmp	_PWM2_Interrupt
                                    529 ;--------------------------------------------------------
                                    530 ; global & static initialisations
                                    531 ;--------------------------------------------------------
                                    532 	.area HOME    (CODE)
                                    533 	.area GSINIT  (CODE)
                                    534 	.area GSFINAL (CODE)
                                    535 	.area GSINIT  (CODE)
                                    536 	.globl __sdcc_gsinit_startup
                                    537 	.globl __sdcc_program_startup
                                    538 	.globl __start__stack
                                    539 	.globl __mcs51_genXINIT
                                    540 	.globl __mcs51_genXRAMCLEAR
                                    541 	.globl __mcs51_genRAMCLEAR
                                    542 ;------------------------------------------------------------
                                    543 ;Allocation info for local variables in function 'task1'
                                    544 ;------------------------------------------------------------
                                    545 ;play_flag                 Allocated with name '_task1_play_flag_65536_24'
                                    546 ;_lc                       Allocated with name '_task1__lc_65536_24'
                                    547 ;------------------------------------------------------------
                                    548 ;	src/main.c:47: static uint8_t play_flag = 0;
      00014F 75 28 00         [24]  549 	mov	_task1_play_flag_65536_24,#0x00
                                    550 ;	src/main.c:48: _SS
      000152 75 29 00         [24]  551 	mov	_task1__lc_65536_24,#0x00
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'task2'
                                    554 ;------------------------------------------------------------
                                    555 ;_lc                       Allocated with name '_task2__lc_65536_37'
                                    556 ;------------------------------------------------------------
                                    557 ;	src/main.c:77: _SS
      000155 75 2A 00         [24]  558 	mov	_task2__lc_65536_37,#0x00
                                    559 ;	src/main.c:7: bit MINI_SCH_RUN = 1;
                                    560 ;	assignBit
      000158 D2 00            [12]  561 	setb	_MINI_SCH_RUN
                                    562 	.area GSFINAL (CODE)
      000165 02 00 DE         [24]  563 	ljmp	__sdcc_program_startup
                                    564 ;--------------------------------------------------------
                                    565 ; Home
                                    566 ;--------------------------------------------------------
                                    567 	.area HOME    (CODE)
                                    568 	.area HOME    (CODE)
      0000DE                        569 __sdcc_program_startup:
      0000DE 02 05 F0         [24]  570 	ljmp	_main
                                    571 ;	return from main will return to caller
                                    572 ;--------------------------------------------------------
                                    573 ; code
                                    574 ;--------------------------------------------------------
                                    575 	.area CSEG    (CODE)
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function 'MiniSch_Init'
                                    578 ;------------------------------------------------------------
                                    579 ;	src/main.c:12: void MiniSch_Init(void)
                                    580 ;	-----------------------------------------
                                    581 ;	 function MiniSch_Init
                                    582 ;	-----------------------------------------
      0004ED                        583 _MiniSch_Init:
                           000007   584 	ar7 = 0x07
                           000006   585 	ar6 = 0x06
                           000005   586 	ar5 = 0x05
                           000004   587 	ar4 = 0x04
                           000003   588 	ar3 = 0x03
                           000002   589 	ar2 = 0x02
                           000001   590 	ar1 = 0x01
                           000000   591 	ar0 = 0x00
                                    592 ;	src/main.c:14: AUXR = 0x00;	
      0004ED 75 8E 00         [24]  593 	mov	_AUXR,#0x00
                                    594 ;	src/main.c:15: SCON = 0x50;	
      0004F0 75 98 50         [24]  595 	mov	_SCON,#0x50
                                    596 ;	src/main.c:16: TL1 = 0xFC;		//115200
      0004F3 75 8B FC         [24]  597 	mov	_TL1,#0xfc
                                    598 ;	src/main.c:17: TH1 = 0xFF;
      0004F6 75 8D FF         [24]  599 	mov	_TH1,#0xff
                                    600 ;	src/main.c:18: TR1 = 1;
                                    601 ;	assignBit
      0004F9 D2 8E            [12]  602 	setb	_TR1
                                    603 ;	src/main.c:20: TMOD = 0x00;	//time0 sch, time1 uart
      0004FB 75 89 00         [24]  604 	mov	_TMOD,#0x00
                                    605 ;	src/main.c:21: IE   = 0x92;  	//ea = 1, et0 = 1
      0004FE 75 A8 92         [24]  606 	mov	_IE,#0x92
                                    607 ;	src/main.c:22: TL0  = 0xCD;
      000501 75 8A CD         [24]  608 	mov	_TL0,#0xcd
                                    609 ;	src/main.c:23: TH0  = 0xF8;
      000504 75 8C F8         [24]  610 	mov	_TH0,#0xf8
                                    611 ;	src/main.c:24: TR0  = 1;
                                    612 ;	assignBit
      000507 D2 8C            [12]  613 	setb	_TR0
                                    614 ;	src/main.c:25: }
      000509 22               [24]  615 	ret
                                    616 ;------------------------------------------------------------
                                    617 ;Allocation info for local variables in function 'CPU_Init'
                                    618 ;------------------------------------------------------------
                                    619 ;	src/main.c:27: void CPU_Init(void)
                                    620 ;	-----------------------------------------
                                    621 ;	 function CPU_Init
                                    622 ;	-----------------------------------------
      00050A                        623 _CPU_Init:
                                    624 ;	src/main.c:29: WDT_CONTR = 0x26;	//wdt 2s.
      00050A 75 C1 26         [24]  625 	mov	_WDT_CONTR,#0x26
                                    626 ;	src/main.c:30: WDT_CONTR = 0x36;	//clear wdt.
      00050D 75 C1 36         [24]  627 	mov	_WDT_CONTR,#0x36
                                    628 ;	src/main.c:32: P1   = 0x00;
      000510 75 90 00         [24]  629 	mov	_P1,#0x00
                                    630 ;	src/main.c:33: P1M0 = 0xff;
      000513 75 92 FF         [24]  631 	mov	_P1M0,#0xff
                                    632 ;	src/main.c:34: P1M1 = 0x00;
      000516 75 91 00         [24]  633 	mov	_P1M1,#0x00
                                    634 ;	src/main.c:36: P3   = 0x0f;
      000519 75 B0 0F         [24]  635 	mov	_P3,#0x0f
                                    636 ;	src/main.c:37: P3M0 = 0xf2;
      00051C 75 B2 F2         [24]  637 	mov	_P3M0,#0xf2
                                    638 ;	src/main.c:38: P3M1 = 0x00;
      00051F 75 B1 00         [24]  639 	mov	_P3M1,#0x00
                                    640 ;	src/main.c:40: P5   = 0x00;
      000522 75 C8 00         [24]  641 	mov	_P5,#0x00
                                    642 ;	src/main.c:41: P5M0 = 0x00;
      000525 75 CA 00         [24]  643 	mov	_P5M0,#0x00
                                    644 ;	src/main.c:42: P5M1 = 0x00;
      000528 75 C9 00         [24]  645 	mov	_P5M1,#0x00
                                    646 ;	src/main.c:43: }
      00052B 22               [24]  647 	ret
                                    648 ;------------------------------------------------------------
                                    649 ;Allocation info for local variables in function 'task1'
                                    650 ;------------------------------------------------------------
                                    651 ;play_flag                 Allocated with name '_task1_play_flag_65536_24'
                                    652 ;_lc                       Allocated with name '_task1__lc_65536_24'
                                    653 ;------------------------------------------------------------
                                    654 ;	src/main.c:45: uint8_t task1(void)
                                    655 ;	-----------------------------------------
                                    656 ;	 function task1
                                    657 ;	-----------------------------------------
      00052C                        658 _task1:
                                    659 ;	src/main.c:48: _SS
      00052C 74 36            [12]  660 	mov	a,#0x36
      00052E B5 29 02         [24]  661 	cjne	a,_task1__lc_65536_24,00184$
      000531 80 1E            [24]  662 	sjmp	00104$
      000533                        663 00184$:
      000533 74 3F            [12]  664 	mov	a,#0x3f
      000535 B5 29 02         [24]  665 	cjne	a,_task1__lc_65536_24,00185$
      000538 80 3A            [24]  666 	sjmp	00125$
      00053A                        667 00185$:
      00053A 74 43            [12]  668 	mov	a,#0x43
      00053C B5 29 02         [24]  669 	cjne	a,_task1__lc_65536_24,00186$
      00053F 80 4C            [24]  670 	sjmp	00120$
      000541                        671 00186$:
                                    672 ;	src/main.c:50: pwm_init();
      000541 12 02 C7         [24]  673 	lcall	_pwm_init
                                    674 ;	src/main.c:51: while(MINI_SCH_RUN)
      000544                        675 00130$:
      000544 30 00 4B         [24]  676 	jnb	_MINI_SCH_RUN,00133$
                                    677 ;	src/main.c:53: Sem_Take(key_sem, 0xff);
      000547 75 26 FF         [24]  678 	mov	_key_sem,#0xff
      00054A 75 29 36         [24]  679 	mov	_task1__lc_65536_24,#0x36
      00054D 75 82 00         [24]  680 	mov	dpl,#0x00
      000550 22               [24]  681 	ret
      000551                        682 00104$:
      000551 E5 26            [12]  683 	mov	a,_key_sem
      000553 60 13            [24]  684 	jz	00112$
      000555 E5 27            [12]  685 	mov	a,(_key_sem + 0x0001)
      000557 70 0F            [24]  686 	jnz	00112$
      000559 AF 26            [24]  687 	mov	r7,_key_sem
      00055B BF FF 02         [24]  688 	cjne	r7,#0xff,00190$
      00055E 80 04            [24]  689 	sjmp	00107$
      000560                        690 00190$:
      000560 EF               [12]  691 	mov	a,r7
      000561 14               [12]  692 	dec	a
      000562 F5 26            [12]  693 	mov	_key_sem,a
      000564                        694 00107$:
      000564 75 82 01         [24]  695 	mov	dpl,#0x01
      000567 22               [24]  696 	ret
      000568                        697 00112$:
                                    698 ;	src/main.c:54: if(key_sem.sem_value)
      000568 E5 27            [12]  699 	mov	a,(_key_sem + 0x0001)
      00056A FF               [12]  700 	mov	r7,a
      00056B 60 D7            [24]  701 	jz	00130$
                                    702 ;	src/main.c:56: key_sem.sem_value--;
      00056D EF               [12]  703 	mov	a,r7
      00056E 14               [12]  704 	dec	a
      00056F F5 27            [12]  705 	mov	(_key_sem + 0x0001),a
                                    706 ;	src/main.c:57: play_flag = 1;
      000571 75 28 01         [24]  707 	mov	_task1_play_flag_65536_24,#0x01
                                    708 ;	src/main.c:58: while(play_flag)
      000574                        709 00125$:
      000574 E5 28            [12]  710 	mov	a,_task1_play_flag_65536_24
      000576 60 CC            [24]  711 	jz	00130$
                                    712 ;	src/main.c:60: if(dac_send())  //返回为1时表示需要继续填充数据
      000578 12 03 54         [24]  713 	lcall	_dac_send
      00057B E5 82            [12]  714 	mov	a,dpl
      00057D 60 07            [24]  715 	jz	00119$
                                    716 ;	src/main.c:62: WaitX(10);
      00057F 75 29 3F         [24]  717 	mov	_task1__lc_65536_24,#0x3f
      000582 75 82 0A         [24]  718 	mov	dpl,#0x0a
                                    719 ;	src/main.c:66: WaitX(200);
      000585 22               [24]  720 	ret
      000586                        721 00119$:
      000586 75 29 43         [24]  722 	mov	_task1__lc_65536_24,#0x43
      000589 75 82 C8         [24]  723 	mov	dpl,#0xc8
      00058C 22               [24]  724 	ret
      00058D                        725 00120$:
                                    726 ;	src/main.c:67: play_flag = 0;
      00058D 75 28 00         [24]  727 	mov	_task1_play_flag_65536_24,#0x00
                                    728 ;	src/main.c:72: _EE
      000590 80 E2            [24]  729 	sjmp	00125$
      000592                        730 00133$:
      000592 75 29 00         [24]  731 	mov	_task1__lc_65536_24,#0x00
      000595 75 82 FF         [24]  732 	mov	dpl,#0xff
                                    733 ;	src/main.c:73: }
      000598 22               [24]  734 	ret
                                    735 ;------------------------------------------------------------
                                    736 ;Allocation info for local variables in function 'task2'
                                    737 ;------------------------------------------------------------
                                    738 ;_lc                       Allocated with name '_task2__lc_65536_37'
                                    739 ;------------------------------------------------------------
                                    740 ;	src/main.c:75: uint8_t task2(void)
                                    741 ;	-----------------------------------------
                                    742 ;	 function task2
                                    743 ;	-----------------------------------------
      000599                        744 _task2:
                                    745 ;	src/main.c:77: _SS
      000599 74 52            [12]  746 	mov	a,#0x52
      00059B B5 2A 02         [24]  747 	cjne	a,_task2__lc_65536_37,00170$
      00059E 80 22            [24]  748 	sjmp	00104$
      0005A0                        749 00170$:
      0005A0 74 55            [12]  750 	mov	a,#0x55
      0005A2 B5 2A 02         [24]  751 	cjne	a,_task2__lc_65536_37,00171$
      0005A5 80 25            [24]  752 	sjmp	00108$
      0005A7                        753 00171$:
      0005A7 74 5C            [12]  754 	mov	a,#0x5c
      0005A9 B5 2A 02         [24]  755 	cjne	a,_task2__lc_65536_37,00172$
      0005AC 80 2A            [24]  756 	sjmp	00114$
      0005AE                        757 00172$:
      0005AE 74 5D            [12]  758 	mov	a,#0x5d
      0005B0 B5 2A 02         [24]  759 	cjne	a,_task2__lc_65536_37,00173$
      0005B3 80 20            [24]  760 	sjmp	00121$
      0005B5                        761 00173$:
                                    762 ;	src/main.c:78: Sem_Init(key_sem, 0);
      0005B5 75 27 00         [24]  763 	mov	(_key_sem + 0x0001),#0x00
                                    764 ;	src/main.c:79: while(MINI_SCH_RUN)
      0005B8                        765 00128$:
      0005B8 30 00 2E         [24]  766 	jnb	_MINI_SCH_RUN,00131$
                                    767 ;	src/main.c:81: WaitX(10);
      0005BB 75 2A 52         [24]  768 	mov	_task2__lc_65536_37,#0x52
      0005BE 75 82 0A         [24]  769 	mov	dpl,#0x0a
      0005C1 22               [24]  770 	ret
      0005C2                        771 00104$:
                                    772 ;	src/main.c:82: if(P33 == 0)
      0005C2 20 B3 F3         [24]  773 	jb	_P33,00128$
                                    774 ;	src/main.c:84: WaitX(20);
      0005C5 75 2A 55         [24]  775 	mov	_task2__lc_65536_37,#0x55
      0005C8 75 82 14         [24]  776 	mov	dpl,#0x14
      0005CB 22               [24]  777 	ret
      0005CC                        778 00108$:
                                    779 ;	src/main.c:85: if(P33 == 0)
      0005CC 20 B3 E9         [24]  780 	jb	_P33,00128$
                                    781 ;	src/main.c:87: Sem_Release(key_sem);
      0005CF E5 27            [12]  782 	mov	a,(_key_sem + 0x0001)
      0005D1 FF               [12]  783 	mov	r7,a
      0005D2 04               [12]  784 	inc	a
      0005D3 F5 27            [12]  785 	mov	(_key_sem + 0x0001),a
                                    786 ;	src/main.c:88: while(P33 == 0)
      0005D5                        787 00121$:
      0005D5 20 B3 E0         [24]  788 	jb	_P33,00128$
                                    789 ;	src/main.c:90: while(P33 == 0)
      0005D8                        790 00114$:
      0005D8 20 B3 07         [24]  791 	jb	_P33,00118$
                                    792 ;	src/main.c:91: WaitX(20);
      0005DB 75 2A 5C         [24]  793 	mov	_task2__lc_65536_37,#0x5c
      0005DE 75 82 14         [24]  794 	mov	dpl,#0x14
                                    795 ;	src/main.c:92: WaitX(20);
      0005E1 22               [24]  796 	ret
      0005E2                        797 00118$:
      0005E2 75 2A 5D         [24]  798 	mov	_task2__lc_65536_37,#0x5d
      0005E5 75 82 14         [24]  799 	mov	dpl,#0x14
                                    800 ;	src/main.c:97: _EE
      0005E8 22               [24]  801 	ret
      0005E9                        802 00131$:
      0005E9 75 2A 00         [24]  803 	mov	_task2__lc_65536_37,#0x00
      0005EC 75 82 FF         [24]  804 	mov	dpl,#0xff
                                    805 ;	src/main.c:98: }
      0005EF 22               [24]  806 	ret
                                    807 ;------------------------------------------------------------
                                    808 ;Allocation info for local variables in function 'main'
                                    809 ;------------------------------------------------------------
                                    810 ;i                         Allocated to registers r7 
                                    811 ;d                         Allocated to registers r7 
                                    812 ;d                         Allocated to registers r7 
                                    813 ;------------------------------------------------------------
                                    814 ;	src/main.c:100: void main(void)
                                    815 ;	-----------------------------------------
                                    816 ;	 function main
                                    817 ;	-----------------------------------------
      0005F0                        818 _main:
                                    819 ;	src/main.c:102: InitTasks();
      0005F0 7F 05            [12]  820 	mov	r7,#0x05
      0005F2                        821 00124$:
      0005F2 8F 06            [24]  822 	mov	ar6,r7
      0005F4 EE               [12]  823 	mov	a,r6
      0005F5 14               [12]  824 	dec	a
      0005F6 24 21            [12]  825 	add	a,#_timers
      0005F8 F8               [12]  826 	mov	r0,a
      0005F9 76 00            [12]  827 	mov	@r0,#0x00
      0005FB DF F5            [24]  828 	djnz	r7,00124$
                                    829 ;	src/main.c:103: CPU_Init();
      0005FD 12 05 0A         [24]  830 	lcall	_CPU_Init
                                    831 ;	src/main.c:104: MiniSch_Init();
      000600 12 04 ED         [24]  832 	lcall	_MiniSch_Init
                                    833 ;	src/main.c:105: printf("start up!\n");
      000603 90 15 F0         [24]  834 	mov	dptr,#___str_0
      000606 75 F0 80         [24]  835 	mov	b,#0x80
      000609 12 06 E4         [24]  836 	lcall	_printf
                                    837 ;	src/main.c:106: while(1)
      00060C                        838 00122$:
                                    839 ;	src/main.c:108: WDT_CONTR = 0x36;
      00060C 75 C1 36         [24]  840 	mov	_WDT_CONTR,#0x36
                                    841 ;	src/main.c:109: RunTaskA(task1, 0);
      00060F E5 21            [12]  842 	mov	a,_timers
      000611 70 0F            [24]  843 	jnz	00112$
      000613 12 05 2C         [24]  844 	lcall	_task1
      000616 AF 82            [24]  845 	mov	r7,dpl
      000618                        846 00105$:
      000618 EF               [12]  847 	mov	a,r7
      000619 B5 21 02         [24]  848 	cjne	a,_timers,00169$
      00061C 80 04            [24]  849 	sjmp	00112$
      00061E                        850 00169$:
      00061E 8F 21            [24]  851 	mov	_timers,r7
      000620 80 F6            [24]  852 	sjmp	00105$
      000622                        853 00112$:
                                    854 ;	src/main.c:110: RunTaskA(task2, 1);
      000622 E5 22            [12]  855 	mov	a,(_timers + 0x0001)
      000624 70 E6            [24]  856 	jnz	00122$
      000626 12 05 99         [24]  857 	lcall	_task2
      000629 AF 82            [24]  858 	mov	r7,dpl
      00062B                        859 00113$:
      00062B EF               [12]  860 	mov	a,r7
      00062C B5 22 02         [24]  861 	cjne	a,(_timers + 0x0001),00171$
      00062F 80 DB            [24]  862 	sjmp	00122$
      000631                        863 00171$:
      000631 8F 22            [24]  864 	mov	(_timers + 0x0001),r7
                                    865 ;	src/main.c:112: }
      000633 80 F6            [24]  866 	sjmp	00113$
                                    867 	.area CSEG    (CODE)
                                    868 	.area CONST   (CODE)
                                    869 	.area CONST   (CODE)
      0015F0                        870 ___str_0:
      0015F0 73 74 61 72 74 20 75   871 	.ascii "start up!"
             70 21
      0015F9 0A                     872 	.db 0x0a
      0015FA 00                     873 	.db 0x00
                                    874 	.area CSEG    (CODE)
                                    875 	.area XINIT   (CODE)
                                    876 	.area CABS    (ABS,CODE)
