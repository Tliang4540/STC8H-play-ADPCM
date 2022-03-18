                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module interrupt_handled
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIME2_Interrupt
                                     12 	.globl _INT3_Interrupt
                                     13 	.globl _INT2_Interrupt
                                     14 	.globl _SPI_Interrupt
                                     15 	.globl _UART2_Interrupt
                                     16 	.globl _PCA_Interrupt
                                     17 	.globl _LVD_Interrupt
                                     18 	.globl _ADC_Interrupt
                                     19 	.globl _TIME1_Interrupt
                                     20 	.globl _INT1_Interrupt
                                     21 	.globl _TIME0_Interrupt
                                     22 	.globl _INT0_Interrupt
                                     23 	.globl _P
                                     24 	.globl _F1
                                     25 	.globl _OV
                                     26 	.globl _RS0
                                     27 	.globl _RS1
                                     28 	.globl _F0
                                     29 	.globl _AC
                                     30 	.globl _CY
                                     31 	.globl _P54
                                     32 	.globl _P53
                                     33 	.globl _P52
                                     34 	.globl _P51
                                     35 	.globl _P50
                                     36 	.globl _P47
                                     37 	.globl _P46
                                     38 	.globl _P45
                                     39 	.globl _P44
                                     40 	.globl _P43
                                     41 	.globl _P42
                                     42 	.globl _P41
                                     43 	.globl _P40
                                     44 	.globl _PX0
                                     45 	.globl _PT0
                                     46 	.globl _PX1
                                     47 	.globl _PT1
                                     48 	.globl _PS
                                     49 	.globl _PADC
                                     50 	.globl _PLVD
                                     51 	.globl _PPCA
                                     52 	.globl _P37
                                     53 	.globl _P36
                                     54 	.globl _P35
                                     55 	.globl _P34
                                     56 	.globl _P33
                                     57 	.globl _P32
                                     58 	.globl _P31
                                     59 	.globl _P30
                                     60 	.globl _EX0
                                     61 	.globl _ET0
                                     62 	.globl _EX1
                                     63 	.globl _ET1
                                     64 	.globl _ES
                                     65 	.globl _EADC
                                     66 	.globl _ELVD
                                     67 	.globl _EA
                                     68 	.globl _P27
                                     69 	.globl _P26
                                     70 	.globl _P25
                                     71 	.globl _P24
                                     72 	.globl _P23
                                     73 	.globl _P22
                                     74 	.globl _P21
                                     75 	.globl _P20
                                     76 	.globl _RI
                                     77 	.globl _TI
                                     78 	.globl _RB8
                                     79 	.globl _TB8
                                     80 	.globl _REN
                                     81 	.globl _SM2
                                     82 	.globl _SM1
                                     83 	.globl _SM0
                                     84 	.globl _P17
                                     85 	.globl _P16
                                     86 	.globl _P15
                                     87 	.globl _P14
                                     88 	.globl _P13
                                     89 	.globl _P12
                                     90 	.globl _P11
                                     91 	.globl _P10
                                     92 	.globl _IT0
                                     93 	.globl _IE0
                                     94 	.globl _IT1
                                     95 	.globl _IE1
                                     96 	.globl _TR0
                                     97 	.globl _TF0
                                     98 	.globl _TR1
                                     99 	.globl _TF1
                                    100 	.globl _P07
                                    101 	.globl _P06
                                    102 	.globl _P05
                                    103 	.globl _P04
                                    104 	.globl _P03
                                    105 	.globl _P02
                                    106 	.globl _P01
                                    107 	.globl _P00
                                    108 	.globl _RSTCFG
                                    109 	.globl _USBADR
                                    110 	.globl _P7
                                    111 	.globl _IAP_TPS
                                    112 	.globl _USBCON
                                    113 	.globl _B
                                    114 	.globl _AUXINTIF
                                    115 	.globl _IP3H
                                    116 	.globl _USBDAT
                                    117 	.globl _P6
                                    118 	.globl _CMPCR2
                                    119 	.globl _CMPCR1
                                    120 	.globl _DPH1
                                    121 	.globl _DPL1
                                    122 	.globl _DPS
                                    123 	.globl _P7M0
                                    124 	.globl _P7M1
                                    125 	.globl _ACC
                                    126 	.globl _IP3
                                    127 	.globl _ADCCFG
                                    128 	.globl _USBCLK
                                    129 	.globl _T2L
                                    130 	.globl _T2H
                                    131 	.globl _T3L
                                    132 	.globl _T3H
                                    133 	.globl _T4L
                                    134 	.globl _T4H
                                    135 	.globl _T4T3M
                                    136 	.globl _PSW
                                    137 	.globl _SPDAT
                                    138 	.globl _SPCTL
                                    139 	.globl _SPSTAT
                                    140 	.globl _P6M0
                                    141 	.globl _P6M1
                                    142 	.globl _P5M0
                                    143 	.globl _P5M1
                                    144 	.globl _P5
                                    145 	.globl _IAP_CONTR
                                    146 	.globl _IAP_TRIG
                                    147 	.globl _IAP_CMD
                                    148 	.globl _IAP_ADDRL
                                    149 	.globl _IAP_ADDRH
                                    150 	.globl _IAP_DATA
                                    151 	.globl _WDT_CONTR
                                    152 	.globl _P4
                                    153 	.globl _ADC_RESL
                                    154 	.globl _ADC_RES
                                    155 	.globl _ADC_CONTR
                                    156 	.globl _P_SW2
                                    157 	.globl _SADEN
                                    158 	.globl _IP
                                    159 	.globl _IPH
                                    160 	.globl _IP2H
                                    161 	.globl _IP2
                                    162 	.globl _P4M0
                                    163 	.globl _P4M1
                                    164 	.globl _P3M0
                                    165 	.globl _P3M1
                                    166 	.globl _P3
                                    167 	.globl _IE2
                                    168 	.globl _TA
                                    169 	.globl _S3BUF
                                    170 	.globl _S3CON
                                    171 	.globl _WKTCH
                                    172 	.globl _WKTCL
                                    173 	.globl _SADDR
                                    174 	.globl _IE
                                    175 	.globl _P_SW1
                                    176 	.globl _P2
                                    177 	.globl _IRTRIM
                                    178 	.globl _LIRTRIM
                                    179 	.globl _IRCBAND
                                    180 	.globl _S2BUF
                                    181 	.globl _S2CON
                                    182 	.globl _SBUF
                                    183 	.globl _SCON
                                    184 	.globl _P2M0
                                    185 	.globl _P2M1
                                    186 	.globl _P0M0
                                    187 	.globl _P0M1
                                    188 	.globl _P1M0
                                    189 	.globl _P1M1
                                    190 	.globl _P1
                                    191 	.globl _INTCLKO
                                    192 	.globl _AUXR
                                    193 	.globl _TH1
                                    194 	.globl _TH0
                                    195 	.globl _TL1
                                    196 	.globl _TL0
                                    197 	.globl _TMOD
                                    198 	.globl _TCON
                                    199 	.globl _PCON
                                    200 	.globl _S4BUF
                                    201 	.globl _S4CON
                                    202 	.globl _DPH
                                    203 	.globl _DPL
                                    204 	.globl _SP
                                    205 	.globl _P0
                                    206 ;--------------------------------------------------------
                                    207 ; special function registers
                                    208 ;--------------------------------------------------------
                                    209 	.area RSEG    (ABS,DATA)
      000000                        210 	.org 0x0000
                           000080   211 _P0	=	0x0080
                           000081   212 _SP	=	0x0081
                           000082   213 _DPL	=	0x0082
                           000083   214 _DPH	=	0x0083
                           000084   215 _S4CON	=	0x0084
                           000085   216 _S4BUF	=	0x0085
                           000087   217 _PCON	=	0x0087
                           000088   218 _TCON	=	0x0088
                           000089   219 _TMOD	=	0x0089
                           00008A   220 _TL0	=	0x008a
                           00008B   221 _TL1	=	0x008b
                           00008C   222 _TH0	=	0x008c
                           00008D   223 _TH1	=	0x008d
                           00008E   224 _AUXR	=	0x008e
                           00008F   225 _INTCLKO	=	0x008f
                           000090   226 _P1	=	0x0090
                           000091   227 _P1M1	=	0x0091
                           000092   228 _P1M0	=	0x0092
                           000093   229 _P0M1	=	0x0093
                           000094   230 _P0M0	=	0x0094
                           000095   231 _P2M1	=	0x0095
                           000096   232 _P2M0	=	0x0096
                           000098   233 _SCON	=	0x0098
                           000099   234 _SBUF	=	0x0099
                           00009A   235 _S2CON	=	0x009a
                           00009B   236 _S2BUF	=	0x009b
                           00009D   237 _IRCBAND	=	0x009d
                           00009E   238 _LIRTRIM	=	0x009e
                           00009F   239 _IRTRIM	=	0x009f
                           0000A0   240 _P2	=	0x00a0
                           0000A2   241 _P_SW1	=	0x00a2
                           0000A8   242 _IE	=	0x00a8
                           0000A9   243 _SADDR	=	0x00a9
                           0000AA   244 _WKTCL	=	0x00aa
                           0000AB   245 _WKTCH	=	0x00ab
                           0000AC   246 _S3CON	=	0x00ac
                           0000AD   247 _S3BUF	=	0x00ad
                           0000AE   248 _TA	=	0x00ae
                           0000AF   249 _IE2	=	0x00af
                           0000B0   250 _P3	=	0x00b0
                           0000B1   251 _P3M1	=	0x00b1
                           0000B2   252 _P3M0	=	0x00b2
                           0000B3   253 _P4M1	=	0x00b3
                           0000B4   254 _P4M0	=	0x00b4
                           0000B5   255 _IP2	=	0x00b5
                           0000B6   256 _IP2H	=	0x00b6
                           0000B7   257 _IPH	=	0x00b7
                           0000B8   258 _IP	=	0x00b8
                           0000B9   259 _SADEN	=	0x00b9
                           0000BA   260 _P_SW2	=	0x00ba
                           0000BC   261 _ADC_CONTR	=	0x00bc
                           0000BD   262 _ADC_RES	=	0x00bd
                           0000BE   263 _ADC_RESL	=	0x00be
                           0000C0   264 _P4	=	0x00c0
                           0000C1   265 _WDT_CONTR	=	0x00c1
                           0000C2   266 _IAP_DATA	=	0x00c2
                           0000C3   267 _IAP_ADDRH	=	0x00c3
                           0000C4   268 _IAP_ADDRL	=	0x00c4
                           0000C5   269 _IAP_CMD	=	0x00c5
                           0000C6   270 _IAP_TRIG	=	0x00c6
                           0000C7   271 _IAP_CONTR	=	0x00c7
                           0000C8   272 _P5	=	0x00c8
                           0000C9   273 _P5M1	=	0x00c9
                           0000CA   274 _P5M0	=	0x00ca
                           0000CB   275 _P6M1	=	0x00cb
                           0000CC   276 _P6M0	=	0x00cc
                           0000CD   277 _SPSTAT	=	0x00cd
                           0000CE   278 _SPCTL	=	0x00ce
                           0000CF   279 _SPDAT	=	0x00cf
                           0000D0   280 _PSW	=	0x00d0
                           0000D1   281 _T4T3M	=	0x00d1
                           0000D2   282 _T4H	=	0x00d2
                           0000D3   283 _T4L	=	0x00d3
                           0000D4   284 _T3H	=	0x00d4
                           0000D5   285 _T3L	=	0x00d5
                           0000D6   286 _T2H	=	0x00d6
                           0000D7   287 _T2L	=	0x00d7
                           0000DC   288 _USBCLK	=	0x00dc
                           0000DE   289 _ADCCFG	=	0x00de
                           0000DF   290 _IP3	=	0x00df
                           0000E0   291 _ACC	=	0x00e0
                           0000E1   292 _P7M1	=	0x00e1
                           0000E2   293 _P7M0	=	0x00e2
                           0000E3   294 _DPS	=	0x00e3
                           0000E4   295 _DPL1	=	0x00e4
                           0000E5   296 _DPH1	=	0x00e5
                           0000E6   297 _CMPCR1	=	0x00e6
                           0000E7   298 _CMPCR2	=	0x00e7
                           0000E8   299 _P6	=	0x00e8
                           0000EC   300 _USBDAT	=	0x00ec
                           0000EE   301 _IP3H	=	0x00ee
                           0000EF   302 _AUXINTIF	=	0x00ef
                           0000F0   303 _B	=	0x00f0
                           0000F4   304 _USBCON	=	0x00f4
                           0000F5   305 _IAP_TPS	=	0x00f5
                           0000F8   306 _P7	=	0x00f8
                           0000FC   307 _USBADR	=	0x00fc
                           0000FF   308 _RSTCFG	=	0x00ff
                                    309 ;--------------------------------------------------------
                                    310 ; special function bits
                                    311 ;--------------------------------------------------------
                                    312 	.area RSEG    (ABS,DATA)
      000000                        313 	.org 0x0000
                           000080   314 _P00	=	0x0080
                           000081   315 _P01	=	0x0081
                           000082   316 _P02	=	0x0082
                           000083   317 _P03	=	0x0083
                           000084   318 _P04	=	0x0084
                           000085   319 _P05	=	0x0085
                           000086   320 _P06	=	0x0086
                           000087   321 _P07	=	0x0087
                           00008F   322 _TF1	=	0x008f
                           00008E   323 _TR1	=	0x008e
                           00008D   324 _TF0	=	0x008d
                           00008C   325 _TR0	=	0x008c
                           00008B   326 _IE1	=	0x008b
                           00008A   327 _IT1	=	0x008a
                           000089   328 _IE0	=	0x0089
                           000088   329 _IT0	=	0x0088
                           000090   330 _P10	=	0x0090
                           000091   331 _P11	=	0x0091
                           000092   332 _P12	=	0x0092
                           000093   333 _P13	=	0x0093
                           000094   334 _P14	=	0x0094
                           000095   335 _P15	=	0x0095
                           000096   336 _P16	=	0x0096
                           000097   337 _P17	=	0x0097
                           00009F   338 _SM0	=	0x009f
                           00009E   339 _SM1	=	0x009e
                           00009D   340 _SM2	=	0x009d
                           00009C   341 _REN	=	0x009c
                           00009B   342 _TB8	=	0x009b
                           00009A   343 _RB8	=	0x009a
                           000099   344 _TI	=	0x0099
                           000098   345 _RI	=	0x0098
                           0000A0   346 _P20	=	0x00a0
                           0000A1   347 _P21	=	0x00a1
                           0000A2   348 _P22	=	0x00a2
                           0000A3   349 _P23	=	0x00a3
                           0000A4   350 _P24	=	0x00a4
                           0000A5   351 _P25	=	0x00a5
                           0000A6   352 _P26	=	0x00a6
                           0000A7   353 _P27	=	0x00a7
                           0000AF   354 _EA	=	0x00af
                           0000AE   355 _ELVD	=	0x00ae
                           0000AD   356 _EADC	=	0x00ad
                           0000AC   357 _ES	=	0x00ac
                           0000AB   358 _ET1	=	0x00ab
                           0000AA   359 _EX1	=	0x00aa
                           0000A9   360 _ET0	=	0x00a9
                           0000A8   361 _EX0	=	0x00a8
                           0000B0   362 _P30	=	0x00b0
                           0000B1   363 _P31	=	0x00b1
                           0000B2   364 _P32	=	0x00b2
                           0000B3   365 _P33	=	0x00b3
                           0000B4   366 _P34	=	0x00b4
                           0000B5   367 _P35	=	0x00b5
                           0000B6   368 _P36	=	0x00b6
                           0000B7   369 _P37	=	0x00b7
                           0000BF   370 _PPCA	=	0x00bf
                           0000BE   371 _PLVD	=	0x00be
                           0000BD   372 _PADC	=	0x00bd
                           0000BC   373 _PS	=	0x00bc
                           0000BB   374 _PT1	=	0x00bb
                           0000BA   375 _PX1	=	0x00ba
                           0000B9   376 _PT0	=	0x00b9
                           0000B8   377 _PX0	=	0x00b8
                           0000C0   378 _P40	=	0x00c0
                           0000C1   379 _P41	=	0x00c1
                           0000C2   380 _P42	=	0x00c2
                           0000C3   381 _P43	=	0x00c3
                           0000C4   382 _P44	=	0x00c4
                           0000C5   383 _P45	=	0x00c5
                           0000C6   384 _P46	=	0x00c6
                           0000C7   385 _P47	=	0x00c7
                           0000C8   386 _P50	=	0x00c8
                           0000C9   387 _P51	=	0x00c9
                           0000CA   388 _P52	=	0x00ca
                           0000CB   389 _P53	=	0x00cb
                           0000CC   390 _P54	=	0x00cc
                           0000D7   391 _CY	=	0x00d7
                           0000D6   392 _AC	=	0x00d6
                           0000D5   393 _F0	=	0x00d5
                           0000D4   394 _RS1	=	0x00d4
                           0000D3   395 _RS0	=	0x00d3
                           0000D2   396 _OV	=	0x00d2
                           0000D1   397 _F1	=	0x00d1
                           0000D0   398 _P	=	0x00d0
                                    399 ;--------------------------------------------------------
                                    400 ; overlayable register banks
                                    401 ;--------------------------------------------------------
                                    402 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        403 	.ds 8
                                    404 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        405 	.ds 8
                                    406 ;--------------------------------------------------------
                                    407 ; internal ram data
                                    408 ;--------------------------------------------------------
                                    409 	.area DSEG    (DATA)
                                    410 ;--------------------------------------------------------
                                    411 ; overlayable items in internal ram 
                                    412 ;--------------------------------------------------------
                                    413 ;--------------------------------------------------------
                                    414 ; indirectly addressable internal ram data
                                    415 ;--------------------------------------------------------
                                    416 	.area ISEG    (DATA)
                                    417 ;--------------------------------------------------------
                                    418 ; absolute internal ram data
                                    419 ;--------------------------------------------------------
                                    420 	.area IABS    (ABS,DATA)
                                    421 	.area IABS    (ABS,DATA)
                                    422 ;--------------------------------------------------------
                                    423 ; bit data
                                    424 ;--------------------------------------------------------
                                    425 	.area BSEG    (BIT)
                                    426 ;--------------------------------------------------------
                                    427 ; paged external ram data
                                    428 ;--------------------------------------------------------
                                    429 	.area PSEG    (PAG,XDATA)
                                    430 ;--------------------------------------------------------
                                    431 ; external ram data
                                    432 ;--------------------------------------------------------
                                    433 	.area XSEG    (XDATA)
                                    434 ;--------------------------------------------------------
                                    435 ; absolute external ram data
                                    436 ;--------------------------------------------------------
                                    437 	.area XABS    (ABS,XDATA)
                                    438 ;--------------------------------------------------------
                                    439 ; external initialized ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area XISEG   (XDATA)
                                    442 	.area HOME    (CODE)
                                    443 	.area GSINIT0 (CODE)
                                    444 	.area GSINIT1 (CODE)
                                    445 	.area GSINIT2 (CODE)
                                    446 	.area GSINIT3 (CODE)
                                    447 	.area GSINIT4 (CODE)
                                    448 	.area GSINIT5 (CODE)
                                    449 	.area GSINIT  (CODE)
                                    450 	.area GSFINAL (CODE)
                                    451 	.area CSEG    (CODE)
                                    452 ;--------------------------------------------------------
                                    453 ; global & static initialisations
                                    454 ;--------------------------------------------------------
                                    455 	.area HOME    (CODE)
                                    456 	.area GSINIT  (CODE)
                                    457 	.area GSFINAL (CODE)
                                    458 	.area GSINIT  (CODE)
                                    459 ;--------------------------------------------------------
                                    460 ; Home
                                    461 ;--------------------------------------------------------
                                    462 	.area HOME    (CODE)
                                    463 	.area HOME    (CODE)
                                    464 ;--------------------------------------------------------
                                    465 ; code
                                    466 ;--------------------------------------------------------
                                    467 	.area CSEG    (CODE)
                                    468 ;------------------------------------------------------------
                                    469 ;Allocation info for local variables in function 'INT0_Interrupt'
                                    470 ;------------------------------------------------------------
                                    471 ;	src/interrupt_handled.c:4: void INT0_Interrupt(void) interrupt(0)
                                    472 ;	-----------------------------------------
                                    473 ;	 function INT0_Interrupt
                                    474 ;	-----------------------------------------
      000635                        475 _INT0_Interrupt:
                           000007   476 	ar7 = 0x07
                           000006   477 	ar6 = 0x06
                           000005   478 	ar5 = 0x05
                           000004   479 	ar4 = 0x04
                           000003   480 	ar3 = 0x03
                           000002   481 	ar2 = 0x02
                           000001   482 	ar1 = 0x01
                           000000   483 	ar0 = 0x00
                                    484 ;	src/interrupt_handled.c:6: IAP_CONTR |= 0x60;
      000635 43 C7 60         [24]  485 	orl	_IAP_CONTR,#0x60
                                    486 ;	src/interrupt_handled.c:7: }
      000638 32               [24]  487 	reti
                                    488 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    489 ;	eliminated unneeded push/pop not_psw
                                    490 ;	eliminated unneeded push/pop dpl
                                    491 ;	eliminated unneeded push/pop dph
                                    492 ;	eliminated unneeded push/pop b
                                    493 ;	eliminated unneeded push/pop acc
                                    494 ;------------------------------------------------------------
                                    495 ;Allocation info for local variables in function 'TIME0_Interrupt'
                                    496 ;------------------------------------------------------------
                                    497 ;i                         Allocated to registers r7 
                                    498 ;------------------------------------------------------------
                                    499 ;	src/interrupt_handled.c:9: void TIME0_Interrupt(void) interrupt(1) using(1)
                                    500 ;	-----------------------------------------
                                    501 ;	 function TIME0_Interrupt
                                    502 ;	-----------------------------------------
      000639                        503 _TIME0_Interrupt:
                           00000F   504 	ar7 = 0x0f
                           00000E   505 	ar6 = 0x0e
                           00000D   506 	ar5 = 0x0d
                           00000C   507 	ar4 = 0x0c
                           00000B   508 	ar3 = 0x0b
                           00000A   509 	ar2 = 0x0a
                           000009   510 	ar1 = 0x09
                           000008   511 	ar0 = 0x08
      000639 C0 E0            [24]  512 	push	acc
      00063B C0 D0            [24]  513 	push	psw
      00063D 75 D0 08         [24]  514 	mov	psw,#0x08
                                    515 ;	src/interrupt_handled.c:11: UpdateTimers();
      000640 7F 05            [12]  516 	mov	r7,#0x05
      000642                        517 00108$:
      000642 8F 0E            [24]  518 	mov	ar6,r7
      000644 EE               [12]  519 	mov	a,r6
      000645 14               [12]  520 	dec	a
      000646 24 21            [12]  521 	add	a,#_timers
      000648 F9               [12]  522 	mov	r1,a
      000649 E7               [12]  523 	mov	a,@r1
      00064A 60 15            [24]  524 	jz	00109$
      00064C EE               [12]  525 	mov	a,r6
      00064D 14               [12]  526 	dec	a
      00064E 24 21            [12]  527 	add	a,#_timers
      000650 F9               [12]  528 	mov	r1,a
      000651 87 0D            [24]  529 	mov	ar5,@r1
      000653 BD FF 02         [24]  530 	cjne	r5,#0xff,00129$
      000656 80 09            [24]  531 	sjmp	00109$
      000658                        532 00129$:
      000658 EE               [12]  533 	mov	a,r6
      000659 14               [12]  534 	dec	a
      00065A 24 21            [12]  535 	add	a,#_timers
      00065C F9               [12]  536 	mov	r1,a
      00065D E7               [12]  537 	mov	a,@r1
      00065E FE               [12]  538 	mov	r6,a
      00065F 14               [12]  539 	dec	a
      000660 F7               [12]  540 	mov	@r1,a
      000661                        541 00109$:
      000661 DF DF            [24]  542 	djnz	r7,00108$
                                    543 ;	src/interrupt_handled.c:12: }
      000663 D0 D0            [24]  544 	pop	psw
      000665 D0 E0            [24]  545 	pop	acc
      000667 32               [24]  546 	reti
                                    547 ;	eliminated unneeded push/pop dpl
                                    548 ;	eliminated unneeded push/pop dph
                                    549 ;	eliminated unneeded push/pop b
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'INT1_Interrupt'
                                    552 ;------------------------------------------------------------
                                    553 ;	src/interrupt_handled.c:14: void INT1_Interrupt(void) interrupt(2)
                                    554 ;	-----------------------------------------
                                    555 ;	 function INT1_Interrupt
                                    556 ;	-----------------------------------------
      000668                        557 _INT1_Interrupt:
                           000007   558 	ar7 = 0x07
                           000006   559 	ar6 = 0x06
                           000005   560 	ar5 = 0x05
                           000004   561 	ar4 = 0x04
                           000003   562 	ar3 = 0x03
                           000002   563 	ar2 = 0x02
                           000001   564 	ar1 = 0x01
                           000000   565 	ar0 = 0x00
                                    566 ;	src/interrupt_handled.c:16: IAP_CONTR |= 0x60;
      000668 43 C7 60         [24]  567 	orl	_IAP_CONTR,#0x60
                                    568 ;	src/interrupt_handled.c:17: }
      00066B 32               [24]  569 	reti
                                    570 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    571 ;	eliminated unneeded push/pop not_psw
                                    572 ;	eliminated unneeded push/pop dpl
                                    573 ;	eliminated unneeded push/pop dph
                                    574 ;	eliminated unneeded push/pop b
                                    575 ;	eliminated unneeded push/pop acc
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function 'TIME1_Interrupt'
                                    578 ;------------------------------------------------------------
                                    579 ;	src/interrupt_handled.c:19: void TIME1_Interrupt(void) interrupt(3)
                                    580 ;	-----------------------------------------
                                    581 ;	 function TIME1_Interrupt
                                    582 ;	-----------------------------------------
      00066C                        583 _TIME1_Interrupt:
                                    584 ;	src/interrupt_handled.c:21: IAP_CONTR |= 0x60;
      00066C 43 C7 60         [24]  585 	orl	_IAP_CONTR,#0x60
                                    586 ;	src/interrupt_handled.c:22: }
      00066F 32               [24]  587 	reti
                                    588 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    589 ;	eliminated unneeded push/pop not_psw
                                    590 ;	eliminated unneeded push/pop dpl
                                    591 ;	eliminated unneeded push/pop dph
                                    592 ;	eliminated unneeded push/pop b
                                    593 ;	eliminated unneeded push/pop acc
                                    594 ;------------------------------------------------------------
                                    595 ;Allocation info for local variables in function 'ADC_Interrupt'
                                    596 ;------------------------------------------------------------
                                    597 ;	src/interrupt_handled.c:29: void ADC_Interrupt(void) interrupt(5)
                                    598 ;	-----------------------------------------
                                    599 ;	 function ADC_Interrupt
                                    600 ;	-----------------------------------------
      000670                        601 _ADC_Interrupt:
                                    602 ;	src/interrupt_handled.c:31: IAP_CONTR |= 0x60;
      000670 43 C7 60         [24]  603 	orl	_IAP_CONTR,#0x60
                                    604 ;	src/interrupt_handled.c:32: }
      000673 32               [24]  605 	reti
                                    606 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    607 ;	eliminated unneeded push/pop not_psw
                                    608 ;	eliminated unneeded push/pop dpl
                                    609 ;	eliminated unneeded push/pop dph
                                    610 ;	eliminated unneeded push/pop b
                                    611 ;	eliminated unneeded push/pop acc
                                    612 ;------------------------------------------------------------
                                    613 ;Allocation info for local variables in function 'LVD_Interrupt'
                                    614 ;------------------------------------------------------------
                                    615 ;	src/interrupt_handled.c:34: void LVD_Interrupt(void) interrupt(6)
                                    616 ;	-----------------------------------------
                                    617 ;	 function LVD_Interrupt
                                    618 ;	-----------------------------------------
      000674                        619 _LVD_Interrupt:
                                    620 ;	src/interrupt_handled.c:36: IAP_CONTR |= 0x60;
      000674 43 C7 60         [24]  621 	orl	_IAP_CONTR,#0x60
                                    622 ;	src/interrupt_handled.c:37: }
      000677 32               [24]  623 	reti
                                    624 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    625 ;	eliminated unneeded push/pop not_psw
                                    626 ;	eliminated unneeded push/pop dpl
                                    627 ;	eliminated unneeded push/pop dph
                                    628 ;	eliminated unneeded push/pop b
                                    629 ;	eliminated unneeded push/pop acc
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'PCA_Interrupt'
                                    632 ;------------------------------------------------------------
                                    633 ;	src/interrupt_handled.c:39: void PCA_Interrupt(void) interrupt(7)
                                    634 ;	-----------------------------------------
                                    635 ;	 function PCA_Interrupt
                                    636 ;	-----------------------------------------
      000678                        637 _PCA_Interrupt:
                                    638 ;	src/interrupt_handled.c:41: IAP_CONTR |= 0x60;
      000678 43 C7 60         [24]  639 	orl	_IAP_CONTR,#0x60
                                    640 ;	src/interrupt_handled.c:42: }
      00067B 32               [24]  641 	reti
                                    642 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    643 ;	eliminated unneeded push/pop not_psw
                                    644 ;	eliminated unneeded push/pop dpl
                                    645 ;	eliminated unneeded push/pop dph
                                    646 ;	eliminated unneeded push/pop b
                                    647 ;	eliminated unneeded push/pop acc
                                    648 ;------------------------------------------------------------
                                    649 ;Allocation info for local variables in function 'UART2_Interrupt'
                                    650 ;------------------------------------------------------------
                                    651 ;	src/interrupt_handled.c:44: void UART2_Interrupt(void) interrupt(8)
                                    652 ;	-----------------------------------------
                                    653 ;	 function UART2_Interrupt
                                    654 ;	-----------------------------------------
      00067C                        655 _UART2_Interrupt:
                                    656 ;	src/interrupt_handled.c:46: IAP_CONTR |= 0x60;
      00067C 43 C7 60         [24]  657 	orl	_IAP_CONTR,#0x60
                                    658 ;	src/interrupt_handled.c:47: }
      00067F 32               [24]  659 	reti
                                    660 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    661 ;	eliminated unneeded push/pop not_psw
                                    662 ;	eliminated unneeded push/pop dpl
                                    663 ;	eliminated unneeded push/pop dph
                                    664 ;	eliminated unneeded push/pop b
                                    665 ;	eliminated unneeded push/pop acc
                                    666 ;------------------------------------------------------------
                                    667 ;Allocation info for local variables in function 'SPI_Interrupt'
                                    668 ;------------------------------------------------------------
                                    669 ;	src/interrupt_handled.c:49: void SPI_Interrupt(void) interrupt(9)
                                    670 ;	-----------------------------------------
                                    671 ;	 function SPI_Interrupt
                                    672 ;	-----------------------------------------
      000680                        673 _SPI_Interrupt:
                                    674 ;	src/interrupt_handled.c:51: IAP_CONTR |= 0x60;
      000680 43 C7 60         [24]  675 	orl	_IAP_CONTR,#0x60
                                    676 ;	src/interrupt_handled.c:52: }
      000683 32               [24]  677 	reti
                                    678 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    679 ;	eliminated unneeded push/pop not_psw
                                    680 ;	eliminated unneeded push/pop dpl
                                    681 ;	eliminated unneeded push/pop dph
                                    682 ;	eliminated unneeded push/pop b
                                    683 ;	eliminated unneeded push/pop acc
                                    684 ;------------------------------------------------------------
                                    685 ;Allocation info for local variables in function 'INT2_Interrupt'
                                    686 ;------------------------------------------------------------
                                    687 ;	src/interrupt_handled.c:54: void INT2_Interrupt(void) interrupt(10)
                                    688 ;	-----------------------------------------
                                    689 ;	 function INT2_Interrupt
                                    690 ;	-----------------------------------------
      000684                        691 _INT2_Interrupt:
                                    692 ;	src/interrupt_handled.c:56: IAP_CONTR |= 0x60;
      000684 43 C7 60         [24]  693 	orl	_IAP_CONTR,#0x60
                                    694 ;	src/interrupt_handled.c:57: }
      000687 32               [24]  695 	reti
                                    696 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    697 ;	eliminated unneeded push/pop not_psw
                                    698 ;	eliminated unneeded push/pop dpl
                                    699 ;	eliminated unneeded push/pop dph
                                    700 ;	eliminated unneeded push/pop b
                                    701 ;	eliminated unneeded push/pop acc
                                    702 ;------------------------------------------------------------
                                    703 ;Allocation info for local variables in function 'INT3_Interrupt'
                                    704 ;------------------------------------------------------------
                                    705 ;	src/interrupt_handled.c:59: void INT3_Interrupt(void) interrupt(11)
                                    706 ;	-----------------------------------------
                                    707 ;	 function INT3_Interrupt
                                    708 ;	-----------------------------------------
      000688                        709 _INT3_Interrupt:
                                    710 ;	src/interrupt_handled.c:61: IAP_CONTR |= 0x60;
      000688 43 C7 60         [24]  711 	orl	_IAP_CONTR,#0x60
                                    712 ;	src/interrupt_handled.c:62: }
      00068B 32               [24]  713 	reti
                                    714 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    715 ;	eliminated unneeded push/pop not_psw
                                    716 ;	eliminated unneeded push/pop dpl
                                    717 ;	eliminated unneeded push/pop dph
                                    718 ;	eliminated unneeded push/pop b
                                    719 ;	eliminated unneeded push/pop acc
                                    720 ;------------------------------------------------------------
                                    721 ;Allocation info for local variables in function 'TIME2_Interrupt'
                                    722 ;------------------------------------------------------------
                                    723 ;	src/interrupt_handled.c:64: void TIME2_Interrupt(void) interrupt(12)
                                    724 ;	-----------------------------------------
                                    725 ;	 function TIME2_Interrupt
                                    726 ;	-----------------------------------------
      00068C                        727 _TIME2_Interrupt:
                                    728 ;	src/interrupt_handled.c:66: IAP_CONTR |= 0x60;
      00068C 43 C7 60         [24]  729 	orl	_IAP_CONTR,#0x60
                                    730 ;	src/interrupt_handled.c:67: }
      00068F 32               [24]  731 	reti
                                    732 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    733 ;	eliminated unneeded push/pop not_psw
                                    734 ;	eliminated unneeded push/pop dpl
                                    735 ;	eliminated unneeded push/pop dph
                                    736 ;	eliminated unneeded push/pop b
                                    737 ;	eliminated unneeded push/pop acc
                                    738 	.area CSEG    (CODE)
                                    739 	.area CONST   (CODE)
                                    740 	.area XINIT   (CODE)
                                    741 	.area CABS    (ABS,CODE)
