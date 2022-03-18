                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module pwm_dac
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _wav_buf
                                     12 	.globl _IndexTable
                                     13 	.globl _StepSizeTable
                                     14 	.globl _PWM2_Interrupt
                                     15 	.globl _ADPCM_Decode
                                     16 	.globl _printf_byte
                                     17 	.globl _P
                                     18 	.globl _F1
                                     19 	.globl _OV
                                     20 	.globl _RS0
                                     21 	.globl _RS1
                                     22 	.globl _F0
                                     23 	.globl _AC
                                     24 	.globl _CY
                                     25 	.globl _P54
                                     26 	.globl _P53
                                     27 	.globl _P52
                                     28 	.globl _P51
                                     29 	.globl _P50
                                     30 	.globl _P47
                                     31 	.globl _P46
                                     32 	.globl _P45
                                     33 	.globl _P44
                                     34 	.globl _P43
                                     35 	.globl _P42
                                     36 	.globl _P41
                                     37 	.globl _P40
                                     38 	.globl _PX0
                                     39 	.globl _PT0
                                     40 	.globl _PX1
                                     41 	.globl _PT1
                                     42 	.globl _PS
                                     43 	.globl _PADC
                                     44 	.globl _PLVD
                                     45 	.globl _PPCA
                                     46 	.globl _P37
                                     47 	.globl _P36
                                     48 	.globl _P35
                                     49 	.globl _P34
                                     50 	.globl _P33
                                     51 	.globl _P32
                                     52 	.globl _P31
                                     53 	.globl _P30
                                     54 	.globl _EX0
                                     55 	.globl _ET0
                                     56 	.globl _EX1
                                     57 	.globl _ET1
                                     58 	.globl _ES
                                     59 	.globl _EADC
                                     60 	.globl _ELVD
                                     61 	.globl _EA
                                     62 	.globl _P27
                                     63 	.globl _P26
                                     64 	.globl _P25
                                     65 	.globl _P24
                                     66 	.globl _P23
                                     67 	.globl _P22
                                     68 	.globl _P21
                                     69 	.globl _P20
                                     70 	.globl _RI
                                     71 	.globl _TI
                                     72 	.globl _RB8
                                     73 	.globl _TB8
                                     74 	.globl _REN
                                     75 	.globl _SM2
                                     76 	.globl _SM1
                                     77 	.globl _SM0
                                     78 	.globl _P17
                                     79 	.globl _P16
                                     80 	.globl _P15
                                     81 	.globl _P14
                                     82 	.globl _P13
                                     83 	.globl _P12
                                     84 	.globl _P11
                                     85 	.globl _P10
                                     86 	.globl _IT0
                                     87 	.globl _IE0
                                     88 	.globl _IT1
                                     89 	.globl _IE1
                                     90 	.globl _TR0
                                     91 	.globl _TF0
                                     92 	.globl _TR1
                                     93 	.globl _TF1
                                     94 	.globl _P07
                                     95 	.globl _P06
                                     96 	.globl _P05
                                     97 	.globl _P04
                                     98 	.globl _P03
                                     99 	.globl _P02
                                    100 	.globl _P01
                                    101 	.globl _P00
                                    102 	.globl _RSTCFG
                                    103 	.globl _USBADR
                                    104 	.globl _P7
                                    105 	.globl _IAP_TPS
                                    106 	.globl _USBCON
                                    107 	.globl _B
                                    108 	.globl _AUXINTIF
                                    109 	.globl _IP3H
                                    110 	.globl _USBDAT
                                    111 	.globl _P6
                                    112 	.globl _CMPCR2
                                    113 	.globl _CMPCR1
                                    114 	.globl _DPH1
                                    115 	.globl _DPL1
                                    116 	.globl _DPS
                                    117 	.globl _P7M0
                                    118 	.globl _P7M1
                                    119 	.globl _ACC
                                    120 	.globl _IP3
                                    121 	.globl _ADCCFG
                                    122 	.globl _USBCLK
                                    123 	.globl _T2L
                                    124 	.globl _T2H
                                    125 	.globl _T3L
                                    126 	.globl _T3H
                                    127 	.globl _T4L
                                    128 	.globl _T4H
                                    129 	.globl _T4T3M
                                    130 	.globl _PSW
                                    131 	.globl _SPDAT
                                    132 	.globl _SPCTL
                                    133 	.globl _SPSTAT
                                    134 	.globl _P6M0
                                    135 	.globl _P6M1
                                    136 	.globl _P5M0
                                    137 	.globl _P5M1
                                    138 	.globl _P5
                                    139 	.globl _IAP_CONTR
                                    140 	.globl _IAP_TRIG
                                    141 	.globl _IAP_CMD
                                    142 	.globl _IAP_ADDRL
                                    143 	.globl _IAP_ADDRH
                                    144 	.globl _IAP_DATA
                                    145 	.globl _WDT_CONTR
                                    146 	.globl _P4
                                    147 	.globl _ADC_RESL
                                    148 	.globl _ADC_RES
                                    149 	.globl _ADC_CONTR
                                    150 	.globl _P_SW2
                                    151 	.globl _SADEN
                                    152 	.globl _IP
                                    153 	.globl _IPH
                                    154 	.globl _IP2H
                                    155 	.globl _IP2
                                    156 	.globl _P4M0
                                    157 	.globl _P4M1
                                    158 	.globl _P3M0
                                    159 	.globl _P3M1
                                    160 	.globl _P3
                                    161 	.globl _IE2
                                    162 	.globl _TA
                                    163 	.globl _S3BUF
                                    164 	.globl _S3CON
                                    165 	.globl _WKTCH
                                    166 	.globl _WKTCL
                                    167 	.globl _SADDR
                                    168 	.globl _IE
                                    169 	.globl _P_SW1
                                    170 	.globl _P2
                                    171 	.globl _IRTRIM
                                    172 	.globl _LIRTRIM
                                    173 	.globl _IRCBAND
                                    174 	.globl _S2BUF
                                    175 	.globl _S2CON
                                    176 	.globl _SBUF
                                    177 	.globl _SCON
                                    178 	.globl _P2M0
                                    179 	.globl _P2M1
                                    180 	.globl _P0M0
                                    181 	.globl _P0M1
                                    182 	.globl _P1M0
                                    183 	.globl _P1M1
                                    184 	.globl _P1
                                    185 	.globl _INTCLKO
                                    186 	.globl _AUXR
                                    187 	.globl _TH1
                                    188 	.globl _TH0
                                    189 	.globl _TL1
                                    190 	.globl _TL0
                                    191 	.globl _TMOD
                                    192 	.globl _TCON
                                    193 	.globl _PCON
                                    194 	.globl _S4BUF
                                    195 	.globl _S4CON
                                    196 	.globl _DPH
                                    197 	.globl _DPL
                                    198 	.globl _SP
                                    199 	.globl _P0
                                    200 	.globl _dac_buff1
                                    201 	.globl _dac_sendflag
                                    202 	.globl _dac_write
                                    203 	.globl _dac_read
                                    204 	.globl _pwm_init
                                    205 	.globl _dac_send
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
                                    404 ;--------------------------------------------------------
                                    405 ; internal ram data
                                    406 ;--------------------------------------------------------
                                    407 	.area DSEG    (DATA)
      000010                        408 _dac_read::
      000010                        409 	.ds 1
      000011                        410 _dac_write::
      000011                        411 	.ds 1
      000012                        412 _dac_sendflag::
      000012                        413 	.ds 1
      000013                        414 _index:
      000013                        415 	.ds 1
      000014                        416 _predsample:
      000014                        417 	.ds 4
      000018                        418 _ADPCM_Decode_xcode_65536_5:
      000018                        419 	.ds 1
      000019                        420 _ADPCM_Decode_step_65536_6:
      000019                        421 	.ds 2
      00001B                        422 _dac_send_i_65536_23:
      00001B                        423 	.ds 2
                                    424 ;--------------------------------------------------------
                                    425 ; overlayable items in internal ram 
                                    426 ;--------------------------------------------------------
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
                                    440 ;--------------------------------------------------------
                                    441 ; paged external ram data
                                    442 ;--------------------------------------------------------
                                    443 	.area PSEG    (PAG,XDATA)
                                    444 ;--------------------------------------------------------
                                    445 ; external ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area XSEG    (XDATA)
      000001                        448 _dac_buff1::
      000001                        449 	.ds 256
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
                                    469 ; global & static initialisations
                                    470 ;--------------------------------------------------------
                                    471 	.area HOME    (CODE)
                                    472 	.area GSINIT  (CODE)
                                    473 	.area GSFINAL (CODE)
                                    474 	.area GSINIT  (CODE)
                                    475 ;------------------------------------------------------------
                                    476 ;Allocation info for local variables in function 'dac_send'
                                    477 ;------------------------------------------------------------
                                    478 ;i                         Allocated with name '_dac_send_i_65536_23'
                                    479 ;p                         Allocated to registers r6 r7 r5 
                                    480 ;------------------------------------------------------------
                                    481 ;	src/pwm_dac.c:376: static uint16_t i = 0;
      00013A E4               [12]  482 	clr	a
      00013B F5 1B            [12]  483 	mov	_dac_send_i_65536_23,a
      00013D F5 1C            [12]  484 	mov	(_dac_send_i_65536_23 + 1),a
                                    485 ;	src/pwm_dac.c:4: uint8_t dac_read = 0;         //读缓存位置
                                    486 ;	1-genFromRTrack replaced	mov	_dac_read,#0x00
      00013F F5 10            [12]  487 	mov	_dac_read,a
                                    488 ;	src/pwm_dac.c:5: uint8_t dac_write = 0;        //写缓存位置
                                    489 ;	1-genFromRTrack replaced	mov	_dac_write,#0x00
      000141 F5 11            [12]  490 	mov	_dac_write,a
                                    491 ;	src/pwm_dac.c:6: uint8_t dac_sendflag = 0;     //正在发送数据标志位
                                    492 ;	1-genFromRTrack replaced	mov	_dac_sendflag,#0x00
      000143 F5 12            [12]  493 	mov	_dac_sendflag,a
                                    494 ;	src/pwm_dac.c:278: static int8_t  index = 0;	//willow add
                                    495 ;	1-genFromRTrack replaced	mov	_index,#0x00
      000145 F5 13            [12]  496 	mov	_index,a
                                    497 ;	src/pwm_dac.c:279: static int32_t predsample = 0;
      000147 F5 14            [12]  498 	mov	_predsample,a
      000149 F5 15            [12]  499 	mov	(_predsample + 1),a
      00014B F5 16            [12]  500 	mov	(_predsample + 2),a
      00014D F5 17            [12]  501 	mov	(_predsample + 3),a
                                    502 ;--------------------------------------------------------
                                    503 ; Home
                                    504 ;--------------------------------------------------------
                                    505 	.area HOME    (CODE)
                                    506 	.area HOME    (CODE)
                                    507 ;--------------------------------------------------------
                                    508 ; code
                                    509 ;--------------------------------------------------------
                                    510 	.area CSEG    (CODE)
                                    511 ;------------------------------------------------------------
                                    512 ;Allocation info for local variables in function 'ADPCM_Decode'
                                    513 ;------------------------------------------------------------
                                    514 ;xcode                     Allocated with name '_ADPCM_Decode_xcode_65536_5'
                                    515 ;step                      Allocated with name '_ADPCM_Decode_step_65536_6'
                                    516 ;diffq                     Allocated to registers r1 r2 r3 r4 
                                    517 ;------------------------------------------------------------
                                    518 ;	src/pwm_dac.c:281: uint8_t ADPCM_Decode(uint8_t xcode)
                                    519 ;	-----------------------------------------
                                    520 ;	 function ADPCM_Decode
                                    521 ;	-----------------------------------------
      000168                        522 _ADPCM_Decode:
                           000007   523 	ar7 = 0x07
                           000006   524 	ar6 = 0x06
                           000005   525 	ar5 = 0x05
                           000004   526 	ar4 = 0x04
                           000003   527 	ar3 = 0x03
                           000002   528 	ar2 = 0x02
                           000001   529 	ar1 = 0x01
                           000000   530 	ar0 = 0x00
      000168 85 82 18         [24]  531 	mov	_ADPCM_Decode_xcode_65536_5,dpl
                                    532 ;	src/pwm_dac.c:286: step = StepSizeTable[index];
      00016B C2 D5            [12]  533 	clr	F0
      00016D 75 F0 02         [24]  534 	mov	b,#0x02
      000170 E5 13            [12]  535 	mov	a,_index
      000172 30 E7 04         [24]  536 	jnb	acc.7,00154$
      000175 B2 D5            [12]  537 	cpl	F0
      000177 F4               [12]  538 	cpl	a
      000178 04               [12]  539 	inc	a
      000179                        540 00154$:
      000179 A4               [48]  541 	mul	ab
      00017A 30 D5 0A         [24]  542 	jnb	F0,00155$
      00017D F4               [12]  543 	cpl	a
      00017E 24 01            [12]  544 	add	a,#0x01
      000180 C5 F0            [12]  545 	xch	a,b
      000182 F4               [12]  546 	cpl	a
      000183 34 00            [12]  547 	addc	a,#0x00
      000185 C5 F0            [12]  548 	xch	a,b
      000187                        549 00155$:
      000187 24 84            [12]  550 	add	a,#_StepSizeTable
      000189 F5 82            [12]  551 	mov	dpl,a
      00018B 74 08            [12]  552 	mov	a,#(_StepSizeTable >> 8)
      00018D 35 F0            [12]  553 	addc	a,b
      00018F F5 83            [12]  554 	mov	dph,a
      000191 E4               [12]  555 	clr	a
      000192 93               [24]  556 	movc	a,@a+dptr
      000193 F5 19            [12]  557 	mov	_ADPCM_Decode_step_65536_6,a
      000195 A3               [24]  558 	inc	dptr
      000196 E4               [12]  559 	clr	a
      000197 93               [24]  560 	movc	a,@a+dptr
                                    561 ;	src/pwm_dac.c:289: diffq = step>> 3;
      000198 F5 1A            [12]  562 	mov	(_ADPCM_Decode_step_65536_6 + 1),a
      00019A AB 19            [24]  563 	mov	r3,_ADPCM_Decode_step_65536_6
      00019C C4               [12]  564 	swap	a
      00019D 23               [12]  565 	rl	a
      00019E CB               [12]  566 	xch	a,r3
      00019F C4               [12]  567 	swap	a
      0001A0 23               [12]  568 	rl	a
      0001A1 54 1F            [12]  569 	anl	a,#0x1f
      0001A3 6B               [12]  570 	xrl	a,r3
      0001A4 CB               [12]  571 	xch	a,r3
      0001A5 54 1F            [12]  572 	anl	a,#0x1f
      0001A7 CB               [12]  573 	xch	a,r3
      0001A8 6B               [12]  574 	xrl	a,r3
      0001A9 CB               [12]  575 	xch	a,r3
      0001AA FC               [12]  576 	mov	r4,a
      0001AB 8B 01            [24]  577 	mov	ar1,r3
      0001AD 8C 02            [24]  578 	mov	ar2,r4
                                    579 ;	src/pwm_dac.c:290: if (xcode&4)
      0001AF E4               [12]  580 	clr	a
      0001B0 FB               [12]  581 	mov	r3,a
      0001B1 FC               [12]  582 	mov	r4,a
      0001B2 E5 18            [12]  583 	mov	a,_ADPCM_Decode_xcode_65536_5
      0001B4 30 E2 13         [24]  584 	jnb	acc.2,00102$
                                    585 ;	src/pwm_dac.c:292: diffq += step;
      0001B7 A8 19            [24]  586 	mov	r0,_ADPCM_Decode_step_65536_6
      0001B9 AD 1A            [24]  587 	mov	r5,(_ADPCM_Decode_step_65536_6 + 1)
      0001BB E4               [12]  588 	clr	a
      0001BC FE               [12]  589 	mov	r6,a
      0001BD FF               [12]  590 	mov	r7,a
      0001BE E8               [12]  591 	mov	a,r0
      0001BF 29               [12]  592 	add	a,r1
      0001C0 F9               [12]  593 	mov	r1,a
      0001C1 ED               [12]  594 	mov	a,r5
      0001C2 3A               [12]  595 	addc	a,r2
      0001C3 FA               [12]  596 	mov	r2,a
      0001C4 EE               [12]  597 	mov	a,r6
      0001C5 3B               [12]  598 	addc	a,r3
      0001C6 FB               [12]  599 	mov	r3,a
      0001C7 EF               [12]  600 	mov	a,r7
      0001C8 3C               [12]  601 	addc	a,r4
      0001C9 FC               [12]  602 	mov	r4,a
      0001CA                        603 00102$:
                                    604 ;	src/pwm_dac.c:295: if (xcode&2)
      0001CA E5 18            [12]  605 	mov	a,_ADPCM_Decode_xcode_65536_5
      0001CC 30 E1 1D         [24]  606 	jnb	acc.1,00104$
                                    607 ;	src/pwm_dac.c:297: diffq += step>>1;
      0001CF AE 19            [24]  608 	mov	r6,_ADPCM_Decode_step_65536_6
      0001D1 E5 1A            [12]  609 	mov	a,(_ADPCM_Decode_step_65536_6 + 1)
      0001D3 C3               [12]  610 	clr	c
      0001D4 13               [12]  611 	rrc	a
      0001D5 CE               [12]  612 	xch	a,r6
      0001D6 13               [12]  613 	rrc	a
      0001D7 CE               [12]  614 	xch	a,r6
      0001D8 FF               [12]  615 	mov	r7,a
      0001D9 8E 00            [24]  616 	mov	ar0,r6
      0001DB 8F 05            [24]  617 	mov	ar5,r7
      0001DD E4               [12]  618 	clr	a
      0001DE FE               [12]  619 	mov	r6,a
      0001DF FF               [12]  620 	mov	r7,a
      0001E0 E8               [12]  621 	mov	a,r0
      0001E1 29               [12]  622 	add	a,r1
      0001E2 F9               [12]  623 	mov	r1,a
      0001E3 ED               [12]  624 	mov	a,r5
      0001E4 3A               [12]  625 	addc	a,r2
      0001E5 FA               [12]  626 	mov	r2,a
      0001E6 EE               [12]  627 	mov	a,r6
      0001E7 3B               [12]  628 	addc	a,r3
      0001E8 FB               [12]  629 	mov	r3,a
      0001E9 EF               [12]  630 	mov	a,r7
      0001EA 3C               [12]  631 	addc	a,r4
      0001EB FC               [12]  632 	mov	r4,a
      0001EC                        633 00104$:
                                    634 ;	src/pwm_dac.c:300: if (xcode&1)
      0001EC E5 18            [12]  635 	mov	a,_ADPCM_Decode_xcode_65536_5
      0001EE 30 E0 22         [24]  636 	jnb	acc.0,00106$
                                    637 ;	src/pwm_dac.c:302: diffq += step>>2;
      0001F1 AE 19            [24]  638 	mov	r6,_ADPCM_Decode_step_65536_6
      0001F3 E5 1A            [12]  639 	mov	a,(_ADPCM_Decode_step_65536_6 + 1)
      0001F5 C3               [12]  640 	clr	c
      0001F6 13               [12]  641 	rrc	a
      0001F7 CE               [12]  642 	xch	a,r6
      0001F8 13               [12]  643 	rrc	a
      0001F9 CE               [12]  644 	xch	a,r6
      0001FA C3               [12]  645 	clr	c
      0001FB 13               [12]  646 	rrc	a
      0001FC CE               [12]  647 	xch	a,r6
      0001FD 13               [12]  648 	rrc	a
      0001FE CE               [12]  649 	xch	a,r6
      0001FF FF               [12]  650 	mov	r7,a
      000200 8E 00            [24]  651 	mov	ar0,r6
      000202 8F 05            [24]  652 	mov	ar5,r7
      000204 E4               [12]  653 	clr	a
      000205 FE               [12]  654 	mov	r6,a
      000206 FF               [12]  655 	mov	r7,a
      000207 E8               [12]  656 	mov	a,r0
      000208 29               [12]  657 	add	a,r1
      000209 F9               [12]  658 	mov	r1,a
      00020A ED               [12]  659 	mov	a,r5
      00020B 3A               [12]  660 	addc	a,r2
      00020C FA               [12]  661 	mov	r2,a
      00020D EE               [12]  662 	mov	a,r6
      00020E 3B               [12]  663 	addc	a,r3
      00020F FB               [12]  664 	mov	r3,a
      000210 EF               [12]  665 	mov	a,r7
      000211 3C               [12]  666 	addc	a,r4
      000212 FC               [12]  667 	mov	r4,a
      000213                        668 00106$:
                                    669 ;	src/pwm_dac.c:306: if (xcode&8)
      000213 E5 18            [12]  670 	mov	a,_ADPCM_Decode_xcode_65536_5
      000215 30 E3 17         [24]  671 	jnb	acc.3,00108$
                                    672 ;	src/pwm_dac.c:308: predsample -= diffq;
      000218 E5 14            [12]  673 	mov	a,_predsample
      00021A C3               [12]  674 	clr	c
      00021B 99               [12]  675 	subb	a,r1
      00021C F5 14            [12]  676 	mov	_predsample,a
      00021E E5 15            [12]  677 	mov	a,(_predsample + 1)
      000220 9A               [12]  678 	subb	a,r2
      000221 F5 15            [12]  679 	mov	(_predsample + 1),a
      000223 E5 16            [12]  680 	mov	a,(_predsample + 2)
      000225 9B               [12]  681 	subb	a,r3
      000226 F5 16            [12]  682 	mov	(_predsample + 2),a
      000228 E5 17            [12]  683 	mov	a,(_predsample + 3)
      00022A 9C               [12]  684 	subb	a,r4
      00022B F5 17            [12]  685 	mov	(_predsample + 3),a
      00022D 80 14            [24]  686 	sjmp	00109$
      00022F                        687 00108$:
                                    688 ;	src/pwm_dac.c:312: predsample += diffq;
      00022F E9               [12]  689 	mov	a,r1
      000230 25 14            [12]  690 	add	a,_predsample
      000232 F5 14            [12]  691 	mov	_predsample,a
      000234 EA               [12]  692 	mov	a,r2
      000235 35 15            [12]  693 	addc	a,(_predsample + 1)
      000237 F5 15            [12]  694 	mov	(_predsample + 1),a
      000239 EB               [12]  695 	mov	a,r3
      00023A 35 16            [12]  696 	addc	a,(_predsample + 2)
      00023C F5 16            [12]  697 	mov	(_predsample + 2),a
      00023E EC               [12]  698 	mov	a,r4
      00023F 35 17            [12]  699 	addc	a,(_predsample + 3)
      000241 F5 17            [12]  700 	mov	(_predsample + 3),a
      000243                        701 00109$:
                                    702 ;	src/pwm_dac.c:316: if (predsample > 32767)
      000243 C3               [12]  703 	clr	c
      000244 74 FF            [12]  704 	mov	a,#0xff
      000246 95 14            [12]  705 	subb	a,_predsample
      000248 74 7F            [12]  706 	mov	a,#0x7f
      00024A 95 15            [12]  707 	subb	a,(_predsample + 1)
      00024C E4               [12]  708 	clr	a
      00024D 95 16            [12]  709 	subb	a,(_predsample + 2)
      00024F 74 80            [12]  710 	mov	a,#(0x00 ^ 0x80)
      000251 85 17 F0         [24]  711 	mov	b,(_predsample + 3)
      000254 63 F0 80         [24]  712 	xrl	b,#0x80
      000257 95 F0            [12]  713 	subb	a,b
      000259 50 0D            [24]  714 	jnc	00113$
                                    715 ;	src/pwm_dac.c:318: predsample = 32767;
      00025B 75 14 FF         [24]  716 	mov	_predsample,#0xff
      00025E 75 15 7F         [24]  717 	mov	(_predsample + 1),#0x7f
      000261 E4               [12]  718 	clr	a
      000262 F5 16            [12]  719 	mov	(_predsample + 2),a
      000264 F5 17            [12]  720 	mov	(_predsample + 3),a
      000266 80 1D            [24]  721 	sjmp	00114$
      000268                        722 00113$:
                                    723 ;	src/pwm_dac.c:320: else if (predsample < -32768)
      000268 C3               [12]  724 	clr	c
      000269 E5 15            [12]  725 	mov	a,(_predsample + 1)
      00026B 94 80            [12]  726 	subb	a,#0x80
      00026D E5 16            [12]  727 	mov	a,(_predsample + 2)
      00026F 94 FF            [12]  728 	subb	a,#0xff
      000271 E5 17            [12]  729 	mov	a,(_predsample + 3)
      000273 64 80            [12]  730 	xrl	a,#0x80
      000275 94 7F            [12]  731 	subb	a,#0x7f
      000277 50 0C            [24]  732 	jnc	00114$
                                    733 ;	src/pwm_dac.c:322: predsample = -32768;
      000279 75 14 00         [24]  734 	mov	_predsample,#0x00
      00027C 75 15 80         [24]  735 	mov	(_predsample + 1),#0x80
      00027F 75 16 FF         [24]  736 	mov	(_predsample + 2),#0xff
      000282 75 17 FF         [24]  737 	mov	(_predsample + 3),#0xff
      000285                        738 00114$:
                                    739 ;	src/pwm_dac.c:326: index += IndexTable [xcode];
      000285 E5 18            [12]  740 	mov	a,_ADPCM_Decode_xcode_65536_5
      000287 90 09 36         [24]  741 	mov	dptr,#_IndexTable
      00028A 93               [24]  742 	movc	a,@a+dptr
      00028B 25 13            [12]  743 	add	a,_index
                                    744 ;	src/pwm_dac.c:328: if (index < 0)
      00028D F5 13            [12]  745 	mov	_index,a
      00028F 30 E7 05         [24]  746 	jnb	acc.7,00118$
                                    747 ;	src/pwm_dac.c:330: index = 0;
      000292 75 13 00         [24]  748 	mov	_index,#0x00
      000295 80 10            [24]  749 	sjmp	00119$
      000297                        750 00118$:
                                    751 ;	src/pwm_dac.c:332: else if (index > 88)
      000297 C3               [12]  752 	clr	c
      000298 74 D8            [12]  753 	mov	a,#(0x58 ^ 0x80)
      00029A 85 13 F0         [24]  754 	mov	b,_index
      00029D 63 F0 80         [24]  755 	xrl	b,#0x80
      0002A0 95 F0            [12]  756 	subb	a,b
      0002A2 50 03            [24]  757 	jnc	00119$
                                    758 ;	src/pwm_dac.c:334: index = 88;
      0002A4 75 13 58         [24]  759 	mov	_index,#0x58
      0002A7                        760 00119$:
                                    761 ;	src/pwm_dac.c:338: return (uint8_t)((predsample/256)+128);
      0002A7 E4               [12]  762 	clr	a
      0002A8 F5 2B            [12]  763 	mov	__divslong_PARM_2,a
      0002AA 75 2C 01         [24]  764 	mov	(__divslong_PARM_2 + 1),#0x01
      0002AD F5 2D            [12]  765 	mov	(__divslong_PARM_2 + 2),a
      0002AF F5 2E            [12]  766 	mov	(__divslong_PARM_2 + 3),a
      0002B1 85 14 82         [24]  767 	mov	dpl,_predsample
      0002B4 85 15 83         [24]  768 	mov	dph,(_predsample + 1)
      0002B7 85 16 F0         [24]  769 	mov	b,(_predsample + 2)
      0002BA E5 17            [12]  770 	mov	a,(_predsample + 3)
      0002BC 12 08 12         [24]  771 	lcall	__divslong
      0002BF AC 82            [24]  772 	mov	r4,dpl
      0002C1 74 80            [12]  773 	mov	a,#0x80
      0002C3 2C               [12]  774 	add	a,r4
                                    775 ;	src/pwm_dac.c:339: }
      0002C4 F5 82            [12]  776 	mov	dpl,a
      0002C6 22               [24]  777 	ret
                                    778 ;------------------------------------------------------------
                                    779 ;Allocation info for local variables in function 'pwm_init'
                                    780 ;------------------------------------------------------------
                                    781 ;	src/pwm_dac.c:341: void pwm_init(void)
                                    782 ;	-----------------------------------------
                                    783 ;	 function pwm_init
                                    784 ;	-----------------------------------------
      0002C7                        785 _pwm_init:
                                    786 ;	src/pwm_dac.c:343: P_SW2 = 0x80;
      0002C7 75 BA 80         [24]  787 	mov	_P_SW2,#0x80
                                    788 ;	src/pwm_dac.c:344: PWM1_CCER1 = 0x00;
      0002CA 90 FE CC         [24]  789 	mov	dptr,#0xfecc
      0002CD E4               [12]  790 	clr	a
      0002CE F0               [24]  791 	movx	@dptr,a
                                    792 ;	src/pwm_dac.c:345: PWM1_CCMR2 = 0x60;
      0002CF 90 FE C9         [24]  793 	mov	dptr,#0xfec9
      0002D2 74 60            [12]  794 	mov	a,#0x60
      0002D4 F0               [24]  795 	movx	@dptr,a
                                    796 ;	src/pwm_dac.c:346: PWM1_CCER1 = 0x10;
      0002D5 90 FE CC         [24]  797 	mov	dptr,#0xfecc
      0002D8 74 10            [12]  798 	mov	a,#0x10
      0002DA F0               [24]  799 	movx	@dptr,a
                                    800 ;	src/pwm_dac.c:347: PWM1_CCR2H = 0x00;
      0002DB 90 FE D7         [24]  801 	mov	dptr,#0xfed7
      0002DE E4               [12]  802 	clr	a
      0002DF F0               [24]  803 	movx	@dptr,a
                                    804 ;	src/pwm_dac.c:348: PWM1_CCR2L = 0x80;
      0002E0 90 FE D8         [24]  805 	mov	dptr,#0xfed8
      0002E3 74 80            [12]  806 	mov	a,#0x80
      0002E5 F0               [24]  807 	movx	@dptr,a
                                    808 ;	src/pwm_dac.c:349: PWM1_ARRH  = 0x01;
      0002E6 90 FE D2         [24]  809 	mov	dptr,#0xfed2
      0002E9 23               [12]  810 	rl	a
      0002EA F0               [24]  811 	movx	@dptr,a
                                    812 ;	src/pwm_dac.c:350: PWM1_ARRL  = 0x00;
      0002EB 90 FE D3         [24]  813 	mov	dptr,#0xfed3
      0002EE E4               [12]  814 	clr	a
      0002EF F0               [24]  815 	movx	@dptr,a
                                    816 ;	src/pwm_dac.c:351: PWM1_ENO   = 0x04;
      0002F0 90 FE B1         [24]  817 	mov	dptr,#0xfeb1
      0002F3 74 04            [12]  818 	mov	a,#0x04
      0002F5 F0               [24]  819 	movx	@dptr,a
                                    820 ;	src/pwm_dac.c:352: PWM1_BKR   = 0x80;
      0002F6 90 FE DD         [24]  821 	mov	dptr,#0xfedd
      0002F9 74 80            [12]  822 	mov	a,#0x80
      0002FB F0               [24]  823 	movx	@dptr,a
                                    824 ;	src/pwm_dac.c:353: PWM1_CR1   = 0x01;
      0002FC 90 FE C0         [24]  825 	mov	dptr,#0xfec0
      0002FF 23               [12]  826 	rl	a
      000300 F0               [24]  827 	movx	@dptr,a
                                    828 ;	src/pwm_dac.c:354: }
      000301 22               [24]  829 	ret
                                    830 ;------------------------------------------------------------
                                    831 ;Allocation info for local variables in function 'PWM2_Interrupt'
                                    832 ;------------------------------------------------------------
                                    833 ;	src/pwm_dac.c:356: void PWM2_Interrupt(void) interrupt (27)
                                    834 ;	-----------------------------------------
                                    835 ;	 function PWM2_Interrupt
                                    836 ;	-----------------------------------------
      000302                        837 _PWM2_Interrupt:
      000302 C0 E0            [24]  838 	push	acc
      000304 C0 82            [24]  839 	push	dpl
      000306 C0 83            [24]  840 	push	dph
      000308 C0 07            [24]  841 	push	ar7
      00030A C0 D0            [24]  842 	push	psw
      00030C 75 D0 00         [24]  843 	mov	psw,#0x00
                                    844 ;	src/pwm_dac.c:358: PWM2_SR1 = 0x00;
      00030F 90 FE E5         [24]  845 	mov	dptr,#0xfee5
      000312 E4               [12]  846 	clr	a
      000313 F0               [24]  847 	movx	@dptr,a
                                    848 ;	src/pwm_dac.c:359: if(dac_read != dac_write)
      000314 E5 11            [12]  849 	mov	a,_dac_write
      000316 B5 10 02         [24]  850 	cjne	a,_dac_read,00110$
      000319 80 16            [24]  851 	sjmp	00102$
      00031B                        852 00110$:
                                    853 ;	src/pwm_dac.c:361: PWM1_CCR2L = dac_buff1[dac_read++];
      00031B AF 10            [24]  854 	mov	r7,_dac_read
      00031D 05 10            [12]  855 	inc	_dac_read
      00031F EF               [12]  856 	mov	a,r7
      000320 24 01            [12]  857 	add	a,#_dac_buff1
      000322 F5 82            [12]  858 	mov	dpl,a
      000324 E4               [12]  859 	clr	a
      000325 34 00            [12]  860 	addc	a,#(_dac_buff1 >> 8)
      000327 F5 83            [12]  861 	mov	dph,a
      000329 E0               [24]  862 	movx	a,@dptr
      00032A FF               [12]  863 	mov	r7,a
      00032B 90 FE D8         [24]  864 	mov	dptr,#0xfed8
      00032E F0               [24]  865 	movx	@dptr,a
      00032F 80 18            [24]  866 	sjmp	00104$
      000331                        867 00102$:
                                    868 ;	src/pwm_dac.c:365: dac_read = 0;
      000331 75 10 00         [24]  869 	mov	_dac_read,#0x00
                                    870 ;	src/pwm_dac.c:366: dac_write = 0;
      000334 75 11 00         [24]  871 	mov	_dac_write,#0x00
                                    872 ;	src/pwm_dac.c:367: dac_sendflag = 0;
      000337 75 12 00         [24]  873 	mov	_dac_sendflag,#0x00
                                    874 ;	src/pwm_dac.c:368: PWM1_CCR2L = 0x80;  //保持中值
      00033A 90 FE D8         [24]  875 	mov	dptr,#0xfed8
      00033D 74 80            [12]  876 	mov	a,#0x80
      00033F F0               [24]  877 	movx	@dptr,a
                                    878 ;	src/pwm_dac.c:369: PWM2_CR1 = 0x00;    //停止发送
      000340 90 FE E0         [24]  879 	mov	dptr,#0xfee0
      000343 E4               [12]  880 	clr	a
      000344 F0               [24]  881 	movx	@dptr,a
                                    882 ;	src/pwm_dac.c:370: PWM2_IER = 0x00;
      000345 90 FE E4         [24]  883 	mov	dptr,#0xfee4
      000348 F0               [24]  884 	movx	@dptr,a
      000349                        885 00104$:
                                    886 ;	src/pwm_dac.c:372: }
      000349 D0 D0            [24]  887 	pop	psw
      00034B D0 07            [24]  888 	pop	ar7
      00034D D0 83            [24]  889 	pop	dph
      00034F D0 82            [24]  890 	pop	dpl
      000351 D0 E0            [24]  891 	pop	acc
      000353 32               [24]  892 	reti
                                    893 ;	eliminated unneeded push/pop b
                                    894 ;------------------------------------------------------------
                                    895 ;Allocation info for local variables in function 'dac_send'
                                    896 ;------------------------------------------------------------
                                    897 ;i                         Allocated with name '_dac_send_i_65536_23'
                                    898 ;p                         Allocated to registers r6 r7 r5 
                                    899 ;------------------------------------------------------------
                                    900 ;	src/pwm_dac.c:374: uint8_t dac_send(void)
                                    901 ;	-----------------------------------------
                                    902 ;	 function dac_send
                                    903 ;	-----------------------------------------
      000354                        904 _dac_send:
                                    905 ;	src/pwm_dac.c:378: while((dac_write != (uint8_t)(dac_read-1)) && (dac_write != (uint8_t)(dac_read-2)))   //还有缓存空间则继续解码数据
      000354                        906 00107$:
      000354 E5 10            [12]  907 	mov	a,_dac_read
      000356 FF               [12]  908 	mov	r7,a
      000357 14               [12]  909 	dec	a
      000358 FE               [12]  910 	mov	r6,a
      000359 B5 11 03         [24]  911 	cjne	a,_dac_write,00138$
      00035C 02 04 C0         [24]  912 	ljmp	00109$
      00035F                        913 00138$:
      00035F 1F               [12]  914 	dec	r7
      000360 1F               [12]  915 	dec	r7
      000361 EF               [12]  916 	mov	a,r7
      000362 B5 11 03         [24]  917 	cjne	a,_dac_write,00139$
      000365 02 04 C0         [24]  918 	ljmp	00109$
      000368                        919 00139$:
                                    920 ;	src/pwm_dac.c:380: if((i % 255) == 0)    //块数据头,每块255个字节
      000368 75 2B FF         [24]  921 	mov	__moduint_PARM_2,#0xff
      00036B 75 2C 00         [24]  922 	mov	(__moduint_PARM_2 + 1),#0x00
      00036E 85 1B 82         [24]  923 	mov	dpl,_dac_send_i_65536_23
      000371 85 1C 83         [24]  924 	mov	dph,(_dac_send_i_65536_23 + 1)
      000374 12 07 C5         [24]  925 	lcall	__moduint
      000377 E5 82            [12]  926 	mov	a,dpl
      000379 85 83 F0         [24]  927 	mov	b,dph
      00037C 45 F0            [12]  928 	orl	a,b
      00037E 60 03            [24]  929 	jz	00140$
      000380 02 04 11         [24]  930 	ljmp	00104$
      000383                        931 00140$:
                                    932 ;	src/pwm_dac.c:382: int16_t *p = (int16_t *)&wav_buf[i];  //16位音频数据
      000383 E5 1B            [12]  933 	mov	a,_dac_send_i_65536_23
      000385 24 46            [12]  934 	add	a,#_wav_buf
      000387 FE               [12]  935 	mov	r6,a
      000388 E5 1C            [12]  936 	mov	a,(_dac_send_i_65536_23 + 1)
      00038A 34 09            [12]  937 	addc	a,#(_wav_buf >> 8)
      00038C FF               [12]  938 	mov	r7,a
      00038D 7D 80            [12]  939 	mov	r5,#0x80
                                    940 ;	src/pwm_dac.c:383: predsample = *p;
      00038F 8E 82            [24]  941 	mov	dpl,r6
      000391 8F 83            [24]  942 	mov	dph,r7
      000393 8D F0            [24]  943 	mov	b,r5
      000395 12 08 64         [24]  944 	lcall	__gptrget
      000398 FE               [12]  945 	mov	r6,a
      000399 A3               [24]  946 	inc	dptr
      00039A 12 08 64         [24]  947 	lcall	__gptrget
      00039D FF               [12]  948 	mov	r7,a
      00039E 8E 14            [24]  949 	mov	_predsample,r6
      0003A0 EF               [12]  950 	mov	a,r7
      0003A1 F5 15            [12]  951 	mov	(_predsample + 1),a
      0003A3 33               [12]  952 	rlc	a
      0003A4 95 E0            [12]  953 	subb	a,acc
      0003A6 F5 16            [12]  954 	mov	(_predsample + 2),a
      0003A8 F5 17            [12]  955 	mov	(_predsample + 3),a
                                    956 ;	src/pwm_dac.c:384: i+=2;
      0003AA 74 02            [12]  957 	mov	a,#0x02
      0003AC 25 1B            [12]  958 	add	a,_dac_send_i_65536_23
      0003AE F5 1B            [12]  959 	mov	_dac_send_i_65536_23,a
      0003B0 E4               [12]  960 	clr	a
      0003B1 35 1C            [12]  961 	addc	a,(_dac_send_i_65536_23 + 1)
      0003B3 F5 1C            [12]  962 	mov	(_dac_send_i_65536_23 + 1),a
                                    963 ;	src/pwm_dac.c:385: dac_buff1[dac_write] = (predsample/256)+128;  //转换为8bit
      0003B5 E5 11            [12]  964 	mov	a,_dac_write
      0003B7 24 01            [12]  965 	add	a,#_dac_buff1
      0003B9 FE               [12]  966 	mov	r6,a
      0003BA E4               [12]  967 	clr	a
      0003BB 34 00            [12]  968 	addc	a,#(_dac_buff1 >> 8)
      0003BD FF               [12]  969 	mov	r7,a
      0003BE E4               [12]  970 	clr	a
      0003BF F5 2B            [12]  971 	mov	__divslong_PARM_2,a
      0003C1 75 2C 01         [24]  972 	mov	(__divslong_PARM_2 + 1),#0x01
      0003C4 F5 2D            [12]  973 	mov	(__divslong_PARM_2 + 2),a
      0003C6 F5 2E            [12]  974 	mov	(__divslong_PARM_2 + 3),a
      0003C8 85 14 82         [24]  975 	mov	dpl,_predsample
      0003CB 85 15 83         [24]  976 	mov	dph,(_predsample + 1)
      0003CE 85 16 F0         [24]  977 	mov	b,(_predsample + 2)
      0003D1 E5 17            [12]  978 	mov	a,(_predsample + 3)
      0003D3 C0 07            [24]  979 	push	ar7
      0003D5 C0 06            [24]  980 	push	ar6
      0003D7 12 08 12         [24]  981 	lcall	__divslong
      0003DA AA 82            [24]  982 	mov	r2,dpl
      0003DC D0 06            [24]  983 	pop	ar6
      0003DE D0 07            [24]  984 	pop	ar7
      0003E0 74 80            [12]  985 	mov	a,#0x80
      0003E2 2A               [12]  986 	add	a,r2
      0003E3 8E 82            [24]  987 	mov	dpl,r6
      0003E5 8F 83            [24]  988 	mov	dph,r7
      0003E7 F0               [24]  989 	movx	@dptr,a
                                    990 ;	src/pwm_dac.c:386: printf_byte(dac_buff1[dac_write]);            //串口输出音频数据
      0003E8 8E 82            [24]  991 	mov	dpl,r6
      0003EA 8F 83            [24]  992 	mov	dph,r7
      0003EC E0               [24]  993 	movx	a,@dptr
      0003ED F5 82            [12]  994 	mov	dpl,a
      0003EF 12 07 33         [24]  995 	lcall	_printf_byte
                                    996 ;	src/pwm_dac.c:387: dac_write++;
      0003F2 05 11            [12]  997 	inc	_dac_write
                                    998 ;	src/pwm_dac.c:389: index = wav_buf[i++];
      0003F4 AE 1B            [24]  999 	mov	r6,_dac_send_i_65536_23
      0003F6 AF 1C            [24] 1000 	mov	r7,(_dac_send_i_65536_23 + 1)
      0003F8 05 1B            [12] 1001 	inc	_dac_send_i_65536_23
      0003FA E4               [12] 1002 	clr	a
      0003FB B5 1B 02         [24] 1003 	cjne	a,_dac_send_i_65536_23,00141$
      0003FE 05 1C            [12] 1004 	inc	(_dac_send_i_65536_23 + 1)
      000400                       1005 00141$:
      000400 EE               [12] 1006 	mov	a,r6
      000401 24 46            [12] 1007 	add	a,#_wav_buf
      000403 F5 82            [12] 1008 	mov	dpl,a
      000405 EF               [12] 1009 	mov	a,r7
      000406 34 09            [12] 1010 	addc	a,#(_wav_buf >> 8)
      000408 F5 83            [12] 1011 	mov	dph,a
      00040A E4               [12] 1012 	clr	a
      00040B 93               [24] 1013 	movc	a,@a+dptr
      00040C F5 13            [12] 1014 	mov	_index,a
      00040E 02 03 54         [24] 1015 	ljmp	00107$
      000411                       1016 00104$:
                                   1017 ;	src/pwm_dac.c:393: dac_buff1[dac_write] = ADPCM_Decode(wav_buf[i]&0x0f);
      000411 E5 11            [12] 1018 	mov	a,_dac_write
      000413 24 01            [12] 1019 	add	a,#_dac_buff1
      000415 FE               [12] 1020 	mov	r6,a
      000416 E4               [12] 1021 	clr	a
      000417 34 00            [12] 1022 	addc	a,#(_dac_buff1 >> 8)
      000419 FF               [12] 1023 	mov	r7,a
      00041A E5 1B            [12] 1024 	mov	a,_dac_send_i_65536_23
      00041C 24 46            [12] 1025 	add	a,#_wav_buf
      00041E F5 82            [12] 1026 	mov	dpl,a
      000420 E5 1C            [12] 1027 	mov	a,(_dac_send_i_65536_23 + 1)
      000422 34 09            [12] 1028 	addc	a,#(_wav_buf >> 8)
      000424 F5 83            [12] 1029 	mov	dph,a
      000426 E4               [12] 1030 	clr	a
      000427 93               [24] 1031 	movc	a,@a+dptr
      000428 FD               [12] 1032 	mov	r5,a
      000429 74 0F            [12] 1033 	mov	a,#0x0f
      00042B 5D               [12] 1034 	anl	a,r5
      00042C F5 82            [12] 1035 	mov	dpl,a
      00042E C0 07            [24] 1036 	push	ar7
      000430 C0 06            [24] 1037 	push	ar6
      000432 12 01 68         [24] 1038 	lcall	_ADPCM_Decode
      000435 AD 82            [24] 1039 	mov	r5,dpl
      000437 D0 06            [24] 1040 	pop	ar6
      000439 D0 07            [24] 1041 	pop	ar7
      00043B 8E 82            [24] 1042 	mov	dpl,r6
      00043D 8F 83            [24] 1043 	mov	dph,r7
      00043F ED               [12] 1044 	mov	a,r5
      000440 F0               [24] 1045 	movx	@dptr,a
                                   1046 ;	src/pwm_dac.c:394: printf_byte(dac_buff1[dac_write]);
      000441 E5 11            [12] 1047 	mov	a,_dac_write
      000443 24 01            [12] 1048 	add	a,#_dac_buff1
      000445 F5 82            [12] 1049 	mov	dpl,a
      000447 E4               [12] 1050 	clr	a
      000448 34 00            [12] 1051 	addc	a,#(_dac_buff1 >> 8)
      00044A F5 83            [12] 1052 	mov	dph,a
      00044C E0               [24] 1053 	movx	a,@dptr
      00044D F5 82            [12] 1054 	mov	dpl,a
      00044F 12 07 33         [24] 1055 	lcall	_printf_byte
                                   1056 ;	src/pwm_dac.c:395: dac_write++;
      000452 05 11            [12] 1057 	inc	_dac_write
                                   1058 ;	src/pwm_dac.c:396: dac_buff1[dac_write] = ADPCM_Decode(wav_buf[i]>>4);
      000454 E5 11            [12] 1059 	mov	a,_dac_write
      000456 24 01            [12] 1060 	add	a,#_dac_buff1
      000458 FE               [12] 1061 	mov	r6,a
      000459 E4               [12] 1062 	clr	a
      00045A 34 00            [12] 1063 	addc	a,#(_dac_buff1 >> 8)
      00045C FF               [12] 1064 	mov	r7,a
      00045D E5 1B            [12] 1065 	mov	a,_dac_send_i_65536_23
      00045F 24 46            [12] 1066 	add	a,#_wav_buf
      000461 F5 82            [12] 1067 	mov	dpl,a
      000463 E5 1C            [12] 1068 	mov	a,(_dac_send_i_65536_23 + 1)
      000465 34 09            [12] 1069 	addc	a,#(_wav_buf >> 8)
      000467 F5 83            [12] 1070 	mov	dph,a
      000469 E4               [12] 1071 	clr	a
      00046A 93               [24] 1072 	movc	a,@a+dptr
      00046B C4               [12] 1073 	swap	a
      00046C 54 0F            [12] 1074 	anl	a,#0x0f
      00046E F5 82            [12] 1075 	mov	dpl,a
      000470 C0 07            [24] 1076 	push	ar7
      000472 C0 06            [24] 1077 	push	ar6
      000474 12 01 68         [24] 1078 	lcall	_ADPCM_Decode
      000477 AD 82            [24] 1079 	mov	r5,dpl
      000479 D0 06            [24] 1080 	pop	ar6
      00047B D0 07            [24] 1081 	pop	ar7
      00047D 8E 82            [24] 1082 	mov	dpl,r6
      00047F 8F 83            [24] 1083 	mov	dph,r7
      000481 ED               [12] 1084 	mov	a,r5
      000482 F0               [24] 1085 	movx	@dptr,a
                                   1086 ;	src/pwm_dac.c:397: printf_byte(dac_buff1[dac_write]);
      000483 E5 11            [12] 1087 	mov	a,_dac_write
      000485 24 01            [12] 1088 	add	a,#_dac_buff1
      000487 F5 82            [12] 1089 	mov	dpl,a
      000489 E4               [12] 1090 	clr	a
      00048A 34 00            [12] 1091 	addc	a,#(_dac_buff1 >> 8)
      00048C F5 83            [12] 1092 	mov	dph,a
      00048E E0               [24] 1093 	movx	a,@dptr
      00048F F5 82            [12] 1094 	mov	dpl,a
      000491 12 07 33         [24] 1095 	lcall	_printf_byte
                                   1096 ;	src/pwm_dac.c:398: dac_write++;
      000494 05 11            [12] 1097 	inc	_dac_write
                                   1098 ;	src/pwm_dac.c:399: i++;
      000496 05 1B            [12] 1099 	inc	_dac_send_i_65536_23
      000498 E4               [12] 1100 	clr	a
      000499 B5 1B 02         [24] 1101 	cjne	a,_dac_send_i_65536_23,00142$
      00049C 05 1C            [12] 1102 	inc	(_dac_send_i_65536_23 + 1)
      00049E                       1103 00142$:
                                   1104 ;	src/pwm_dac.c:400: if(i == (uint16_t)sizeof(wav_buf))  //解码结束
      00049E 74 AA            [12] 1105 	mov	a,#0xaa
      0004A0 B5 1B 07         [24] 1106 	cjne	a,_dac_send_i_65536_23,00143$
      0004A3 74 0C            [12] 1107 	mov	a,#0x0c
      0004A5 B5 1C 02         [24] 1108 	cjne	a,(_dac_send_i_65536_23 + 1),00143$
      0004A8 80 03            [24] 1109 	sjmp	00144$
      0004AA                       1110 00143$:
      0004AA 02 03 54         [24] 1111 	ljmp	00107$
      0004AD                       1112 00144$:
                                   1113 ;	src/pwm_dac.c:402: i = 0;
      0004AD E4               [12] 1114 	clr	a
      0004AE F5 1B            [12] 1115 	mov	_dac_send_i_65536_23,a
      0004B0 F5 1C            [12] 1116 	mov	(_dac_send_i_65536_23 + 1),a
                                   1117 ;	src/pwm_dac.c:403: index = 0;
                                   1118 ;	1-genFromRTrack replaced	mov	_index,#0x00
      0004B2 F5 13            [12] 1119 	mov	_index,a
                                   1120 ;	src/pwm_dac.c:404: predsample = 0;
      0004B4 F5 14            [12] 1121 	mov	_predsample,a
      0004B6 F5 15            [12] 1122 	mov	(_predsample + 1),a
      0004B8 F5 16            [12] 1123 	mov	(_predsample + 2),a
      0004BA F5 17            [12] 1124 	mov	(_predsample + 3),a
                                   1125 ;	src/pwm_dac.c:405: return 0;
      0004BC 75 82 00         [24] 1126 	mov	dpl,#0x00
      0004BF 22               [24] 1127 	ret
      0004C0                       1128 00109$:
                                   1129 ;	src/pwm_dac.c:410: if(dac_sendflag == 0)
      0004C0 E5 12            [12] 1130 	mov	a,_dac_sendflag
      0004C2 70 25            [24] 1131 	jnz	00111$
                                   1132 ;	src/pwm_dac.c:412: PWM2_CNTRH = 0x00;
      0004C4 90 FE EE         [24] 1133 	mov	dptr,#0xfeee
      0004C7 E4               [12] 1134 	clr	a
      0004C8 F0               [24] 1135 	movx	@dptr,a
                                   1136 ;	src/pwm_dac.c:413: PWM2_CNTRL = 0x00;
      0004C9 90 FE EF         [24] 1137 	mov	dptr,#0xfeef
      0004CC F0               [24] 1138 	movx	@dptr,a
                                   1139 ;	src/pwm_dac.c:415: PWM2_ARRH = 0x0A;
      0004CD 90 FE F2         [24] 1140 	mov	dptr,#0xfef2
      0004D0 74 0A            [12] 1141 	mov	a,#0x0a
      0004D2 F0               [24] 1142 	movx	@dptr,a
                                   1143 ;	src/pwm_dac.c:416: PWM2_ARRL = 0xCD;
      0004D3 90 FE F3         [24] 1144 	mov	dptr,#0xfef3
      0004D6 74 CD            [12] 1145 	mov	a,#0xcd
      0004D8 F0               [24] 1146 	movx	@dptr,a
                                   1147 ;	src/pwm_dac.c:418: PWM2_SR1 = 0x00;
      0004D9 90 FE E5         [24] 1148 	mov	dptr,#0xfee5
      0004DC E4               [12] 1149 	clr	a
      0004DD F0               [24] 1150 	movx	@dptr,a
                                   1151 ;	src/pwm_dac.c:419: PWM2_IER = 0x01;
      0004DE 90 FE E4         [24] 1152 	mov	dptr,#0xfee4
      0004E1 04               [12] 1153 	inc	a
      0004E2 F0               [24] 1154 	movx	@dptr,a
                                   1155 ;	src/pwm_dac.c:420: PWM2_CR1 = 0x01;
      0004E3 90 FE E0         [24] 1156 	mov	dptr,#0xfee0
      0004E6 F0               [24] 1157 	movx	@dptr,a
                                   1158 ;	src/pwm_dac.c:421: dac_sendflag = 1;
                                   1159 ;	1-genFromRTrack replaced	mov	_dac_sendflag,#0x01
      0004E7 F5 12            [12] 1160 	mov	_dac_sendflag,a
      0004E9                       1161 00111$:
                                   1162 ;	src/pwm_dac.c:423: return 1;
      0004E9 75 82 01         [24] 1163 	mov	dpl,#0x01
                                   1164 ;	src/pwm_dac.c:424: }
      0004EC 22               [24] 1165 	ret
                                   1166 	.area CSEG    (CODE)
                                   1167 	.area CONST   (CODE)
      000884                       1168 _StepSizeTable:
      000884 07 00                 1169 	.byte #0x07, #0x00	; 7
      000886 08 00                 1170 	.byte #0x08, #0x00	; 8
      000888 09 00                 1171 	.byte #0x09, #0x00	; 9
      00088A 0A 00                 1172 	.byte #0x0a, #0x00	; 10
      00088C 0B 00                 1173 	.byte #0x0b, #0x00	; 11
      00088E 0C 00                 1174 	.byte #0x0c, #0x00	; 12
      000890 0D 00                 1175 	.byte #0x0d, #0x00	; 13
      000892 0E 00                 1176 	.byte #0x0e, #0x00	; 14
      000894 10 00                 1177 	.byte #0x10, #0x00	; 16
      000896 11 00                 1178 	.byte #0x11, #0x00	; 17
      000898 13 00                 1179 	.byte #0x13, #0x00	; 19
      00089A 15 00                 1180 	.byte #0x15, #0x00	; 21
      00089C 17 00                 1181 	.byte #0x17, #0x00	; 23
      00089E 19 00                 1182 	.byte #0x19, #0x00	; 25
      0008A0 1C 00                 1183 	.byte #0x1c, #0x00	; 28
      0008A2 1F 00                 1184 	.byte #0x1f, #0x00	; 31
      0008A4 22 00                 1185 	.byte #0x22, #0x00	; 34
      0008A6 25 00                 1186 	.byte #0x25, #0x00	; 37
      0008A8 29 00                 1187 	.byte #0x29, #0x00	; 41
      0008AA 2D 00                 1188 	.byte #0x2d, #0x00	; 45
      0008AC 32 00                 1189 	.byte #0x32, #0x00	; 50
      0008AE 37 00                 1190 	.byte #0x37, #0x00	; 55
      0008B0 3C 00                 1191 	.byte #0x3c, #0x00	; 60
      0008B2 42 00                 1192 	.byte #0x42, #0x00	; 66
      0008B4 49 00                 1193 	.byte #0x49, #0x00	; 73
      0008B6 50 00                 1194 	.byte #0x50, #0x00	; 80
      0008B8 58 00                 1195 	.byte #0x58, #0x00	; 88
      0008BA 61 00                 1196 	.byte #0x61, #0x00	; 97
      0008BC 6B 00                 1197 	.byte #0x6b, #0x00	; 107
      0008BE 76 00                 1198 	.byte #0x76, #0x00	; 118
      0008C0 82 00                 1199 	.byte #0x82, #0x00	; 130
      0008C2 8F 00                 1200 	.byte #0x8f, #0x00	; 143
      0008C4 9D 00                 1201 	.byte #0x9d, #0x00	; 157
      0008C6 AD 00                 1202 	.byte #0xad, #0x00	; 173
      0008C8 BE 00                 1203 	.byte #0xbe, #0x00	; 190
      0008CA D1 00                 1204 	.byte #0xd1, #0x00	; 209
      0008CC E6 00                 1205 	.byte #0xe6, #0x00	; 230
      0008CE FD 00                 1206 	.byte #0xfd, #0x00	; 253
      0008D0 17 01                 1207 	.byte #0x17, #0x01	; 279
      0008D2 33 01                 1208 	.byte #0x33, #0x01	; 307
      0008D4 51 01                 1209 	.byte #0x51, #0x01	; 337
      0008D6 73 01                 1210 	.byte #0x73, #0x01	; 371
      0008D8 98 01                 1211 	.byte #0x98, #0x01	; 408
      0008DA C1 01                 1212 	.byte #0xc1, #0x01	; 449
      0008DC EE 01                 1213 	.byte #0xee, #0x01	; 494
      0008DE 20 02                 1214 	.byte #0x20, #0x02	; 544
      0008E0 56 02                 1215 	.byte #0x56, #0x02	; 598
      0008E2 92 02                 1216 	.byte #0x92, #0x02	; 658
      0008E4 D4 02                 1217 	.byte #0xd4, #0x02	; 724
      0008E6 1C 03                 1218 	.byte #0x1c, #0x03	; 796
      0008E8 6C 03                 1219 	.byte #0x6c, #0x03	; 876
      0008EA C3 03                 1220 	.byte #0xc3, #0x03	; 963
      0008EC 24 04                 1221 	.byte #0x24, #0x04	; 1060
      0008EE 8E 04                 1222 	.byte #0x8e, #0x04	; 1166
      0008F0 02 05                 1223 	.byte #0x02, #0x05	; 1282
      0008F2 83 05                 1224 	.byte #0x83, #0x05	; 1411
      0008F4 10 06                 1225 	.byte #0x10, #0x06	; 1552
      0008F6 AB 06                 1226 	.byte #0xab, #0x06	; 1707
      0008F8 56 07                 1227 	.byte #0x56, #0x07	; 1878
      0008FA 12 08                 1228 	.byte #0x12, #0x08	; 2066
      0008FC E0 08                 1229 	.byte #0xe0, #0x08	; 2272
      0008FE C3 09                 1230 	.byte #0xc3, #0x09	; 2499
      000900 BD 0A                 1231 	.byte #0xbd, #0x0a	; 2749
      000902 D0 0B                 1232 	.byte #0xd0, #0x0b	; 3024
      000904 FF 0C                 1233 	.byte #0xff, #0x0c	; 3327
      000906 4C 0E                 1234 	.byte #0x4c, #0x0e	; 3660
      000908 BA 0F                 1235 	.byte #0xba, #0x0f	; 4026
      00090A 4C 11                 1236 	.byte #0x4c, #0x11	; 4428
      00090C 07 13                 1237 	.byte #0x07, #0x13	; 4871
      00090E EE 14                 1238 	.byte #0xee, #0x14	; 5358
      000910 06 17                 1239 	.byte #0x06, #0x17	; 5894
      000912 54 19                 1240 	.byte #0x54, #0x19	; 6484
      000914 DC 1B                 1241 	.byte #0xdc, #0x1b	; 7132
      000916 A5 1E                 1242 	.byte #0xa5, #0x1e	; 7845
      000918 B6 21                 1243 	.byte #0xb6, #0x21	; 8630
      00091A 15 25                 1244 	.byte #0x15, #0x25	; 9493
      00091C CA 28                 1245 	.byte #0xca, #0x28	; 10442
      00091E DF 2C                 1246 	.byte #0xdf, #0x2c	; 11487
      000920 5B 31                 1247 	.byte #0x5b, #0x31	; 12635
      000922 4B 36                 1248 	.byte #0x4b, #0x36	; 13899
      000924 B9 3B                 1249 	.byte #0xb9, #0x3b	; 15289
      000926 B2 41                 1250 	.byte #0xb2, #0x41	; 16818
      000928 44 48                 1251 	.byte #0x44, #0x48	; 18500
      00092A 7E 4F                 1252 	.byte #0x7e, #0x4f	; 20350
      00092C 71 57                 1253 	.byte #0x71, #0x57	; 22385
      00092E 2F 60                 1254 	.byte #0x2f, #0x60	; 24623
      000930 CE 69                 1255 	.byte #0xce, #0x69	; 27086
      000932 62 74                 1256 	.byte #0x62, #0x74	; 29794
      000934 FF 7F                 1257 	.byte #0xff, #0x7f	; 32767
      000936                       1258 _IndexTable:
      000936 FF                    1259 	.db #0xff	; -1
      000937 FF                    1260 	.db #0xff	; -1
      000938 FF                    1261 	.db #0xff	; -1
      000939 FF                    1262 	.db #0xff	; -1
      00093A 02                    1263 	.db #0x02	;  2
      00093B 04                    1264 	.db #0x04	;  4
      00093C 06                    1265 	.db #0x06	;  6
      00093D 08                    1266 	.db #0x08	;  8
      00093E FF                    1267 	.db #0xff	; -1
      00093F FF                    1268 	.db #0xff	; -1
      000940 FF                    1269 	.db #0xff	; -1
      000941 FF                    1270 	.db #0xff	; -1
      000942 02                    1271 	.db #0x02	;  2
      000943 04                    1272 	.db #0x04	;  4
      000944 06                    1273 	.db #0x06	;  6
      000945 08                    1274 	.db #0x08	;  8
      000946                       1275 _wav_buf:
      000946 07                    1276 	.db #0x07	; 7
      000947 00                    1277 	.db #0x00	; 0
      000948 00                    1278 	.db #0x00	; 0
      000949 5F                    1279 	.db #0x5f	; 95
      00094A 1F                    1280 	.db #0x1f	; 31
      00094B 50                    1281 	.db #0x50	; 80	'P'
      00094C 11                    1282 	.db #0x11	; 17
      00094D 9D                    1283 	.db #0x9d	; 157
      00094E 99                    1284 	.db #0x99	; 153
      00094F 60                    1285 	.db #0x60	; 96
      000950 89                    1286 	.db #0x89	; 137
      000951 BC                    1287 	.db #0xbc	; 188
      000952 9C                    1288 	.db #0x9c	; 156
      000953 60                    1289 	.db #0x60	; 96
      000954 10                    1290 	.db #0x10	; 16
      000955 6B                    1291 	.db #0x6b	; 107	'k'
      000956 79                    1292 	.db #0x79	; 121	'y'
      000957 52                    1293 	.db #0x52	; 82	'R'
      000958 92                    1294 	.db #0x92	; 146
      000959 DE                    1295 	.db #0xde	; 222
      00095A 8A                    1296 	.db #0x8a	; 138
      00095B 31                    1297 	.db #0x31	; 49	'1'
      00095C 15                    1298 	.db #0x15	; 21
      00095D B0                    1299 	.db #0xb0	; 176
      00095E BB                    1300 	.db #0xbb	; 187
      00095F 18                    1301 	.db #0x18	; 24
      000960 26                    1302 	.db #0x26	; 38
      000961 81                    1303 	.db #0x81	; 129
      000962 BB                    1304 	.db #0xbb	; 187
      000963 9A                    1305 	.db #0x9a	; 154
      000964 43                    1306 	.db #0x43	; 67	'C'
      000965 02                    1307 	.db #0x02	; 2
      000966 B8                    1308 	.db #0xb8	; 184
      000967 AA                    1309 	.db #0xaa	; 170
      000968 20                    1310 	.db #0x20	; 32
      000969 24                    1311 	.db #0x24	; 36
      00096A 90                    1312 	.db #0x90	; 144
      00096B AB                    1313 	.db #0xab	; 171
      00096C 0A                    1314 	.db #0x0a	; 10
      00096D 21                    1315 	.db #0x21	; 33
      00096E 82                    1316 	.db #0x82	; 130
      00096F 19                    1317 	.db #0x19	; 25
      000970 04                    1318 	.db #0x04	; 4
      000971 84                    1319 	.db #0x84	; 132
      000972 BE                    1320 	.db #0xbe	; 190
      000973 8B                    1321 	.db #0x8b	; 139
      000974 27                    1322 	.db #0x27	; 39
      000975 90                    1323 	.db #0x90	; 144
      000976 CD                    1324 	.db #0xcd	; 205
      000977 3A                    1325 	.db #0x3a	; 58
      000978 36                    1326 	.db #0x36	; 54	'6'
      000979 94                    1327 	.db #0x94	; 148
      00097A CB                    1328 	.db #0xcb	; 203
      00097B 9A                    1329 	.db #0x9a	; 154
      00097C 31                    1330 	.db #0x31	; 49	'1'
      00097D 03                    1331 	.db #0x03	; 3
      00097E A1                    1332 	.db #0xa1	; 161
      00097F BB                    1333 	.db #0xbb	; 187
      000980 79                    1334 	.db #0x79	; 121	'y'
      000981 12                    1335 	.db #0x12	; 18
      000982 AA                    1336 	.db #0xaa	; 170
      000983 AC                    1337 	.db #0xac	; 172
      000984 32                    1338 	.db #0x32	; 50	'2'
      000985 25                    1339 	.db #0x25	; 37
      000986 A1                    1340 	.db #0xa1	; 161
      000987 DB                    1341 	.db #0xdb	; 219
      000988 AB                    1342 	.db #0xab	; 171
      000989 32                    1343 	.db #0x32	; 50	'2'
      00098A 27                    1344 	.db #0x27	; 39
      00098B 81                    1345 	.db #0x81	; 129
      00098C CB                    1346 	.db #0xcb	; 203
      00098D 0B                    1347 	.db #0x0b	; 11
      00098E 14                    1348 	.db #0x14	; 20
      00098F 80                    1349 	.db #0x80	; 128
      000990 88                    1350 	.db #0x88	; 136
      000991 A8                    1351 	.db #0xa8	; 168
      000992 88                    1352 	.db #0x88	; 136
      000993 11                    1353 	.db #0x11	; 17
      000994 C8                    1354 	.db #0xc8	; 200
      000995 38                    1355 	.db #0x38	; 56	'8'
      000996 26                    1356 	.db #0x26	; 38
      000997 CA                    1357 	.db #0xca	; 202
      000998 40                    1358 	.db #0x40	; 64
      000999 13                    1359 	.db #0x13	; 19
      00099A F9                    1360 	.db #0xf9	; 249
      00099B DB                    1361 	.db #0xdb	; 219
      00099C 10                    1362 	.db #0x10	; 16
      00099D 34                    1363 	.db #0x34	; 52	'4'
      00099E 01                    1364 	.db #0x01	; 1
      00099F C9                    1365 	.db #0xc9	; 201
      0009A0 9A                    1366 	.db #0x9a	; 154
      0009A1 82                    1367 	.db #0x82	; 130
      0009A2 90                    1368 	.db #0x90	; 144
      0009A3 09                    1369 	.db #0x09	; 9
      0009A4 35                    1370 	.db #0x35	; 53	'5'
      0009A5 13                    1371 	.db #0x13	; 19
      0009A6 FB                    1372 	.db #0xfb	; 251
      0009A7 0B                    1373 	.db #0x0b	; 11
      0009A8 14                    1374 	.db #0x14	; 20
      0009A9 B0                    1375 	.db #0xb0	; 176
      0009AA 8C                    1376 	.db #0x8c	; 140
      0009AB 44                    1377 	.db #0x44	; 68	'D'
      0009AC 92                    1378 	.db #0x92	; 146
      0009AD AE                    1379 	.db #0xae	; 174
      0009AE 19                    1380 	.db #0x19	; 25
      0009AF 22                    1381 	.db #0x22	; 34
      0009B0 20                    1382 	.db #0x20	; 32
      0009B1 98                    1383 	.db #0x98	; 152
      0009B2 8B                    1384 	.db #0x8b	; 139
      0009B3 12                    1385 	.db #0x12	; 18
      0009B4 E3                    1386 	.db #0xe3	; 227
      0009B5 9B                    1387 	.db #0x9b	; 155
      0009B6 03                    1388 	.db #0x03	; 3
      0009B7 02                    1389 	.db #0x02	; 2
      0009B8 C8                    1390 	.db #0xc8	; 200
      0009B9 13                    1391 	.db #0x13	; 19
      0009BA A9                    1392 	.db #0xa9	; 169
      0009BB 17                    1393 	.db #0x17	; 23
      0009BC B9                    1394 	.db #0xb9	; 185
      0009BD 8F                    1395 	.db #0x8f	; 143
      0009BE 41                    1396 	.db #0x41	; 65	'A'
      0009BF 12                    1397 	.db #0x12	; 18
      0009C0 98                    1398 	.db #0x98	; 152
      0009C1 BE                    1399 	.db #0xbe	; 190
      0009C2 19                    1400 	.db #0x19	; 25
      0009C3 34                    1401 	.db #0x34	; 52	'4'
      0009C4 90                    1402 	.db #0x90	; 144
      0009C5 98                    1403 	.db #0x98	; 152
      0009C6 AC                    1404 	.db #0xac	; 172
      0009C7 43                    1405 	.db #0x43	; 67	'C'
      0009C8 84                    1406 	.db #0x84	; 132
      0009C9 E9                    1407 	.db #0xe9	; 233
      0009CA 98                    1408 	.db #0x98	; 152
      0009CB 32                    1409 	.db #0x32	; 50	'2'
      0009CC 22                    1410 	.db #0x22	; 34
      0009CD C8                    1411 	.db #0xc8	; 200
      0009CE 9E                    1412 	.db #0x9e	; 158
      0009CF 22                    1413 	.db #0x22	; 34
      0009D0 B1                    1414 	.db #0xb1	; 177
      0009D1 C8                    1415 	.db #0xc8	; 200
      0009D2 4A                    1416 	.db #0x4a	; 74	'J'
      0009D3 54                    1417 	.db #0x54	; 84	'T'
      0009D4 98                    1418 	.db #0x98	; 152
      0009D5 BB                    1419 	.db #0xbb	; 187
      0009D6 98                    1420 	.db #0x98	; 152
      0009D7 25                    1421 	.db #0x25	; 37
      0009D8 92                    1422 	.db #0x92	; 146
      0009D9 9B                    1423 	.db #0x9b	; 155
      0009DA 61                    1424 	.db #0x61	; 97	'a'
      0009DB A0                    1425 	.db #0xa0	; 160
      0009DC CA                    1426 	.db #0xca	; 202
      0009DD 20                    1427 	.db #0x20	; 32
      0009DE 02                    1428 	.db #0x02	; 2
      0009DF 28                    1429 	.db #0x28	; 40
      0009E0 22                    1430 	.db #0x22	; 34
      0009E1 EA                    1431 	.db #0xea	; 234
      0009E2 AF                    1432 	.db #0xaf	; 175
      0009E3 20                    1433 	.db #0x20	; 32
      0009E4 35                    1434 	.db #0x35	; 53	'5'
      0009E5 C0                    1435 	.db #0xc0	; 192
      0009E6 AB                    1436 	.db #0xab	; 171
      0009E7 41                    1437 	.db #0x41	; 65	'A'
      0009E8 03                    1438 	.db #0x03	; 3
      0009E9 CA                    1439 	.db #0xca	; 202
      0009EA 8C                    1440 	.db #0x8c	; 140
      0009EB 62                    1441 	.db #0x62	; 98	'b'
      0009EC 82                    1442 	.db #0x82	; 130
      0009ED CA                    1443 	.db #0xca	; 202
      0009EE 09                    1444 	.db #0x09	; 9
      0009EF 33                    1445 	.db #0x33	; 51	'3'
      0009F0 98                    1446 	.db #0x98	; 152
      0009F1 AA                    1447 	.db #0xaa	; 170
      0009F2 30                    1448 	.db #0x30	; 48	'0'
      0009F3 13                    1449 	.db #0x13	; 19
      0009F4 EB                    1450 	.db #0xeb	; 235
      0009F5 19                    1451 	.db #0x19	; 25
      0009F6 14                    1452 	.db #0x14	; 20
      0009F7 AA                    1453 	.db #0xaa	; 170
      0009F8 0A                    1454 	.db #0x0a	; 10
      0009F9 32                    1455 	.db #0x32	; 50	'2'
      0009FA C0                    1456 	.db #0xc0	; 192
      0009FB 80                    1457 	.db #0x80	; 128
      0009FC 06                    1458 	.db #0x06	; 6
      0009FD C8                    1459 	.db #0xc8	; 200
      0009FE 89                    1460 	.db #0x89	; 137
      0009FF 31                    1461 	.db #0x31	; 49	'1'
      000A00 13                    1462 	.db #0x13	; 19
      000A01 EC                    1463 	.db #0xec	; 236
      000A02 09                    1464 	.db #0x09	; 9
      000A03 23                    1465 	.db #0x23	; 35
      000A04 A1                    1466 	.db #0xa1	; 161
      000A05 1C                    1467 	.db #0x1c	; 28
      000A06 22                    1468 	.db #0x22	; 34
      000A07 F1                    1469 	.db #0xf1	; 241
      000A08 8C                    1470 	.db #0x8c	; 140
      000A09 41                    1471 	.db #0x41	; 65	'A'
      000A0A 03                    1472 	.db #0x03	; 3
      000A0B C9                    1473 	.db #0xc9	; 201
      000A0C 89                    1474 	.db #0x89	; 137
      000A0D 15                    1475 	.db #0x15	; 21
      000A0E C8                    1476 	.db #0xc8	; 200
      000A0F 8A                    1477 	.db #0x8a	; 138
      000A10 31                    1478 	.db #0x31	; 49	'1'
      000A11 91                    1479 	.db #0x91	; 145
      000A12 A8                    1480 	.db #0xa8	; 168
      000A13 08                    1481 	.db #0x08	; 8
      000A14 25                    1482 	.db #0x25	; 37
      000A15 99                    1483 	.db #0x99	; 153
      000A16 AB                    1484 	.db #0xab	; 171
      000A17 51                    1485 	.db #0x51	; 81	'Q'
      000A18 C1                    1486 	.db #0xc1	; 193
      000A19 09                    1487 	.db #0x09	; 9
      000A1A 18                    1488 	.db #0x18	; 24
      000A1B A2                    1489 	.db #0xa2	; 162
      000A1C C0                    1490 	.db #0xc0	; 192
      000A1D 04                    1491 	.db #0x04	; 4
      000A1E 94                    1492 	.db #0x94	; 148
      000A1F 0A                    1493 	.db #0x0a	; 10
      000A20 B1                    1494 	.db #0xb1	; 177
      000A21 F1                    1495 	.db #0xf1	; 241
      000A22 43                    1496 	.db #0x43	; 67	'C'
      000A23 84                    1497 	.db #0x84	; 132
      000A24 31                    1498 	.db #0x31	; 49	'1'
      000A25 A0                    1499 	.db #0xa0	; 160
      000A26 DA                    1500 	.db #0xda	; 218
      000A27 28                    1501 	.db #0x28	; 40
      000A28 FD                    1502 	.db #0xfd	; 253
      000A29 9F                    1503 	.db #0x9f	; 159
      000A2A 30                    1504 	.db #0x30	; 48	'0'
      000A2B A1                    1505 	.db #0xa1	; 161
      000A2C 89                    1506 	.db #0x89	; 137
      000A2D 53                    1507 	.db #0x53	; 83	'S'
      000A2E 02                    1508 	.db #0x02	; 2
      000A2F 41                    1509 	.db #0x41	; 65	'A'
      000A30 04                    1510 	.db #0x04	; 4
      000A31 BB                    1511 	.db #0xbb	; 187
      000A32 38                    1512 	.db #0x38	; 56	'8'
      000A33 A4                    1513 	.db #0xa4	; 164
      000A34 FC                    1514 	.db #0xfc	; 252
      000A35 9B                    1515 	.db #0x9b	; 155
      000A36 10                    1516 	.db #0x10	; 16
      000A37 99                    1517 	.db #0x99	; 153
      000A38 0A                    1518 	.db #0x0a	; 10
      000A39 53                    1519 	.db #0x53	; 83	'S'
      000A3A 24                    1520 	.db #0x24	; 36
      000A3B 03                    1521 	.db #0x03	; 3
      000A3C 09                    1522 	.db #0x09	; 9
      000A3D 30                    1523 	.db #0x30	; 48	'0'
      000A3E 14                    1524 	.db #0x14	; 20
      000A3F B1                    1525 	.db #0xb1	; 177
      000A40 AA                    1526 	.db #0xaa	; 170
      000A41 BD                    1527 	.db #0xbd	; 189
      000A42 FF                    1528 	.db #0xff	; 255
      000A43 8A                    1529 	.db #0x8a	; 138
      000A44 02                    1530 	.db #0x02	; 2
      000A45 B5                    1531 	.db #0xb5	; 181
      000A46 B8                    1532 	.db #0xb8	; 184
      000A47 4B                    1533 	.db #0x4b	; 75	'K'
      000A48 30                    1534 	.db #0x30	; 48	'0'
      000A49 26                    1535 	.db #0x26	; 38
      000A4A 90                    1536 	.db #0x90	; 144
      000A4B 98                    1537 	.db #0x98	; 152
      000A4C A9                    1538 	.db #0xa9	; 169
      000A4D 48                    1539 	.db #0x48	; 72	'H'
      000A4E 15                    1540 	.db #0x15	; 21
      000A4F 98                    1541 	.db #0x98	; 152
      000A50 09                    1542 	.db #0x09	; 9
      000A51 D8                    1543 	.db #0xd8	; 216
      000A52 BD                    1544 	.db #0xbd	; 189
      000A53 08                    1545 	.db #0x08	; 8
      000A54 11                    1546 	.db #0x11	; 17
      000A55 50                    1547 	.db #0x50	; 80	'P'
      000A56 24                    1548 	.db #0x24	; 36
      000A57 B0                    1549 	.db #0xb0	; 176
      000A58 8A                    1550 	.db #0x8a	; 138
      000A59 98                    1551 	.db #0x98	; 152
      000A5A 48                    1552 	.db #0x48	; 72	'H'
      000A5B 54                    1553 	.db #0x54	; 84	'T'
      000A5C B0                    1554 	.db #0xb0	; 176
      000A5D 8A                    1555 	.db #0x8a	; 138
      000A5E A0                    1556 	.db #0xa0	; 160
      000A5F CC                    1557 	.db #0xcc	; 204
      000A60 0B                    1558 	.db #0x0b	; 11
      000A61 31                    1559 	.db #0x31	; 49	'1'
      000A62 31                    1560 	.db #0x31	; 49	'1'
      000A63 26                    1561 	.db #0x26	; 38
      000A64 B0                    1562 	.db #0xb0	; 176
      000A65 0B                    1563 	.db #0x0b	; 11
      000A66 00                    1564 	.db #0x00	; 0
      000A67 09                    1565 	.db #0x09	; 9
      000A68 37                    1566 	.db #0x37	; 55	'7'
      000A69 92                    1567 	.db #0x92	; 146
      000A6A AB                    1568 	.db #0xab	; 171
      000A6B AB                    1569 	.db #0xab	; 171
      000A6C DC                    1570 	.db #0xdc	; 220
      000A6D 8C                    1571 	.db #0x8c	; 140
      000A6E 22                    1572 	.db #0x22	; 34
      000A6F 43                    1573 	.db #0x43	; 67	'C'
      000A70 14                    1574 	.db #0x14	; 20
      000A71 BA                    1575 	.db #0xba	; 186
      000A72 8A                    1576 	.db #0x8a	; 138
      000A73 00                    1577 	.db #0x00	; 0
      000A74 43                    1578 	.db #0x43	; 67	'C'
      000A75 15                    1579 	.db #0x15	; 21
      000A76 98                    1580 	.db #0x98	; 152
      000A77 9A                    1581 	.db #0x9a	; 154
      000A78 CB                    1582 	.db #0xcb	; 203
      000A79 9C                    1583 	.db #0x9c	; 156
      000A7A BD                    1584 	.db #0xbd	; 189
      000A7B 52                    1585 	.db #0x52	; 82	'R'
      000A7C 13                    1586 	.db #0x13	; 19
      000A7D 30                    1587 	.db #0x30	; 48	'0'
      000A7E C1                    1588 	.db #0xc1	; 193
      000A7F 9D                    1589 	.db #0x9d	; 157
      000A80 21                    1590 	.db #0x21	; 33
      000A81 11                    1591 	.db #0x11	; 17
      000A82 51                    1592 	.db #0x51	; 81	'Q'
      000A83 A0                    1593 	.db #0xa0	; 160
      000A84 9B                    1594 	.db #0x9b	; 155
      000A85 A0                    1595 	.db #0xa0	; 160
      000A86 CB                    1596 	.db #0xcb	; 203
      000A87 BC                    1597 	.db #0xbc	; 188
      000A88 32                    1598 	.db #0x32	; 50	'2'
      000A89 27                    1599 	.db #0x27	; 39
      000A8A 00                    1600 	.db #0x00	; 0
      000A8B 99                    1601 	.db #0x99	; 153
      000A8C AA                    1602 	.db #0xaa	; 170
      000A8D 20                    1603 	.db #0x20	; 32
      000A8E 16                    1604 	.db #0x16	; 22
      000A8F 11                    1605 	.db #0x11	; 17
      000A90 81                    1606 	.db #0x81	; 129
      000A91 CB                    1607 	.db #0xcb	; 203
      000A92 89                    1608 	.db #0x89	; 137
      000A93 CA                    1609 	.db #0xca	; 202
      000A94 BE                    1610 	.db #0xbe	; 190
      000A95 22                    1611 	.db #0x22	; 34
      000A96 33                    1612 	.db #0x33	; 51	'3'
      000A97 25                    1613 	.db #0x25	; 37
      000A98 BB                    1614 	.db #0xbb	; 187
      000A99 9B                    1615 	.db #0x9b	; 155
      000A9A 30                    1616 	.db #0x30	; 48	'0'
      000A9B 36                    1617 	.db #0x36	; 54	'6'
      000A9C 01                    1618 	.db #0x01	; 1
      000A9D 00                    1619 	.db #0x00	; 0
      000A9E AD                    1620 	.db #0xad	; 173
      000A9F 08                    1621 	.db #0x08	; 8
      000AA0 E9                    1622 	.db #0xe9	; 233
      000AA1 CA                    1623 	.db #0xca	; 202
      000AA2 48                    1624 	.db #0x48	; 72	'H'
      000AA3 21                    1625 	.db #0x21	; 33
      000AA4 42                    1626 	.db #0x42	; 66	'B'
      000AA5 D8                    1627 	.db #0xd8	; 216
      000AA6 8A                    1628 	.db #0x8a	; 138
      000AA7 10                    1629 	.db #0x10	; 16
      000AA8 42                    1630 	.db #0x42	; 66	'B'
      000AA9 82                    1631 	.db #0x82	; 130
      000AAA 88                    1632 	.db #0x88	; 136
      000AAB 98                    1633 	.db #0x98	; 152
      000AAC 8B                    1634 	.db #0x8b	; 139
      000AAD BA                    1635 	.db #0xba	; 186
      000AAE EF                    1636 	.db #0xef	; 239
      000AAF 10                    1637 	.db #0x10	; 16
      000AB0 03                    1638 	.db #0x03	; 3
      000AB1 41                    1639 	.db #0x41	; 65	'A'
      000AB2 A8                    1640 	.db #0xa8	; 168
      000AB3 9B                    1641 	.db #0x9b	; 155
      000AB4 10                    1642 	.db #0x10	; 16
      000AB5 34                    1643 	.db #0x34	; 52	'4'
      000AB6 03                    1644 	.db #0x03	; 3
      000AB7 98                    1645 	.db #0x98	; 152
      000AB8 99                    1646 	.db #0x99	; 153
      000AB9 AB                    1647 	.db #0xab	; 171
      000ABA C9                    1648 	.db #0xc9	; 201
      000ABB EF                    1649 	.db #0xef	; 239
      000ABC 10                    1650 	.db #0x10	; 16
      000ABD 20                    1651 	.db #0x20	; 32
      000ABE 24                    1652 	.db #0x24	; 36
      000ABF 99                    1653 	.db #0x99	; 153
      000AC0 AA                    1654 	.db #0xaa	; 170
      000AC1 3A                    1655 	.db #0x3a	; 58
      000AC2 25                    1656 	.db #0x25	; 37
      000AC3 31                    1657 	.db #0x31	; 49	'1'
      000AC4 98                    1658 	.db #0x98	; 152
      000AC5 8C                    1659 	.db #0x8c	; 140
      000AC6 A8                    1660 	.db #0xa8	; 168
      000AC7 A9                    1661 	.db #0xa9	; 169
      000AC8 FB                    1662 	.db #0xfb	; 251
      000AC9 2D                    1663 	.db #0x2d	; 45
      000ACA 10                    1664 	.db #0x10	; 16
      000ACB 72                    1665 	.db #0x72	; 114	'r'
      000ACC 98                    1666 	.db #0x98	; 152
      000ACD 98                    1667 	.db #0x98	; 152
      000ACE 89                    1668 	.db #0x89	; 137
      000ACF 24                    1669 	.db #0x24	; 36
      000AD0 10                    1670 	.db #0x10	; 16
      000AD1 02                    1671 	.db #0x02	; 2
      000AD2 DA                    1672 	.db #0xda	; 218
      000AD3 80                    1673 	.db #0x80	; 128
      000AD4 9A                    1674 	.db #0x9a	; 154
      000AD5 DB                    1675 	.db #0xdb	; 219
      000AD6 2A                    1676 	.db #0x2a	; 42
      000AD7 02                    1677 	.db #0x02	; 2
      000AD8 54                    1678 	.db #0x54	; 84	'T'
      000AD9 A0                    1679 	.db #0xa0	; 160
      000ADA 89                    1680 	.db #0x89	; 137
      000ADB 89                    1681 	.db #0x89	; 137
      000ADC 44                    1682 	.db #0x44	; 68	'D'
      000ADD 11                    1683 	.db #0x11	; 17
      000ADE 91                    1684 	.db #0x91	; 145
      000ADF AA                    1685 	.db #0xaa	; 170
      000AE0 B9                    1686 	.db #0xb9	; 185
      000AE1 B0                    1687 	.db #0xb0	; 176
      000AE2 EF                    1688 	.db #0xef	; 239
      000AE3 10                    1689 	.db #0x10	; 16
      000AE4 39                    1690 	.db #0x39	; 57	'9'
      000AE5 24                    1691 	.db #0x24	; 36
      000AE6 89                    1692 	.db #0x89	; 137
      000AE7 D0                    1693 	.db #0xd0	; 208
      000AE8 29                    1694 	.db #0x29	; 41
      000AE9 22                    1695 	.db #0x22	; 34
      000AEA 33                    1696 	.db #0x33	; 51	'3'
      000AEB 8A                    1697 	.db #0x8a	; 138
      000AEC 9A                    1698 	.db #0x9a	; 154
      000AED 9E                    1699 	.db #0x9e	; 158
      000AEE C1                    1700 	.db #0xc1	; 193
      000AEF BC                    1701 	.db #0xbc	; 188
      000AF0 82                    1702 	.db #0x82	; 130
      000AF1 50                    1703 	.db #0x50	; 80	'P'
      000AF2 13                    1704 	.db #0x13	; 19
      000AF3 80                    1705 	.db #0x80	; 128
      000AF4 CB                    1706 	.db #0xcb	; 203
      000AF5 11                    1707 	.db #0x11	; 17
      000AF6 42                    1708 	.db #0x42	; 66	'B'
      000AF7 06                    1709 	.db #0x06	; 6
      000AF8 88                    1710 	.db #0x88	; 136
      000AF9 A9                    1711 	.db #0xa9	; 169
      000AFA 0B                    1712 	.db #0x0b	; 11
      000AFB C9                    1713 	.db #0xc9	; 201
      000AFC AD                    1714 	.db #0xad	; 173
      000AFD 82                    1715 	.db #0x82	; 130
      000AFE 50                    1716 	.db #0x50	; 80	'P'
      000AFF 23                    1717 	.db #0x23	; 35
      000B00 0A                    1718 	.db #0x0a	; 10
      000B01 DA                    1719 	.db #0xda	; 218
      000B02 28                    1720 	.db #0x28	; 40
      000B03 24                    1721 	.db #0x24	; 36
      000B04 23                    1722 	.db #0x23	; 35
      000B05 B8                    1723 	.db #0xb8	; 184
      000B06 C9                    1724 	.db #0xc9	; 201
      000B07 AA                    1725 	.db #0xaa	; 170
      000B08 B8                    1726 	.db #0xb8	; 184
      000B09 AF                    1727 	.db #0xaf	; 175
      000B0A 80                    1728 	.db #0x80	; 128
      000B0B 62                    1729 	.db #0x62	; 98	'b'
      000B0C 83                    1730 	.db #0x83	; 131
      000B0D 81                    1731 	.db #0x81	; 129
      000B0E BC                    1732 	.db #0xbc	; 188
      000B0F 83                    1733 	.db #0x83	; 131
      000B10 62                    1734 	.db #0x62	; 98	'b'
      000B11 83                    1735 	.db #0x83	; 131
      000B12 00                    1736 	.db #0x00	; 0
      000B13 AD                    1737 	.db #0xad	; 173
      000B14 98                    1738 	.db #0x98	; 152
      000B15 8A                    1739 	.db #0x8a	; 138
      000B16 9D                    1740 	.db #0x9d	; 157
      000B17 91                    1741 	.db #0x91	; 145
      000B18 62                    1742 	.db #0x62	; 98	'b'
      000B19 02                    1743 	.db #0x02	; 2
      000B1A 80                    1744 	.db #0x80	; 128
      000B1B 8C                    1745 	.db #0x8c	; 140
      000B1C 18                    1746 	.db #0x18	; 24
      000B1D 62                    1747 	.db #0x62	; 98	'b'
      000B1E 01                    1748 	.db #0x01	; 1
      000B1F A1                    1749 	.db #0xa1	; 161
      000B20 AA                    1750 	.db #0xaa	; 170
      000B21 B9                    1751 	.db #0xb9	; 185
      000B22 C9                    1752 	.db #0xc9	; 201
      000B23 1E                    1753 	.db #0x1e	; 30
      000B24 89                    1754 	.db #0x89	; 137
      000B25 15                    1755 	.db #0x15	; 21
      000B26 02                    1756 	.db #0x02	; 2
      000B27 81                    1757 	.db #0x81	; 129
      000B28 0D                    1758 	.db #0x0d	; 13
      000B29 08                    1759 	.db #0x08	; 8
      000B2A 43                    1760 	.db #0x43	; 67	'C'
      000B2B 01                    1761 	.db #0x01	; 1
      000B2C A2                    1762 	.db #0xa2	; 162
      000B2D 9D                    1763 	.db #0x9d	; 157
      000B2E B9                    1764 	.db #0xb9	; 185
      000B2F BA                    1765 	.db #0xba	; 186
      000B30 1C                    1766 	.db #0x1c	; 28
      000B31 29                    1767 	.db #0x29	; 41
      000B32 27                    1768 	.db #0x27	; 39
      000B33 10                    1769 	.db #0x10	; 16
      000B34 B1                    1770 	.db #0xb1	; 177
      000B35 1A                    1771 	.db #0x1a	; 26
      000B36 29                    1772 	.db #0x29	; 41
      000B37 27                    1773 	.db #0x27	; 39
      000B38 10                    1774 	.db #0x10	; 16
      000B39 C0                    1775 	.db #0xc0	; 192
      000B3A 99                    1776 	.db #0x99	; 153
      000B3B 9C                    1777 	.db #0x9c	; 156
      000B3C EA                    1778 	.db #0xea	; 234
      000B3D 81                    1779 	.db #0x81	; 129
      000B3E 4A                    1780 	.db #0x4a	; 74	'J'
      000B3F 12                    1781 	.db #0x12	; 18
      000B40 21                    1782 	.db #0x21	; 33
      000B41 AA                    1783 	.db #0xaa	; 170
      000B42 B2                    1784 	.db #0xb2	; 178
      000B43 60                    1785 	.db #0x60	; 96
      000B44 69                    1786 	.db #0x69	; 105	'i'
      000B45 1D                    1787 	.db #0x1d	; 29
      000B46 49                    1788 	.db #0x49	; 73	'I'
      000B47 31                    1789 	.db #0x31	; 49	'1'
      000B48 90                    1790 	.db #0x90	; 144
      000B49 AA                    1791 	.db #0xaa	; 170
      000B4A CC                    1792 	.db #0xcc	; 204
      000B4B C9                    1793 	.db #0xc9	; 201
      000B4C 2C                    1794 	.db #0x2c	; 44
      000B4D 1C                    1795 	.db #0x1c	; 28
      000B4E 14                    1796 	.db #0x14	; 20
      000B4F 21                    1797 	.db #0x21	; 33
      000B50 A1                    1798 	.db #0xa1	; 161
      000B51 88                    1799 	.db #0x88	; 136
      000B52 1A                    1800 	.db #0x1a	; 26
      000B53 15                    1801 	.db #0x15	; 21
      000B54 33                    1802 	.db #0x33	; 51	'3'
      000B55 A0                    1803 	.db #0xa0	; 160
      000B56 E9                    1804 	.db #0xe9	; 233
      000B57 9C                    1805 	.db #0x9c	; 156
      000B58 DB                    1806 	.db #0xdb	; 219
      000B59 18                    1807 	.db #0x18	; 24
      000B5A 3B                    1808 	.db #0x3b	; 59
      000B5B 06                    1809 	.db #0x06	; 6
      000B5C 21                    1810 	.db #0x21	; 33
      000B5D A8                    1811 	.db #0xa8	; 168
      000B5E 91                    1812 	.db #0x91	; 145
      000B5F 5A                    1813 	.db #0x5a	; 90	'Z'
      000B60 01                    1814 	.db #0x01	; 1
      000B61 05                    1815 	.db #0x05	; 5
      000B62 08                    1816 	.db #0x08	; 8
      000B63 D9                    1817 	.db #0xd9	; 217
      000B64 99                    1818 	.db #0x99	; 153
      000B65 AC                    1819 	.db #0xac	; 172
      000B66 90                    1820 	.db #0x90	; 144
      000B67 6B                    1821 	.db #0x6b	; 107	'k'
      000B68 01                    1822 	.db #0x01	; 1
      000B69 22                    1823 	.db #0x22	; 34
      000B6A 08                    1824 	.db #0x08	; 8
      000B6B B0                    1825 	.db #0xb0	; 176
      000B6C 30                    1826 	.db #0x30	; 48	'0'
      000B6D 00                    1827 	.db #0x00	; 0
      000B6E 17                    1828 	.db #0x17	; 23
      000B6F 00                    1829 	.db #0x00	; 0
      000B70 C8                    1830 	.db #0xc8	; 200
      000B71 C9                    1831 	.db #0xc9	; 201
      000B72 BC                    1832 	.db #0xbc	; 188
      000B73 C0                    1833 	.db #0xc0	; 192
      000B74 38                    1834 	.db #0x38	; 56	'8'
      000B75 30                    1835 	.db #0x30	; 48	'0'
      000B76 15                    1836 	.db #0x15	; 21
      000B77 28                    1837 	.db #0x28	; 40
      000B78 B8                    1838 	.db #0xb8	; 184
      000B79 21                    1839 	.db #0x21	; 33
      000B7A 39                    1840 	.db #0x39	; 57	'9'
      000B7B 87                    1841 	.db #0x87	; 135
      000B7C 11                    1842 	.db #0x11	; 17
      000B7D 9A                    1843 	.db #0x9a	; 154
      000B7E D9                    1844 	.db #0xd9	; 217
      000B7F BC                    1845 	.db #0xbc	; 188
      000B80 9A                    1846 	.db #0x9a	; 154
      000B81 2B                    1847 	.db #0x2b	; 43
      000B82 33                    1848 	.db #0x33	; 51	'3'
      000B83 45                    1849 	.db #0x45	; 69	'E'
      000B84 80                    1850 	.db #0x80	; 128
      000B85 A2                    1851 	.db #0xa2	; 162
      000B86 38                    1852 	.db #0x38	; 56	'8'
      000B87 29                    1853 	.db #0x29	; 41
      000B88 06                    1854 	.db #0x06	; 6
      000B89 20                    1855 	.db #0x20	; 32
      000B8A C0                    1856 	.db #0xc0	; 192
      000B8B B8                    1857 	.db #0xb8	; 184
      000B8C AF                    1858 	.db #0xaf	; 175
      000B8D 8B                    1859 	.db #0x8b	; 139
      000B8E 1D                    1860 	.db #0x1d	; 29
      000B8F 81                    1861 	.db #0x81	; 129
      000B90 24                    1862 	.db #0x24	; 36
      000B91 20                    1863 	.db #0x20	; 32
      000B92 91                    1864 	.db #0x91	; 145
      000B93 20                    1865 	.db #0x20	; 32
      000B94 3B                    1866 	.db #0x3b	; 59
      000B95 12                    1867 	.db #0x12	; 18
      000B96 52                    1868 	.db #0x52	; 82	'R'
      000B97 09                    1869 	.db #0x09	; 9
      000B98 F0                    1870 	.db #0xf0	; 240
      000B99 BA                    1871 	.db #0xba	; 186
      000B9A 8F                    1872 	.db #0x8f	; 143
      000B9B A9                    1873 	.db #0xa9	; 169
      000B9C 01                    1874 	.db #0x01	; 1
      000B9D 32                    1875 	.db #0x32	; 50	'2'
      000B9E 12                    1876 	.db #0x12	; 18
      000B9F 95                    1877 	.db #0x95	; 149
      000BA0 20                    1878 	.db #0x20	; 32
      000BA1 1A                    1879 	.db #0x1a	; 26
      000BA2 21                    1880 	.db #0x21	; 33
      000BA3 58                    1881 	.db #0x58	; 88	'X'
      000BA4 18                    1882 	.db #0x18	; 24
      000BA5 A8                    1883 	.db #0xa8	; 168
      000BA6 CC                    1884 	.db #0xcc	; 204
      000BA7 BD                    1885 	.db #0xbd	; 189
      000BA8 C9                    1886 	.db #0xc9	; 201
      000BA9 19                    1887 	.db #0x19	; 25
      000BAA 20                    1888 	.db #0x20	; 32
      000BAB 16                    1889 	.db #0x16	; 22
      000BAC 21                    1890 	.db #0x21	; 33
      000BAD 08                    1891 	.db #0x08	; 8
      000BAE 81                    1892 	.db #0x81	; 129
      000BAF 20                    1893 	.db #0x20	; 32
      000BB0 20                    1894 	.db #0x20	; 32
      000BB1 83                    1895 	.db #0x83	; 131
      000BB2 B3                    1896 	.db #0xb3	; 179
      000BB3 CC                    1897 	.db #0xcc	; 204
      000BB4 CE                    1898 	.db #0xce	; 206
      000BB5 AB                    1899 	.db #0xab	; 171
      000BB6 9C                    1900 	.db #0x9c	; 156
      000BB7 10                    1901 	.db #0x10	; 16
      000BB8 52                    1902 	.db #0x52	; 82	'R'
      000BB9 31                    1903 	.db #0x31	; 49	'1'
      000BBA 12                    1904 	.db #0x12	; 18
      000BBB 11                    1905 	.db #0x11	; 17
      000BBC 19                    1906 	.db #0x19	; 25
      000BBD A3                    1907 	.db #0xa3	; 163
      000BBE 15                    1908 	.db #0x15	; 21
      000BBF 18                    1909 	.db #0x18	; 24
      000BC0 F1                    1910 	.db #0xf1	; 241
      000BC1 A9                    1911 	.db #0xa9	; 169
      000BC2 9F                    1912 	.db #0x9f	; 159
      000BC3 BA                    1913 	.db #0xba	; 186
      000BC4 08                    1914 	.db #0x08	; 8
      000BC5 48                    1915 	.db #0x48	; 72	'H'
      000BC6 22                    1916 	.db #0x22	; 34
      000BC7 13                    1917 	.db #0x13	; 19
      000BC8 22                    1918 	.db #0x22	; 34
      000BC9 28                    1919 	.db #0x28	; 40
      000BCA 01                    1920 	.db #0x01	; 1
      000BCB 03                    1921 	.db #0x03	; 3
      000BCC 71                    1922 	.db #0x71	; 113	'q'
      000BCD 0A                    1923 	.db #0x0a	; 10
      000BCE D9                    1924 	.db #0xd9	; 217
      000BCF CB                    1925 	.db #0xcb	; 203
      000BD0 9D                    1926 	.db #0x9d	; 157
      000BD1 9C                    1927 	.db #0x9c	; 156
      000BD2 80                    1928 	.db #0x80	; 128
      000BD3 42                    1929 	.db #0x42	; 66	'B'
      000BD4 21                    1930 	.db #0x21	; 33
      000BD5 84                    1931 	.db #0x84	; 132
      000BD6 21                    1932 	.db #0x21	; 33
      000BD7 19                    1933 	.db #0x19	; 25
      000BD8 A3                    1934 	.db #0xa3	; 163
      000BD9 04                    1935 	.db #0x04	; 4
      000BDA 10                    1936 	.db #0x10	; 16
      000BDB 89                    1937 	.db #0x89	; 137
      000BDC DB                    1938 	.db #0xdb	; 219
      000BDD FB                    1939 	.db #0xfb	; 251
      000BDE 9B                    1940 	.db #0x9b	; 155
      000BDF 8E                    1941 	.db #0x8e	; 142
      000BE0 80                    1942 	.db #0x80	; 128
      000BE1 22                    1943 	.db #0x22	; 34
      000BE2 22                    1944 	.db #0x22	; 34
      000BE3 84                    1945 	.db #0x84	; 132
      000BE4 83                    1946 	.db #0x83	; 131
      000BE5 02                    1947 	.db #0x02	; 2
      000BE6 00                    1948 	.db #0x00	; 0
      000BE7 82                    1949 	.db #0x82	; 130
      000BE8 31                    1950 	.db #0x31	; 49	'1'
      000BE9 2D                    1951 	.db #0x2d	; 45
      000BEA CC                    1952 	.db #0xcc	; 204
      000BEB BB                    1953 	.db #0xbb	; 187
      000BEC 9F                    1954 	.db #0x9f	; 159
      000BED 9B                    1955 	.db #0x9b	; 155
      000BEE 88                    1956 	.db #0x88	; 136
      000BEF 42                    1957 	.db #0x42	; 66	'B'
      000BF0 42                    1958 	.db #0x42	; 66	'B'
      000BF1 12                    1959 	.db #0x12	; 18
      000BF2 04                    1960 	.db #0x04	; 4
      000BF3 10                    1961 	.db #0x10	; 16
      000BF4 88                    1962 	.db #0x88	; 136
      000BF5 A3                    1963 	.db #0xa3	; 163
      000BF6 02                    1964 	.db #0x02	; 2
      000BF7 2A                    1965 	.db #0x2a	; 42
      000BF8 BC                    1966 	.db #0xbc	; 188
      000BF9 ED                    1967 	.db #0xed	; 237
      000BFA AB                    1968 	.db #0xab	; 171
      000BFB 8E                    1969 	.db #0x8e	; 142
      000BFC 89                    1970 	.db #0x89	; 137
      000BFD 32                    1971 	.db #0x32	; 50	'2'
      000BFE 60                    1972 	.db #0x60	; 96
      000BFF 01                    1973 	.db #0x01	; 1
      000C00 94                    1974 	.db #0x94	; 148
      000C01 82                    1975 	.db #0x82	; 130
      000C02 80                    1976 	.db #0x80	; 128
      000C03 00                    1977 	.db #0x00	; 0
      000C04 38                    1978 	.db #0x38	; 56	'8'
      000C05 1A                    1979 	.db #0x1a	; 26
      000C06 A9                    1980 	.db #0xa9	; 169
      000C07 FB                    1981 	.db #0xfb	; 251
      000C08 9C                    1982 	.db #0x9c	; 156
      000C09 8E                    1983 	.db #0x8e	; 142
      000C0A 8A                    1984 	.db #0x8a	; 138
      000C0B 01                    1985 	.db #0x01	; 1
      000C0C 23                    1986 	.db #0x23	; 35
      000C0D 14                    1987 	.db #0x14	; 20
      000C0E 23                    1988 	.db #0x23	; 35
      000C0F 30                    1989 	.db #0x30	; 48	'0'
      000C10 2A                    1990 	.db #0x2a	; 42
      000C11 90                    1991 	.db #0x90	; 144
      000C12 21                    1992 	.db #0x21	; 33
      000C13 4A                    1993 	.db #0x4a	; 74	'J'
      000C14 9A                    1994 	.db #0x9a	; 154
      000C15 FA                    1995 	.db #0xfa	; 250
      000C16 DC                    1996 	.db #0xdc	; 220
      000C17 D9                    1997 	.db #0xd9	; 217
      000C18 99                    1998 	.db #0x99	; 153
      000C19 18                    1999 	.db #0x18	; 24
      000C1A 22                    2000 	.db #0x22	; 34
      000C1B 33                    2001 	.db #0x33	; 51	'3'
      000C1C 43                    2002 	.db #0x43	; 67	'C'
      000C1D 11                    2003 	.db #0x11	; 17
      000C1E 82                    2004 	.db #0x82	; 130
      000C1F 11                    2005 	.db #0x11	; 17
      000C20 29                    2006 	.db #0x29	; 41
      000C21 92                    2007 	.db #0x92	; 146
      000C22 93                    2008 	.db #0x93	; 147
      000C23 AD                    2009 	.db #0xad	; 173
      000C24 CF                    2010 	.db #0xcf	; 207
      000C25 AC                    2011 	.db #0xac	; 172
      000C26 9D                    2012 	.db #0x9d	; 157
      000C27 A8                    2013 	.db #0xa8	; 168
      000C28 12                    2014 	.db #0x12	; 18
      000C29 52                    2015 	.db #0x52	; 82	'R'
      000C2A 12                    2016 	.db #0x12	; 18
      000C2B 84                    2017 	.db #0x84	; 132
      000C2C 12                    2018 	.db #0x12	; 18
      000C2D 00                    2019 	.db #0x00	; 0
      000C2E 00                    2020 	.db #0x00	; 0
      000C2F 38                    2021 	.db #0x38	; 56	'8'
      000C30 2A                    2022 	.db #0x2a	; 42
      000C31 B8                    2023 	.db #0xb8	; 184
      000C32 FB                    2024 	.db #0xfb	; 251
      000C33 BC                    2025 	.db #0xbc	; 188
      000C34 CC                    2026 	.db #0xcc	; 204
      000C35 9B                    2027 	.db #0x9b	; 155
      000C36 89                    2028 	.db #0x89	; 137
      000C37 23                    2029 	.db #0x23	; 35
      000C38 54                    2030 	.db #0x54	; 84	'T'
      000C39 31                    2031 	.db #0x31	; 49	'1'
      000C3A 12                    2032 	.db #0x12	; 18
      000C3B 02                    2033 	.db #0x02	; 2
      000C3C 12                    2034 	.db #0x12	; 18
      000C3D 18                    2035 	.db #0x18	; 24
      000C3E A2                    2036 	.db #0xa2	; 162
      000C3F B5                    2037 	.db #0xb5	; 181
      000C40 A0                    2038 	.db #0xa0	; 160
      000C41 AD                    2039 	.db #0xad	; 173
      000C42 BF                    2040 	.db #0xbf	; 191
      000C43 47                    2041 	.db #0x47	; 71	'G'
      000C44 E2                    2042 	.db #0xe2	; 226
      000C45 44                    2043 	.db #0x44	; 68	'D'
      000C46 AC                    2044 	.db #0xac	; 172
      000C47 99                    2045 	.db #0x99	; 153
      000C48 21                    2046 	.db #0x21	; 33
      000C49 71                    2047 	.db #0x71	; 113	'q'
      000C4A 21                    2048 	.db #0x21	; 33
      000C4B 21                    2049 	.db #0x21	; 33
      000C4C 21                    2050 	.db #0x21	; 33
      000C4D 00                    2051 	.db #0x00	; 0
      000C4E B3                    2052 	.db #0xb3	; 179
      000C4F 84                    2053 	.db #0x84	; 132
      000C50 00                    2054 	.db #0x00	; 0
      000C51 A8                    2055 	.db #0xa8	; 168
      000C52 DA                    2056 	.db #0xda	; 218
      000C53 BC                    2057 	.db #0xbc	; 188
      000C54 BE                    2058 	.db #0xbe	; 190
      000C55 CB                    2059 	.db #0xcb	; 203
      000C56 98                    2060 	.db #0x98	; 152
      000C57 11                    2061 	.db #0x11	; 17
      000C58 52                    2062 	.db #0x52	; 82	'R'
      000C59 41                    2063 	.db #0x41	; 65	'A'
      000C5A 31                    2064 	.db #0x31	; 49	'1'
      000C5B 12                    2065 	.db #0x12	; 18
      000C5C 12                    2066 	.db #0x12	; 18
      000C5D 20                    2067 	.db #0x20	; 32
      000C5E 5A                    2068 	.db #0x5a	; 90	'Z'
      000C5F 3B                    2069 	.db #0x3b	; 59
      000C60 8B                    2070 	.db #0x8b	; 139
      000C61 EA                    2071 	.db #0xea	; 234
      000C62 CA                    2072 	.db #0xca	; 202
      000C63 EB                    2073 	.db #0xeb	; 235
      000C64 C9                    2074 	.db #0xc9	; 201
      000C65 A0                    2075 	.db #0xa0	; 160
      000C66 02                    2076 	.db #0x02	; 2
      000C67 41                    2077 	.db #0x41	; 65	'A'
      000C68 40                    2078 	.db #0x40	; 64
      000C69 21                    2079 	.db #0x21	; 33
      000C6A 32                    2080 	.db #0x32	; 50	'2'
      000C6B 30                    2081 	.db #0x30	; 48	'0'
      000C6C 29                    2082 	.db #0x29	; 41
      000C6D 90                    2083 	.db #0x90	; 144
      000C6E C3                    2084 	.db #0xc3	; 195
      000C6F 98                    2085 	.db #0x98	; 152
      000C70 AC                    2086 	.db #0xac	; 172
      000C71 CD                    2087 	.db #0xcd	; 205
      000C72 AC                    2088 	.db #0xac	; 172
      000C73 9D                    2089 	.db #0x9d	; 157
      000C74 8A                    2090 	.db #0x8a	; 138
      000C75 81                    2091 	.db #0x81	; 129
      000C76 14                    2092 	.db #0x14	; 20
      000C77 24                    2093 	.db #0x24	; 36
      000C78 32                    2094 	.db #0x32	; 50	'2'
      000C79 13                    2095 	.db #0x13	; 19
      000C7A 03                    2096 	.db #0x03	; 3
      000C7B 01                    2097 	.db #0x01	; 1
      000C7C 18                    2098 	.db #0x18	; 24
      000C7D 08                    2099 	.db #0x08	; 8
      000C7E B8                    2100 	.db #0xb8	; 184
      000C7F CC                    2101 	.db #0xcc	; 204
      000C80 BE                    2102 	.db #0xbe	; 190
      000C81 CD                    2103 	.db #0xcd	; 205
      000C82 BB                    2104 	.db #0xbb	; 187
      000C83 9A                    2105 	.db #0x9a	; 154
      000C84 20                    2106 	.db #0x20	; 32
      000C85 72                    2107 	.db #0x72	; 114	'r'
      000C86 31                    2108 	.db #0x31	; 49	'1'
      000C87 31                    2109 	.db #0x31	; 49	'1'
      000C88 31                    2110 	.db #0x31	; 49	'1'
      000C89 31                    2111 	.db #0x31	; 49	'1'
      000C8A 18                    2112 	.db #0x18	; 24
      000C8B 81                    2113 	.db #0x81	; 129
      000C8C 93                    2114 	.db #0x93	; 147
      000C8D A0                    2115 	.db #0xa0	; 160
      000C8E FB                    2116 	.db #0xfb	; 251
      000C8F EB                    2117 	.db #0xeb	; 235
      000C90 DB                    2118 	.db #0xdb	; 219
      000C91 CA                    2119 	.db #0xca	; 202
      000C92 89                    2120 	.db #0x89	; 137
      000C93 4A                    2121 	.db #0x4a	; 74	'J'
      000C94 20                    2122 	.db #0x20	; 32
      000C95 04                    2123 	.db #0x04	; 4
      000C96 13                    2124 	.db #0x13	; 19
      000C97 22                    2125 	.db #0x22	; 34
      000C98 83                    2126 	.db #0x83	; 131
      000C99 84                    2127 	.db #0x84	; 132
      000C9A 21                    2128 	.db #0x21	; 33
      000C9B 3A                    2129 	.db #0x3a	; 58
      000C9C A8                    2130 	.db #0xa8	; 168
      000C9D D9                    2131 	.db #0xd9	; 217
      000C9E AC                    2132 	.db #0xac	; 172
      000C9F AE                    2133 	.db #0xae	; 174
      000CA0 9D                    2134 	.db #0x9d	; 157
      000CA1 8C                    2135 	.db #0x8c	; 140
      000CA2 88                    2136 	.db #0x88	; 136
      000CA3 83                    2137 	.db #0x83	; 131
      000CA4 15                    2138 	.db #0x15	; 21
      000CA5 31                    2139 	.db #0x31	; 49	'1'
      000CA6 30                    2140 	.db #0x30	; 48	'0'
      000CA7 12                    2141 	.db #0x12	; 18
      000CA8 02                    2142 	.db #0x02	; 2
      000CA9 93                    2143 	.db #0x93	; 147
      000CAA 83                    2144 	.db #0x83	; 131
      000CAB 08                    2145 	.db #0x08	; 8
      000CAC 9D                    2146 	.db #0x9d	; 157
      000CAD CC                    2147 	.db #0xcc	; 204
      000CAE CB                    2148 	.db #0xcb	; 203
      000CAF 9E                    2149 	.db #0x9e	; 158
      000CB0 9C                    2150 	.db #0x9c	; 156
      000CB1 99                    2151 	.db #0x99	; 153
      000CB2 93                    2152 	.db #0x93	; 147
      000CB3 06                    2153 	.db #0x06	; 6
      000CB4 22                    2154 	.db #0x22	; 34
      000CB5 31                    2155 	.db #0x31	; 49	'1'
      000CB6 20                    2156 	.db #0x20	; 32
      000CB7 12                    2157 	.db #0x12	; 18
      000CB8 48                    2158 	.db #0x48	; 72	'H'
      000CB9 29                    2159 	.db #0x29	; 41
      000CBA B0                    2160 	.db #0xb0	; 176
      000CBB D4                    2161 	.db #0xd4	; 212
      000CBC A8                    2162 	.db #0xa8	; 168
      000CBD AB                    2163 	.db #0xab	; 171
      000CBE AE                    2164 	.db #0xae	; 174
      000CBF BC                    2165 	.db #0xbc	; 188
      000CC0 8A                    2166 	.db #0x8a	; 138
      000CC1 29                    2167 	.db #0x29	; 41
      000CC2 42                    2168 	.db #0x42	; 66	'B'
      000CC3 33                    2169 	.db #0x33	; 51	'3'
      000CC4 14                    2170 	.db #0x14	; 20
      000CC5 14                    2171 	.db #0x14	; 20
      000CC6 22                    2172 	.db #0x22	; 34
      000CC7 48                    2173 	.db #0x48	; 72	'H'
      000CC8 18                    2174 	.db #0x18	; 24
      000CC9 80                    2175 	.db #0x80	; 128
      000CCA A0                    2176 	.db #0xa0	; 160
      000CCB BA                    2177 	.db #0xba	; 186
      000CCC BD                    2178 	.db #0xbd	; 189
      000CCD CD                    2179 	.db #0xcd	; 205
      000CCE BC                    2180 	.db #0xbc	; 188
      000CCF BB                    2181 	.db #0xbb	; 187
      000CD0 88                    2182 	.db #0x88	; 136
      000CD1 42                    2183 	.db #0x42	; 66	'B'
      000CD2 33                    2184 	.db #0x33	; 51	'3'
      000CD3 25                    2185 	.db #0x25	; 37
      000CD4 33                    2186 	.db #0x33	; 51	'3'
      000CD5 22                    2187 	.db #0x22	; 34
      000CD6 12                    2188 	.db #0x12	; 18
      000CD7 03                    2189 	.db #0x03	; 3
      000CD8 02                    2190 	.db #0x02	; 2
      000CD9 98                    2191 	.db #0x98	; 152
      000CDA CB                    2192 	.db #0xcb	; 203
      000CDB EC                    2193 	.db #0xec	; 236
      000CDC CA                    2194 	.db #0xca	; 202
      000CDD BD                    2195 	.db #0xbd	; 189
      000CDE 9D                    2196 	.db #0x9d	; 157
      000CDF 9A                    2197 	.db #0x9a	; 154
      000CE0 10                    2198 	.db #0x10	; 16
      000CE1 33                    2199 	.db #0x33	; 51	'3'
      000CE2 43                    2200 	.db #0x43	; 67	'C'
      000CE3 24                    2201 	.db #0x24	; 36
      000CE4 13                    2202 	.db #0x13	; 19
      000CE5 13                    2203 	.db #0x13	; 19
      000CE6 21                    2204 	.db #0x21	; 33
      000CE7 20                    2205 	.db #0x20	; 32
      000CE8 08                    2206 	.db #0x08	; 8
      000CE9 AA                    2207 	.db #0xaa	; 170
      000CEA DC                    2208 	.db #0xdc	; 220
      000CEB CB                    2209 	.db #0xcb	; 203
      000CEC CD                    2210 	.db #0xcd	; 205
      000CED BC                    2211 	.db #0xbc	; 188
      000CEE 9B                    2212 	.db #0x9b	; 155
      000CEF 09                    2213 	.db #0x09	; 9
      000CF0 33                    2214 	.db #0x33	; 51	'3'
      000CF1 35                    2215 	.db #0x35	; 53	'5'
      000CF2 33                    2216 	.db #0x33	; 51	'3'
      000CF3 33                    2217 	.db #0x33	; 51	'3'
      000CF4 23                    2218 	.db #0x23	; 35
      000CF5 23                    2219 	.db #0x23	; 35
      000CF6 03                    2220 	.db #0x03	; 3
      000CF7 13                    2221 	.db #0x13	; 19
      000CF8 0B                    2222 	.db #0x0b	; 11
      000CF9 BE                    2223 	.db #0xbe	; 190
      000CFA DB                    2224 	.db #0xdb	; 219
      000CFB BD                    2225 	.db #0xbd	; 189
      000CFC AF                    2226 	.db #0xaf	; 175
      000CFD AC                    2227 	.db #0xac	; 172
      000CFE 89                    2228 	.db #0x89	; 137
      000CFF 20                    2229 	.db #0x20	; 32
      000D00 23                    2230 	.db #0x23	; 35
      000D01 15                    2231 	.db #0x15	; 21
      000D02 23                    2232 	.db #0x23	; 35
      000D03 32                    2233 	.db #0x32	; 50	'2'
      000D04 21                    2234 	.db #0x21	; 33
      000D05 12                    2235 	.db #0x12	; 18
      000D06 11                    2236 	.db #0x11	; 17
      000D07 90                    2237 	.db #0x90	; 144
      000D08 C9                    2238 	.db #0xc9	; 201
      000D09 BB                    2239 	.db #0xbb	; 187
      000D0A CE                    2240 	.db #0xce	; 206
      000D0B CD                    2241 	.db #0xcd	; 205
      000D0C AC                    2242 	.db #0xac	; 172
      000D0D 8B                    2243 	.db #0x8b	; 139
      000D0E 19                    2244 	.db #0x19	; 25
      000D0F 32                    2245 	.db #0x32	; 50	'2'
      000D10 25                    2246 	.db #0x25	; 37
      000D11 23                    2247 	.db #0x23	; 35
      000D12 33                    2248 	.db #0x33	; 51	'3'
      000D13 32                    2249 	.db #0x32	; 50	'2'
      000D14 13                    2250 	.db #0x13	; 19
      000D15 13                    2251 	.db #0x13	; 19
      000D16 01                    2252 	.db #0x01	; 1
      000D17 A9                    2253 	.db #0xa9	; 169
      000D18 AF                    2254 	.db #0xaf	; 175
      000D19 DB                    2255 	.db #0xdb	; 219
      000D1A DC                    2256 	.db #0xdc	; 220
      000D1B BB                    2257 	.db #0xbb	; 187
      000D1C AC                    2258 	.db #0xac	; 172
      000D1D 19                    2259 	.db #0x19	; 25
      000D1E 21                    2260 	.db #0x21	; 33
      000D1F 24                    2261 	.db #0x24	; 36
      000D20 24                    2262 	.db #0x24	; 36
      000D21 32                    2263 	.db #0x32	; 50	'2'
      000D22 32                    2264 	.db #0x32	; 50	'2'
      000D23 32                    2265 	.db #0x32	; 50	'2'
      000D24 12                    2266 	.db #0x12	; 18
      000D25 03                    2267 	.db #0x03	; 3
      000D26 88                    2268 	.db #0x88	; 136
      000D27 CB                    2269 	.db #0xcb	; 203
      000D28 DC                    2270 	.db #0xdc	; 220
      000D29 EC                    2271 	.db #0xec	; 236
      000D2A CB                    2272 	.db #0xcb	; 203
      000D2B BB                    2273 	.db #0xbb	; 187
      000D2C 89                    2274 	.db #0x89	; 137
      000D2D 30                    2275 	.db #0x30	; 48	'0'
      000D2E 42                    2276 	.db #0x42	; 66	'B'
      000D2F 43                    2277 	.db #0x43	; 67	'C'
      000D30 33                    2278 	.db #0x33	; 51	'3'
      000D31 33                    2279 	.db #0x33	; 51	'3'
      000D32 32                    2280 	.db #0x32	; 50	'2'
      000D33 31                    2281 	.db #0x31	; 49	'1'
      000D34 02                    2282 	.db #0x02	; 2
      000D35 02                    2283 	.db #0x02	; 2
      000D36 BB                    2284 	.db #0xbb	; 187
      000D37 DD                    2285 	.db #0xdd	; 221
      000D38 DC                    2286 	.db #0xdc	; 220
      000D39 BD                    2287 	.db #0xbd	; 189
      000D3A CB                    2288 	.db #0xcb	; 203
      000D3B 9A                    2289 	.db #0x9a	; 154
      000D3C 10                    2290 	.db #0x10	; 16
      000D3D 42                    2291 	.db #0x42	; 66	'B'
      000D3E 32                    2292 	.db #0x32	; 50	'2'
      000D3F 24                    2293 	.db #0x24	; 36
      000D40 33                    2294 	.db #0x33	; 51	'3'
      000D41 22                    2295 	.db #0x22	; 34
      000D42 AC                    2296 	.db #0xac	; 172
      000D43 1D                    2297 	.db #0x1d	; 29
      000D44 3A                    2298 	.db #0x3a	; 58
      000D45 02                    2299 	.db #0x02	; 2
      000D46 12                    2300 	.db #0x12	; 18
      000D47 00                    2301 	.db #0x00	; 0
      000D48 CB                    2302 	.db #0xcb	; 203
      000D49 FB                    2303 	.db #0xfb	; 251
      000D4A DB                    2304 	.db #0xdb	; 219
      000D4B BC                    2305 	.db #0xbc	; 188
      000D4C BC                    2306 	.db #0xbc	; 188
      000D4D 8A                    2307 	.db #0x8a	; 138
      000D4E 20                    2308 	.db #0x20	; 32
      000D4F 24                    2309 	.db #0x24	; 36
      000D50 43                    2310 	.db #0x43	; 67	'C'
      000D51 23                    2311 	.db #0x23	; 35
      000D52 23                    2312 	.db #0x23	; 35
      000D53 22                    2313 	.db #0x22	; 34
      000D54 02                    2314 	.db #0x02	; 2
      000D55 12                    2315 	.db #0x12	; 18
      000D56 01                    2316 	.db #0x01	; 1
      000D57 A8                    2317 	.db #0xa8	; 168
      000D58 BE                    2318 	.db #0xbe	; 190
      000D59 CD                    2319 	.db #0xcd	; 205
      000D5A DC                    2320 	.db #0xdc	; 220
      000D5B CA                    2321 	.db #0xca	; 202
      000D5C AA                    2322 	.db #0xaa	; 170
      000D5D 18                    2323 	.db #0x18	; 24
      000D5E 32                    2324 	.db #0x32	; 50	'2'
      000D5F 43                    2325 	.db #0x43	; 67	'C'
      000D60 33                    2326 	.db #0x33	; 51	'3'
      000D61 24                    2327 	.db #0x24	; 36
      000D62 12                    2328 	.db #0x12	; 18
      000D63 12                    2329 	.db #0x12	; 18
      000D64 11                    2330 	.db #0x11	; 17
      000D65 12                    2331 	.db #0x12	; 18
      000D66 A0                    2332 	.db #0xa0	; 160
      000D67 EA                    2333 	.db #0xea	; 234
      000D68 DB                    2334 	.db #0xdb	; 219
      000D69 DC                    2335 	.db #0xdc	; 220
      000D6A BB                    2336 	.db #0xbb	; 187
      000D6B AD                    2337 	.db #0xad	; 173
      000D6C 88                    2338 	.db #0x88	; 136
      000D6D 31                    2339 	.db #0x31	; 49	'1'
      000D6E 43                    2340 	.db #0x43	; 67	'C'
      000D6F 32                    2341 	.db #0x32	; 50	'2'
      000D70 23                    2342 	.db #0x23	; 35
      000D71 23                    2343 	.db #0x23	; 35
      000D72 22                    2344 	.db #0x22	; 34
      000D73 22                    2345 	.db #0x22	; 34
      000D74 13                    2346 	.db #0x13	; 19
      000D75 81                    2347 	.db #0x81	; 129
      000D76 CB                    2348 	.db #0xcb	; 203
      000D77 BF                    2349 	.db #0xbf	; 191
      000D78 CD                    2350 	.db #0xcd	; 205
      000D79 BC                    2351 	.db #0xbc	; 188
      000D7A CB                    2352 	.db #0xcb	; 203
      000D7B 89                    2353 	.db #0x89	; 137
      000D7C 11                    2354 	.db #0x11	; 17
      000D7D 43                    2355 	.db #0x43	; 67	'C'
      000D7E 43                    2356 	.db #0x43	; 67	'C'
      000D7F 22                    2357 	.db #0x22	; 34
      000D80 12                    2358 	.db #0x12	; 18
      000D81 22                    2359 	.db #0x22	; 34
      000D82 22                    2360 	.db #0x22	; 34
      000D83 22                    2361 	.db #0x22	; 34
      000D84 00                    2362 	.db #0x00	; 0
      000D85 C9                    2363 	.db #0xc9	; 201
      000D86 BD                    2364 	.db #0xbd	; 189
      000D87 CD                    2365 	.db #0xcd	; 205
      000D88 BD                    2366 	.db #0xbd	; 189
      000D89 BC                    2367 	.db #0xbc	; 188
      000D8A 99                    2368 	.db #0x99	; 153
      000D8B 20                    2369 	.db #0x20	; 32
      000D8C 43                    2370 	.db #0x43	; 67	'C'
      000D8D 43                    2371 	.db #0x43	; 67	'C'
      000D8E 22                    2372 	.db #0x22	; 34
      000D8F 22                    2373 	.db #0x22	; 34
      000D90 22                    2374 	.db #0x22	; 34
      000D91 31                    2375 	.db #0x31	; 49	'1'
      000D92 12                    2376 	.db #0x12	; 18
      000D93 01                    2377 	.db #0x01	; 1
      000D94 B9                    2378 	.db #0xb9	; 185
      000D95 ED                    2379 	.db #0xed	; 237
      000D96 DB                    2380 	.db #0xdb	; 219
      000D97 CC                    2381 	.db #0xcc	; 204
      000D98 BA                    2382 	.db #0xba	; 186
      000D99 9B                    2383 	.db #0x9b	; 155
      000D9A 10                    2384 	.db #0x10	; 16
      000D9B 34                    2385 	.db #0x34	; 52	'4'
      000D9C 34                    2386 	.db #0x34	; 52	'4'
      000D9D 22                    2387 	.db #0x22	; 34
      000D9E 32                    2388 	.db #0x32	; 50	'2'
      000D9F 22                    2389 	.db #0x22	; 34
      000DA0 33                    2390 	.db #0x33	; 51	'3'
      000DA1 23                    2391 	.db #0x23	; 35
      000DA2 01                    2392 	.db #0x01	; 1
      000DA3 C9                    2393 	.db #0xc9	; 201
      000DA4 DC                    2394 	.db #0xdc	; 220
      000DA5 CC                    2395 	.db #0xcc	; 204
      000DA6 CC                    2396 	.db #0xcc	; 204
      000DA7 CA                    2397 	.db #0xca	; 202
      000DA8 A9                    2398 	.db #0xa9	; 169
      000DA9 08                    2399 	.db #0x08	; 8
      000DAA 32                    2400 	.db #0x32	; 50	'2'
      000DAB 34                    2401 	.db #0x34	; 52	'4'
      000DAC 33                    2402 	.db #0x33	; 51	'3'
      000DAD 32                    2403 	.db #0x32	; 50	'2'
      000DAE 32                    2404 	.db #0x32	; 50	'2'
      000DAF 24                    2405 	.db #0x24	; 36
      000DB0 23                    2406 	.db #0x23	; 35
      000DB1 11                    2407 	.db #0x11	; 17
      000DB2 A9                    2408 	.db #0xa9	; 169
      000DB3 FB                    2409 	.db #0xfb	; 251
      000DB4 DB                    2410 	.db #0xdb	; 219
      000DB5 CC                    2411 	.db #0xcc	; 204
      000DB6 BB                    2412 	.db #0xbb	; 187
      000DB7 BB                    2413 	.db #0xbb	; 187
      000DB8 09                    2414 	.db #0x09	; 9
      000DB9 31                    2415 	.db #0x31	; 49	'1'
      000DBA 45                    2416 	.db #0x45	; 69	'E'
      000DBB 23                    2417 	.db #0x23	; 35
      000DBC 23                    2418 	.db #0x23	; 35
      000DBD 23                    2419 	.db #0x23	; 35
      000DBE 43                    2420 	.db #0x43	; 67	'C'
      000DBF 22                    2421 	.db #0x22	; 34
      000DC0 01                    2422 	.db #0x01	; 1
      000DC1 98                    2423 	.db #0x98	; 152
      000DC2 DB                    2424 	.db #0xdb	; 219
      000DC3 BC                    2425 	.db #0xbc	; 188
      000DC4 CE                    2426 	.db #0xce	; 206
      000DC5 CB                    2427 	.db #0xcb	; 203
      000DC6 AA                    2428 	.db #0xaa	; 170
      000DC7 99                    2429 	.db #0x99	; 153
      000DC8 11                    2430 	.db #0x11	; 17
      000DC9 43                    2431 	.db #0x43	; 67	'C'
      000DCA 24                    2432 	.db #0x24	; 36
      000DCB 24                    2433 	.db #0x24	; 36
      000DCC 22                    2434 	.db #0x22	; 34
      000DCD 22                    2435 	.db #0x22	; 34
      000DCE 22                    2436 	.db #0x22	; 34
      000DCF 10                    2437 	.db #0x10	; 16
      000DD0 98                    2438 	.db #0x98	; 152
      000DD1 BA                    2439 	.db #0xba	; 186
      000DD2 CE                    2440 	.db #0xce	; 206
      000DD3 BC                    2441 	.db #0xbc	; 188
      000DD4 BD                    2442 	.db #0xbd	; 189
      000DD5 AB                    2443 	.db #0xab	; 171
      000DD6 9A                    2444 	.db #0x9a	; 154
      000DD7 08                    2445 	.db #0x08	; 8
      000DD8 33                    2446 	.db #0x33	; 51	'3'
      000DD9 45                    2447 	.db #0x45	; 69	'E'
      000DDA 42                    2448 	.db #0x42	; 66	'B'
      000DDB 32                    2449 	.db #0x32	; 50	'2'
      000DDC 32                    2450 	.db #0x32	; 50	'2'
      000DDD 22                    2451 	.db #0x22	; 34
      000DDE 01                    2452 	.db #0x01	; 1
      000DDF 90                    2453 	.db #0x90	; 144
      000DE0 B9                    2454 	.db #0xb9	; 185
      000DE1 BD                    2455 	.db #0xbd	; 189
      000DE2 DD                    2456 	.db #0xdd	; 221
      000DE3 BB                    2457 	.db #0xbb	; 187
      000DE4 BB                    2458 	.db #0xbb	; 187
      000DE5 AB                    2459 	.db #0xab	; 171
      000DE6 09                    2460 	.db #0x09	; 9
      000DE7 21                    2461 	.db #0x21	; 33
      000DE8 35                    2462 	.db #0x35	; 53	'5'
      000DE9 34                    2463 	.db #0x34	; 52	'4'
      000DEA 53                    2464 	.db #0x53	; 83	'S'
      000DEB 33                    2465 	.db #0x33	; 51	'3'
      000DEC 22                    2466 	.db #0x22	; 34
      000DED 12                    2467 	.db #0x12	; 18
      000DEE 88                    2468 	.db #0x88	; 136
      000DEF A0                    2469 	.db #0xa0	; 160
      000DF0 BB                    2470 	.db #0xbb	; 187
      000DF1 BE                    2471 	.db #0xbe	; 190
      000DF2 BE                    2472 	.db #0xbe	; 190
      000DF3 BB                    2473 	.db #0xbb	; 187
      000DF4 AA                    2474 	.db #0xaa	; 170
      000DF5 9A                    2475 	.db #0x9a	; 154
      000DF6 10                    2476 	.db #0x10	; 16
      000DF7 21                    2477 	.db #0x21	; 33
      000DF8 43                    2478 	.db #0x43	; 67	'C'
      000DF9 44                    2479 	.db #0x44	; 68	'D'
      000DFA 32                    2480 	.db #0x32	; 50	'2'
      000DFB 34                    2481 	.db #0x34	; 52	'4'
      000DFC 32                    2482 	.db #0x32	; 50	'2'
      000DFD 12                    2483 	.db #0x12	; 18
      000DFE 02                    2484 	.db #0x02	; 2
      000DFF BA                    2485 	.db #0xba	; 186
      000E00 CC                    2486 	.db #0xcc	; 204
      000E01 DB                    2487 	.db #0xdb	; 219
      000E02 AC                    2488 	.db #0xac	; 172
      000E03 A9                    2489 	.db #0xa9	; 169
      000E04 8A                    2490 	.db #0x8a	; 138
      000E05 98                    2491 	.db #0x98	; 152
      000E06 21                    2492 	.db #0x21	; 33
      000E07 11                    2493 	.db #0x11	; 17
      000E08 11                    2494 	.db #0x11	; 17
      000E09 63                    2495 	.db #0x63	; 99	'c'
      000E0A 34                    2496 	.db #0x34	; 52	'4'
      000E0B 12                    2497 	.db #0x12	; 18
      000E0C 33                    2498 	.db #0x33	; 51	'3'
      000E0D 01                    2499 	.db #0x01	; 1
      000E0E 88                    2500 	.db #0x88	; 136
      000E0F C8                    2501 	.db #0xc8	; 200
      000E10 BF                    2502 	.db #0xbf	; 191
      000E11 AB                    2503 	.db #0xab	; 171
      000E12 AC                    2504 	.db #0xac	; 172
      000E13 89                    2505 	.db #0x89	; 137
      000E14 00                    2506 	.db #0x00	; 0
      000E15 08                    2507 	.db #0x08	; 8
      000E16 11                    2508 	.db #0x11	; 17
      000E17 41                    2509 	.db #0x41	; 65	'A'
      000E18 62                    2510 	.db #0x62	; 98	'b'
      000E19 22                    2511 	.db #0x22	; 34
      000E1A 32                    2512 	.db #0x32	; 50	'2'
      000E1B 22                    2513 	.db #0x22	; 34
      000E1C 20                    2514 	.db #0x20	; 32
      000E1D 84                    2515 	.db #0x84	; 132
      000E1E 99                    2516 	.db #0x99	; 153
      000E1F D8                    2517 	.db #0xd8	; 216
      000E20 DE                    2518 	.db #0xde	; 222
      000E21 A9                    2519 	.db #0xa9	; 169
      000E22 09                    2520 	.db #0x09	; 9
      000E23 B8                    2521 	.db #0xb8	; 184
      000E24 CA                    2522 	.db #0xca	; 202
      000E25 09                    2523 	.db #0x09	; 9
      000E26 12                    2524 	.db #0x12	; 18
      000E27 03                    2525 	.db #0x03	; 3
      000E28 11                    2526 	.db #0x11	; 17
      000E29 27                    2527 	.db #0x27	; 39
      000E2A 33                    2528 	.db #0x33	; 51	'3'
      000E2B 26                    2529 	.db #0x26	; 38
      000E2C 11                    2530 	.db #0x11	; 17
      000E2D 22                    2531 	.db #0x22	; 34
      000E2E 81                    2532 	.db #0x81	; 129
      000E2F BA                    2533 	.db #0xba	; 186
      000E30 CE                    2534 	.db #0xce	; 206
      000E31 AD                    2535 	.db #0xad	; 173
      000E32 88                    2536 	.db #0x88	; 136
      000E33 A0                    2537 	.db #0xa0	; 160
      000E34 98                    2538 	.db #0x98	; 152
      000E35 10                    2539 	.db #0x10	; 16
      000E36 44                    2540 	.db #0x44	; 68	'D'
      000E37 92                    2541 	.db #0x92	; 146
      000E38 80                    2542 	.db #0x80	; 128
      000E39 21                    2543 	.db #0x21	; 33
      000E3A 8E                    2544 	.db #0x8e	; 142
      000E3B 21                    2545 	.db #0x21	; 33
      000E3C C8                    2546 	.db #0xc8	; 200
      000E3D 08                    2547 	.db #0x08	; 8
      000E3E 51                    2548 	.db #0x51	; 81	'Q'
      000E3F A0                    2549 	.db #0xa0	; 160
      000E40 BC                    2550 	.db #0xbc	; 188
      000E41 85                    2551 	.db #0x85	; 133
      000E42 FD                    2552 	.db #0xfd	; 253
      000E43 25                    2553 	.db #0x25	; 37
      000E44 0E                    2554 	.db #0x0e	; 14
      000E45 91                    2555 	.db #0x91	; 145
      000E46 AD                    2556 	.db #0xad	; 173
      000E47 63                    2557 	.db #0x63	; 99	'c'
      000E48 53                    2558 	.db #0x53	; 83	'S'
      000E49 71                    2559 	.db #0x71	; 113	'q'
      000E4A 77                    2560 	.db #0x77	; 119	'w'
      000E4B E8                    2561 	.db #0xe8	; 232
      000E4C AB                    2562 	.db #0xab	; 171
      000E4D 31                    2563 	.db #0x31	; 49	'1'
      000E4E 14                    2564 	.db #0x14	; 20
      000E4F A9                    2565 	.db #0xa9	; 169
      000E50 1A                    2566 	.db #0x1a	; 26
      000E51 22                    2567 	.db #0x22	; 34
      000E52 80                    2568 	.db #0x80	; 128
      000E53 C9                    2569 	.db #0xc9	; 201
      000E54 AA                    2570 	.db #0xaa	; 170
      000E55 28                    2571 	.db #0x28	; 40
      000E56 46                    2572 	.db #0x46	; 70	'F'
      000E57 82                    2573 	.db #0x82	; 130
      000E58 AB                    2574 	.db #0xab	; 171
      000E59 0A                    2575 	.db #0x0a	; 10
      000E5A 11                    2576 	.db #0x11	; 17
      000E5B B0                    2577 	.db #0xb0	; 176
      000E5C AC                    2578 	.db #0xac	; 172
      000E5D 20                    2579 	.db #0x20	; 32
      000E5E 14                    2580 	.db #0x14	; 20
      000E5F 81                    2581 	.db #0x81	; 129
      000E60 88                    2582 	.db #0x88	; 136
      000E61 89                    2583 	.db #0x89	; 137
      000E62 88                    2584 	.db #0x88	; 136
      000E63 18                    2585 	.db #0x18	; 24
      000E64 20                    2586 	.db #0x20	; 32
      000E65 44                    2587 	.db #0x44	; 68	'D'
      000E66 A1                    2588 	.db #0xa1	; 161
      000E67 9A                    2589 	.db #0x9a	; 154
      000E68 28                    2590 	.db #0x28	; 40
      000E69 90                    2591 	.db #0x90	; 144
      000E6A F8                    2592 	.db #0xf8	; 248
      000E6B FF                    2593 	.db #0xff	; 255
      000E6C 28                    2594 	.db #0x28	; 40
      000E6D 34                    2595 	.db #0x34	; 52	'4'
      000E6E 90                    2596 	.db #0x90	; 144
      000E6F BB                    2597 	.db #0xbb	; 187
      000E70 0A                    2598 	.db #0x0a	; 10
      000E71 21                    2599 	.db #0x21	; 33
      000E72 88                    2600 	.db #0x88	; 136
      000E73 30                    2601 	.db #0x30	; 48	'0'
      000E74 35                    2602 	.db #0x35	; 53	'5'
      000E75 92                    2603 	.db #0x92	; 146
      000E76 BD                    2604 	.db #0xbd	; 189
      000E77 18                    2605 	.db #0x18	; 24
      000E78 23                    2606 	.db #0x23	; 35
      000E79 CB                    2607 	.db #0xcb	; 203
      000E7A 0D                    2608 	.db #0x0d	; 13
      000E7B 21                    2609 	.db #0x21	; 33
      000E7C D0                    2610 	.db #0xd0	; 208
      000E7D BC                    2611 	.db #0xbc	; 188
      000E7E 40                    2612 	.db #0x40	; 64
      000E7F 34                    2613 	.db #0x34	; 52	'4'
      000E80 98                    2614 	.db #0x98	; 152
      000E81 8B                    2615 	.db #0x8b	; 139
      000E82 53                    2616 	.db #0x53	; 83	'S'
      000E83 83                    2617 	.db #0x83	; 131
      000E84 BB                    2618 	.db #0xbb	; 187
      000E85 39                    2619 	.db #0x39	; 57	'9'
      000E86 26                    2620 	.db #0x26	; 38
      000E87 90                    2621 	.db #0x90	; 144
      000E88 CA                    2622 	.db #0xca	; 202
      000E89 CE                    2623 	.db #0xce	; 206
      000E8A 8A                    2624 	.db #0x8a	; 138
      000E8B 11                    2625 	.db #0x11	; 17
      000E8C 01                    2626 	.db #0x01	; 1
      000E8D 10                    2627 	.db #0x10	; 16
      000E8E 44                    2628 	.db #0x44	; 68	'D'
      000E8F 81                    2629 	.db #0x81	; 129
      000E90 99                    2630 	.db #0x99	; 153
      000E91 10                    2631 	.db #0x10	; 16
      000E92 34                    2632 	.db #0x34	; 52	'4'
      000E93 01                    2633 	.db #0x01	; 1
      000E94 98                    2634 	.db #0x98	; 152
      000E95 A8                    2635 	.db #0xa8	; 168
      000E96 FA                    2636 	.db #0xfa	; 250
      000E97 BF                    2637 	.db #0xbf	; 191
      000E98 9B                    2638 	.db #0x9b	; 155
      000E99 28                    2639 	.db #0x28	; 40
      000E9A 31                    2640 	.db #0x31	; 49	'1'
      000E9B 44                    2641 	.db #0x44	; 68	'D'
      000E9C 13                    2642 	.db #0x13	; 19
      000E9D A0                    2643 	.db #0xa0	; 160
      000E9E 8A                    2644 	.db #0x8a	; 138
      000E9F 21                    2645 	.db #0x21	; 33
      000EA0 32                    2646 	.db #0x32	; 50	'2'
      000EA1 54                    2647 	.db #0x54	; 84	'T'
      000EA2 01                    2648 	.db #0x01	; 1
      000EA3 FA                    2649 	.db #0xfa	; 250
      000EA4 CC                    2650 	.db #0xcc	; 204
      000EA5 AB                    2651 	.db #0xab	; 171
      000EA6 8A                    2652 	.db #0x8a	; 138
      000EA7 41                    2653 	.db #0x41	; 65	'A'
      000EA8 34                    2654 	.db #0x34	; 52	'4'
      000EA9 22                    2655 	.db #0x22	; 34
      000EAA 80                    2656 	.db #0x80	; 128
      000EAB 99                    2657 	.db #0x99	; 153
      000EAC 9A                    2658 	.db #0x9a	; 154
      000EAD 41                    2659 	.db #0x41	; 65	'A'
      000EAE 35                    2660 	.db #0x35	; 53	'5'
      000EAF 03                    2661 	.db #0x03	; 3
      000EB0 A0                    2662 	.db #0xa0	; 160
      000EB1 FE                    2663 	.db #0xfe	; 254
      000EB2 BC                    2664 	.db #0xbc	; 188
      000EB3 09                    2665 	.db #0x09	; 9
      000EB4 22                    2666 	.db #0x22	; 34
      000EB5 23                    2667 	.db #0x23	; 35
      000EB6 23                    2668 	.db #0x23	; 35
      000EB7 81                    2669 	.db #0x81	; 129
      000EB8 BB                    2670 	.db #0xbb	; 187
      000EB9 9C                    2671 	.db #0x9c	; 156
      000EBA 41                    2672 	.db #0x41	; 65	'A'
      000EBB 43                    2673 	.db #0x43	; 67	'C'
      000EBC 44                    2674 	.db #0x44	; 68	'D'
      000EBD 81                    2675 	.db #0x81	; 129
      000EBE CC                    2676 	.db #0xcc	; 204
      000EBF BD                    2677 	.db #0xbd	; 189
      000EC0 AB                    2678 	.db #0xab	; 171
      000EC1 31                    2679 	.db #0x31	; 49	'1'
      000EC2 25                    2680 	.db #0x25	; 37
      000EC3 02                    2681 	.db #0x02	; 2
      000EC4 08                    2682 	.db #0x08	; 8
      000EC5 88                    2683 	.db #0x88	; 136
      000EC6 BB                    2684 	.db #0xbb	; 187
      000EC7 09                    2685 	.db #0x09	; 9
      000EC8 64                    2686 	.db #0x64	; 100	'd'
      000EC9 23                    2687 	.db #0x23	; 35
      000ECA 22                    2688 	.db #0x22	; 34
      000ECB D8                    2689 	.db #0xd8	; 216
      000ECC CD                    2690 	.db #0xcd	; 205
      000ECD AB                    2691 	.db #0xab	; 171
      000ECE 1A                    2692 	.db #0x1a	; 26
      000ECF 53                    2693 	.db #0x53	; 83	'S'
      000ED0 13                    2694 	.db #0x13	; 19
      000ED1 80                    2695 	.db #0x80	; 128
      000ED2 99                    2696 	.db #0x99	; 153
      000ED3 99                    2697 	.db #0x99	; 153
      000ED4 89                    2698 	.db #0x89	; 137
      000ED5 31                    2699 	.db #0x31	; 49	'1'
      000ED6 36                    2700 	.db #0x36	; 54	'6'
      000ED7 33                    2701 	.db #0x33	; 51	'3'
      000ED8 83                    2702 	.db #0x83	; 131
      000ED9 ED                    2703 	.db #0xed	; 237
      000EDA BC                    2704 	.db #0xbc	; 188
      000EDB 9B                    2705 	.db #0x9b	; 155
      000EDC 48                    2706 	.db #0x48	; 72	'H'
      000EDD 25                    2707 	.db #0x25	; 37
      000EDE 81                    2708 	.db #0x81	; 129
      000EDF 98                    2709 	.db #0x98	; 152
      000EE0 99                    2710 	.db #0x99	; 153
      000EE1 99                    2711 	.db #0x99	; 153
      000EE2 31                    2712 	.db #0x31	; 49	'1'
      000EE3 42                    2713 	.db #0x42	; 66	'B'
      000EE4 21                    2714 	.db #0x21	; 33
      000EE5 32                    2715 	.db #0x32	; 50	'2'
      000EE6 A0                    2716 	.db #0xa0	; 160
      000EE7 EE                    2717 	.db #0xee	; 238
      000EE8 BB                    2718 	.db #0xbb	; 187
      000EE9 AB                    2719 	.db #0xab	; 171
      000EEA 62                    2720 	.db #0x62	; 98	'b'
      000EEB 24                    2721 	.db #0x24	; 36
      000EEC 80                    2722 	.db #0x80	; 128
      000EED 9B                    2723 	.db #0x9b	; 155
      000EEE 89                    2724 	.db #0x89	; 137
      000EEF 88                    2725 	.db #0x88	; 136
      000EF0 43                    2726 	.db #0x43	; 67	'C'
      000EF1 13                    2727 	.db #0x13	; 19
      000EF2 08                    2728 	.db #0x08	; 8
      000EF3 50                    2729 	.db #0x50	; 80	'P'
      000EF4 81                    2730 	.db #0x81	; 129
      000EF5 DC                    2731 	.db #0xdc	; 220
      000EF6 BC                    2732 	.db #0xbc	; 188
      000EF7 8B                    2733 	.db #0x8b	; 139
      000EF8 62                    2734 	.db #0x62	; 98	'b'
      000EF9 23                    2735 	.db #0x23	; 35
      000EFA 98                    2736 	.db #0x98	; 152
      000EFB AB                    2737 	.db #0xab	; 171
      000EFC 89                    2738 	.db #0x89	; 137
      000EFD 21                    2739 	.db #0x21	; 33
      000EFE 33                    2740 	.db #0x33	; 51	'3'
      000EFF 12                    2741 	.db #0x12	; 18
      000F00 10                    2742 	.db #0x10	; 16
      000F01 73                    2743 	.db #0x73	; 115	's'
      000F02 03                    2744 	.db #0x03	; 3
      000F03 DD                    2745 	.db #0xdd	; 221
      000F04 CC                    2746 	.db #0xcc	; 204
      000F05 8A                    2747 	.db #0x8a	; 138
      000F06 52                    2748 	.db #0x52	; 82	'R'
      000F07 22                    2749 	.db #0x22	; 34
      000F08 A8                    2750 	.db #0xa8	; 168
      000F09 AA                    2751 	.db #0xaa	; 170
      000F0A 89                    2752 	.db #0x89	; 137
      000F0B 32                    2753 	.db #0x32	; 50	'2'
      000F0C 24                    2754 	.db #0x24	; 36
      000F0D 81                    2755 	.db #0x81	; 129
      000F0E 88                    2756 	.db #0x88	; 136
      000F0F 60                    2757 	.db #0x60	; 96
      000F10 01                    2758 	.db #0x01	; 1
      000F11 EB                    2759 	.db #0xeb	; 235
      000F12 BC                    2760 	.db #0xbc	; 188
      000F13 9A                    2761 	.db #0x9a	; 154
      000F14 44                    2762 	.db #0x44	; 68	'D'
      000F15 13                    2763 	.db #0x13	; 19
      000F16 B8                    2764 	.db #0xb8	; 184
      000F17 9B                    2765 	.db #0x9b	; 155
      000F18 09                    2766 	.db #0x09	; 9
      000F19 41                    2767 	.db #0x41	; 65	'A'
      000F1A 24                    2768 	.db #0x24	; 36
      000F1B 80                    2769 	.db #0x80	; 128
      000F1C 89                    2770 	.db #0x89	; 137
      000F1D 31                    2771 	.db #0x31	; 49	'1'
      000F1E 94                    2772 	.db #0x94	; 148
      000F1F E9                    2773 	.db #0xe9	; 233
      000F20 FB                    2774 	.db #0xfb	; 251
      000F21 9A                    2775 	.db #0x9a	; 154
      000F22 42                    2776 	.db #0x42	; 66	'B'
      000F23 13                    2777 	.db #0x13	; 19
      000F24 98                    2778 	.db #0x98	; 152
      000F25 AB                    2779 	.db #0xab	; 171
      000F26 0A                    2780 	.db #0x0a	; 10
      000F27 31                    2781 	.db #0x31	; 49	'1'
      000F28 25                    2782 	.db #0x25	; 37
      000F29 91                    2783 	.db #0x91	; 145
      000F2A 90                    2784 	.db #0x90	; 144
      000F2B 33                    2785 	.db #0x33	; 51	'3'
      000F2C 14                    2786 	.db #0x14	; 20
      000F2D BC                    2787 	.db #0xbc	; 188
      000F2E BF                    2788 	.db #0xbf	; 191
      000F2F AC                    2789 	.db #0xac	; 172
      000F30 48                    2790 	.db #0x48	; 72	'H'
      000F31 25                    2791 	.db #0x25	; 37
      000F32 90                    2792 	.db #0x90	; 144
      000F33 9B                    2793 	.db #0x9b	; 155
      000F34 89                    2794 	.db #0x89	; 137
      000F35 38                    2795 	.db #0x38	; 56	'8'
      000F36 34                    2796 	.db #0x34	; 52	'4'
      000F37 90                    2797 	.db #0x90	; 144
      000F38 19                    2798 	.db #0x19	; 25
      000F39 43                    2799 	.db #0x43	; 67	'C'
      000F3A 82                    2800 	.db #0x82	; 130
      000F3B DA                    2801 	.db #0xda	; 218
      000F3C DB                    2802 	.db #0xdb	; 219
      000F3D AD                    2803 	.db #0xad	; 173
      000F3E 28                    2804 	.db #0x28	; 40
      000F3F 35                    2805 	.db #0x35	; 53	'5'
      000F40 6C                    2806 	.db #0x6c	; 108	'l'
      000F41 2A                    2807 	.db #0x2a	; 42
      000F42 4E                    2808 	.db #0x4e	; 78	'N'
      000F43 A9                    2809 	.db #0xa9	; 169
      000F44 AA                    2810 	.db #0xaa	; 170
      000F45 08                    2811 	.db #0x08	; 8
      000F46 52                    2812 	.db #0x52	; 82	'R'
      000F47 12                    2813 	.db #0x12	; 18
      000F48 99                    2814 	.db #0x99	; 153
      000F49 20                    2815 	.db #0x20	; 32
      000F4A 43                    2816 	.db #0x43	; 67	'C'
      000F4B 91                    2817 	.db #0x91	; 145
      000F4C CD                    2818 	.db #0xcd	; 205
      000F4D BA                    2819 	.db #0xba	; 186
      000F4E CB                    2820 	.db #0xcb	; 203
      000F4F 31                    2821 	.db #0x31	; 49	'1'
      000F50 37                    2822 	.db #0x37	; 55	'7'
      000F51 A8                    2823 	.db #0xa8	; 168
      000F52 AB                    2824 	.db #0xab	; 171
      000F53 19                    2825 	.db #0x19	; 25
      000F54 40                    2826 	.db #0x40	; 64
      000F55 32                    2827 	.db #0x32	; 50	'2'
      000F56 88                    2828 	.db #0x88	; 136
      000F57 19                    2829 	.db #0x19	; 25
      000F58 54                    2830 	.db #0x54	; 84	'T'
      000F59 81                    2831 	.db #0x81	; 129
      000F5A AB                    2832 	.db #0xab	; 171
      000F5B DB                    2833 	.db #0xdb	; 219
      000F5C BC                    2834 	.db #0xbc	; 188
      000F5D 1A                    2835 	.db #0x1a	; 26
      000F5E 46                    2836 	.db #0x46	; 70	'F'
      000F5F 81                    2837 	.db #0x81	; 129
      000F60 AB                    2838 	.db #0xab	; 171
      000F61 0A                    2839 	.db #0x0a	; 10
      000F62 21                    2840 	.db #0x21	; 33
      000F63 22                    2841 	.db #0x22	; 34
      000F64 02                    2842 	.db #0x02	; 2
      000F65 80                    2843 	.db #0x80	; 128
      000F66 41                    2844 	.db #0x41	; 65	'A'
      000F67 06                    2845 	.db #0x06	; 6
      000F68 C0                    2846 	.db #0xc0	; 192
      000F69 B9                    2847 	.db #0xb9	; 185
      000F6A FB                    2848 	.db #0xfb	; 251
      000F6B 9A                    2849 	.db #0x9a	; 154
      000F6C 42                    2850 	.db #0x42	; 66	'B'
      000F6D 14                    2851 	.db #0x14	; 20
      000F6E B9                    2852 	.db #0xb9	; 185
      000F6F 9B                    2853 	.db #0x9b	; 155
      000F70 30                    2854 	.db #0x30	; 48	'0'
      000F71 31                    2855 	.db #0x31	; 49	'1'
      000F72 21                    2856 	.db #0x21	; 33
      000F73 10                    2857 	.db #0x10	; 16
      000F74 28                    2858 	.db #0x28	; 40
      000F75 64                    2859 	.db #0x64	; 100	'd'
      000F76 A0                    2860 	.db #0xa0	; 160
      000F77 8C                    2861 	.db #0x8c	; 140
      000F78 B9                    2862 	.db #0xb9	; 185
      000F79 CF                    2863 	.db #0xcf	; 207
      000F7A 18                    2864 	.db #0x18	; 24
      000F7B 25                    2865 	.db #0x25	; 37
      000F7C 90                    2866 	.db #0x90	; 144
      000F7D AB                    2867 	.db #0xab	; 171
      000F7E 09                    2868 	.db #0x09	; 9
      000F7F 32                    2869 	.db #0x32	; 50	'2'
      000F80 23                    2870 	.db #0x23	; 35
      000F81 89                    2871 	.db #0x89	; 137
      000F82 38                    2872 	.db #0x38	; 56	'8'
      000F83 35                    2873 	.db #0x35	; 53	'5'
      000F84 82                    2874 	.db #0x82	; 130
      000F85 DA                    2875 	.db #0xda	; 218
      000F86 BA                    2876 	.db #0xba	; 186
      000F87 CE                    2877 	.db #0xce	; 206
      000F88 0A                    2878 	.db #0x0a	; 10
      000F89 63                    2879 	.db #0x63	; 99	'c'
      000F8A 81                    2880 	.db #0x81	; 129
      000F8B B9                    2881 	.db #0xb9	; 185
      000F8C 8A                    2882 	.db #0x8a	; 138
      000F8D 31                    2883 	.db #0x31	; 49	'1'
      000F8E 24                    2884 	.db #0x24	; 36
      000F8F 80                    2885 	.db #0x80	; 128
      000F90 19                    2886 	.db #0x19	; 25
      000F91 43                    2887 	.db #0x43	; 67	'C'
      000F92 13                    2888 	.db #0x13	; 19
      000F93 CA                    2889 	.db #0xca	; 202
      000F94 9C                    2890 	.db #0x9c	; 156
      000F95 D9                    2891 	.db #0xd9	; 217
      000F96 AD                    2892 	.db #0xad	; 173
      000F97 38                    2893 	.db #0x38	; 56	'8'
      000F98 15                    2894 	.db #0x15	; 21
      000F99 A0                    2895 	.db #0xa0	; 160
      000F9A AB                    2896 	.db #0xab	; 171
      000F9B 10                    2897 	.db #0x10	; 16
      000F9C 25                    2898 	.db #0x25	; 37
      000F9D 81                    2899 	.db #0x81	; 129
      000F9E 19                    2900 	.db #0x19	; 25
      000F9F 33                    2901 	.db #0x33	; 51	'3'
      000FA0 03                    2902 	.db #0x03	; 3
      000FA1 A0                    2903 	.db #0xa0	; 160
      000FA2 CA                    2904 	.db #0xca	; 202
      000FA3 EC                    2905 	.db #0xec	; 236
      000FA4 CC                    2906 	.db #0xcc	; 204
      000FA5 19                    2907 	.db #0x19	; 25
      000FA6 34                    2908 	.db #0x34	; 52	'4'
      000FA7 90                    2909 	.db #0x90	; 144
      000FA8 AA                    2910 	.db #0xaa	; 170
      000FA9 08                    2911 	.db #0x08	; 8
      000FAA 41                    2912 	.db #0x41	; 65	'A'
      000FAB 22                    2913 	.db #0x22	; 34
      000FAC 00                    2914 	.db #0x00	; 0
      000FAD 40                    2915 	.db #0x40	; 64
      000FAE 34                    2916 	.db #0x34	; 52	'4'
      000FAF B0                    2917 	.db #0xb0	; 176
      000FB0 AA                    2918 	.db #0xaa	; 170
      000FB1 D1                    2919 	.db #0xd1	; 209
      000FB2 CF                    2920 	.db #0xcf	; 207
      000FB3 8B                    2921 	.db #0x8b	; 139
      000FB4 43                    2922 	.db #0x43	; 67	'C'
      000FB5 81                    2923 	.db #0x81	; 129
      000FB6 A9                    2924 	.db #0xa9	; 169
      000FB7 88                    2925 	.db #0x88	; 136
      000FB8 20                    2926 	.db #0x20	; 32
      000FB9 32                    2927 	.db #0x32	; 50	'2'
      000FBA 12                    2928 	.db #0x12	; 18
      000FBB 30                    2929 	.db #0x30	; 48	'0'
      000FBC 55                    2930 	.db #0x55	; 85	'U'
      000FBD 00                    2931 	.db #0x00	; 0
      000FBE 9A                    2932 	.db #0x9a	; 154
      000FBF A8                    2933 	.db #0xa8	; 168
      000FC0 DE                    2934 	.db #0xde	; 222
      000FC1 9C                    2935 	.db #0x9c	; 156
      000FC2 38                    2936 	.db #0x38	; 56	'8'
      000FC3 23                    2937 	.db #0x23	; 35
      000FC4 A9                    2938 	.db #0xa9	; 169
      000FC5 9B                    2939 	.db #0x9b	; 155
      000FC6 10                    2940 	.db #0x10	; 16
      000FC7 53                    2941 	.db #0x53	; 83	'S'
      000FC8 13                    2942 	.db #0x13	; 19
      000FC9 09                    2943 	.db #0x09	; 9
      000FCA 73                    2944 	.db #0x73	; 115	's'
      000FCB 04                    2945 	.db #0x04	; 4
      000FCC A9                    2946 	.db #0xa9	; 169
      000FCD 08                    2947 	.db #0x08	; 8
      000FCE D9                    2948 	.db #0xd9	; 217
      000FCF BD                    2949 	.db #0xbd	; 189
      000FD0 09                    2950 	.db #0x09	; 9
      000FD1 22                    2951 	.db #0x22	; 34
      000FD2 92                    2952 	.db #0x92	; 146
      000FD3 AA                    2953 	.db #0xaa	; 170
      000FD4 88                    2954 	.db #0x88	; 136
      000FD5 43                    2955 	.db #0x43	; 67	'C'
      000FD6 33                    2956 	.db #0x33	; 51	'3'
      000FD7 28                    2957 	.db #0x28	; 40
      000FD8 71                    2958 	.db #0x71	; 113	'q'
      000FD9 53                    2959 	.db #0x53	; 83	'S'
      000FDA 90                    2960 	.db #0x90	; 144
      000FDB 0A                    2961 	.db #0x0a	; 10
      000FDC A9                    2962 	.db #0xa9	; 169
      000FDD CF                    2963 	.db #0xcf	; 207
      000FDE 9B                    2964 	.db #0x9b	; 155
      000FDF 31                    2965 	.db #0x31	; 49	'1'
      000FE0 02                    2966 	.db #0x02	; 2
      000FE1 A9                    2967 	.db #0xa9	; 169
      000FE2 8B                    2968 	.db #0x8b	; 139
      000FE3 33                    2969 	.db #0x33	; 51	'3'
      000FE4 15                    2970 	.db #0x15	; 21
      000FE5 82                    2971 	.db #0x82	; 130
      000FE6 02                    2972 	.db #0x02	; 2
      000FE7 27                    2973 	.db #0x27	; 39
      000FE8 04                    2974 	.db #0x04	; 4
      000FE9 B8                    2975 	.db #0xb8	; 184
      000FEA 89                    2976 	.db #0x89	; 137
      000FEB FA                    2977 	.db #0xfa	; 250
      000FEC BC                    2978 	.db #0xbc	; 188
      000FED 18                    2979 	.db #0x18	; 24
      000FEE 13                    2980 	.db #0x13	; 19
      000FEF 90                    2981 	.db #0x90	; 144
      000FF0 9A                    2982 	.db #0x9a	; 154
      000FF1 29                    2983 	.db #0x29	; 41
      000FF2 53                    2984 	.db #0x53	; 83	'S'
      000FF3 11                    2985 	.db #0x11	; 17
      000FF4 20                    2986 	.db #0x20	; 32
      000FF5 43                    2987 	.db #0x43	; 67	'C'
      000FF6 16                    2988 	.db #0x16	; 22
      000FF7 91                    2989 	.db #0x91	; 145
      000FF8 A9                    2990 	.db #0xa9	; 169
      000FF9 B8                    2991 	.db #0xb8	; 184
      000FFA DF                    2992 	.db #0xdf	; 223
      000FFB 9A                    2993 	.db #0x9a	; 154
      000FFC 20                    2994 	.db #0x20	; 32
      000FFD 02                    2995 	.db #0x02	; 2
      000FFE A9                    2996 	.db #0xa9	; 169
      000FFF 89                    2997 	.db #0x89	; 137
      001000 30                    2998 	.db #0x30	; 48	'0'
      001001 26                    2999 	.db #0x26	; 38
      001002 81                    3000 	.db #0x81	; 129
      001003 40                    3001 	.db #0x40	; 64
      001004 33                    3002 	.db #0x33	; 51	'3'
      001005 13                    3003 	.db #0x13	; 19
      001006 B8                    3004 	.db #0xb8	; 184
      001007 CA                    3005 	.db #0xca	; 202
      001008 FA                    3006 	.db #0xfa	; 250
      001009 BE                    3007 	.db #0xbe	; 190
      00100A 08                    3008 	.db #0x08	; 8
      00100B 02                    3009 	.db #0x02	; 2
      00100C 90                    3010 	.db #0x90	; 144
      00100D 89                    3011 	.db #0x89	; 137
      00100E 00                    3012 	.db #0x00	; 0
      00100F 62                    3013 	.db #0x62	; 98	'b'
      001010 12                    3014 	.db #0x12	; 18
      001011 18                    3015 	.db #0x18	; 24
      001012 52                    3016 	.db #0x52	; 82	'R'
      001013 32                    3017 	.db #0x32	; 50	'2'
      001014 80                    3018 	.db #0x80	; 128
      001015 9B                    3019 	.db #0x9b	; 155
      001016 A9                    3020 	.db #0xa9	; 169
      001017 FF                    3021 	.db #0xff	; 255
      001018 0B                    3022 	.db #0x0b	; 11
      001019 10                    3023 	.db #0x10	; 16
      00101A 81                    3024 	.db #0x81	; 129
      00101B A9                    3025 	.db #0xa9	; 169
      00101C 88                    3026 	.db #0x88	; 136
      00101D 22                    3027 	.db #0x22	; 34
      00101E 24                    3028 	.db #0x24	; 36
      00101F 82                    3029 	.db #0x82	; 130
      001020 31                    3030 	.db #0x31	; 49	'1'
      001021 36                    3031 	.db #0x36	; 54	'6'
      001022 13                    3032 	.db #0x13	; 19
      001023 98                    3033 	.db #0x98	; 152
      001024 CA                    3034 	.db #0xca	; 202
      001025 FA                    3035 	.db #0xfa	; 250
      001026 9F                    3036 	.db #0x9f	; 159
      001027 00                    3037 	.db #0x00	; 0
      001028 81                    3038 	.db #0x81	; 129
      001029 88                    3039 	.db #0x88	; 136
      00102A 89                    3040 	.db #0x89	; 137
      00102B 10                    3041 	.db #0x10	; 16
      00102C 23                    3042 	.db #0x23	; 35
      00102D 21                    3043 	.db #0x21	; 33
      00102E 20                    3044 	.db #0x20	; 32
      00102F 73                    3045 	.db #0x73	; 115	's'
      001030 32                    3046 	.db #0x32	; 50	'2'
      001031 91                    3047 	.db #0x91	; 145
      001032 8A                    3048 	.db #0x8a	; 138
      001033 FB                    3049 	.db #0xfb	; 251
      001034 AF                    3050 	.db #0xaf	; 175
      001035 18                    3051 	.db #0x18	; 24
      001036 00                    3052 	.db #0x00	; 0
      001037 08                    3053 	.db #0x08	; 8
      001038 99                    3054 	.db #0x99	; 153
      001039 09                    3055 	.db #0x09	; 9
      00103A 42                    3056 	.db #0x42	; 66	'B'
      00103B 03                    3057 	.db #0x03	; 3
      00103C 11                    3058 	.db #0x11	; 17
      00103D 34                    3059 	.db #0x34	; 52	'4'
      00103E 33                    3060 	.db #0x33	; 51	'3'
      00103F CE                    3061 	.db #0xce	; 206
      001040 3B                    3062 	.db #0x3b	; 59
      001041 3D                    3063 	.db #0x3d	; 61
      001042 B0                    3064 	.db #0xb0	; 176
      001043 BA                    3065 	.db #0xba	; 186
      001044 FF                    3066 	.db #0xff	; 255
      001045 9B                    3067 	.db #0x9b	; 155
      001046 18                    3068 	.db #0x18	; 24
      001047 00                    3069 	.db #0x00	; 0
      001048 88                    3070 	.db #0x88	; 136
      001049 9A                    3071 	.db #0x9a	; 154
      00104A 38                    3072 	.db #0x38	; 56	'8'
      00104B 14                    3073 	.db #0x14	; 20
      00104C 32                    3074 	.db #0x32	; 50	'2'
      00104D 34                    3075 	.db #0x34	; 52	'4'
      00104E 52                    3076 	.db #0x52	; 82	'R'
      00104F 53                    3077 	.db #0x53	; 83	'S'
      001050 90                    3078 	.db #0x90	; 144
      001051 9A                    3079 	.db #0x9a	; 154
      001052 F9                    3080 	.db #0xf9	; 249
      001053 AD                    3081 	.db #0xad	; 173
      001054 08                    3082 	.db #0x08	; 8
      001055 80                    3083 	.db #0x80	; 128
      001056 80                    3084 	.db #0x80	; 128
      001057 A0                    3085 	.db #0xa0	; 160
      001058 18                    3086 	.db #0x18	; 24
      001059 33                    3087 	.db #0x33	; 51	'3'
      00105A 30                    3088 	.db #0x30	; 48	'0'
      00105B 73                    3089 	.db #0x73	; 115	's'
      00105C 22                    3090 	.db #0x22	; 34
      00105D 52                    3091 	.db #0x52	; 82	'R'
      00105E 92                    3092 	.db #0x92	; 146
      00105F 9A                    3093 	.db #0x9a	; 154
      001060 F0                    3094 	.db #0xf0	; 240
      001061 EB                    3095 	.db #0xeb	; 235
      001062 88                    3096 	.db #0x88	; 136
      001063 08                    3097 	.db #0x08	; 8
      001064 10                    3098 	.db #0x10	; 16
      001065 88                    3099 	.db #0x88	; 136
      001066 8B                    3100 	.db #0x8b	; 139
      001067 31                    3101 	.db #0x31	; 49	'1'
      001068 23                    3102 	.db #0x23	; 35
      001069 34                    3103 	.db #0x34	; 52	'4'
      00106A 24                    3104 	.db #0x24	; 36
      00106B 52                    3105 	.db #0x52	; 82	'R'
      00106C 02                    3106 	.db #0x02	; 2
      00106D AB                    3107 	.db #0xab	; 171
      00106E A9                    3108 	.db #0xa9	; 169
      00106F EF                    3109 	.db #0xef	; 239
      001070 99                    3110 	.db #0x99	; 153
      001071 90                    3111 	.db #0x90	; 144
      001072 01                    3112 	.db #0x01	; 1
      001073 A2                    3113 	.db #0xa2	; 162
      001074 99                    3114 	.db #0x99	; 153
      001075 10                    3115 	.db #0x10	; 16
      001076 52                    3116 	.db #0x52	; 82	'R'
      001077 23                    3117 	.db #0x23	; 35
      001078 42                    3118 	.db #0x42	; 66	'B'
      001079 33                    3119 	.db #0x33	; 51	'3'
      00107A 04                    3120 	.db #0x04	; 4
      00107B 90                    3121 	.db #0x90	; 144
      00107C D9                    3122 	.db #0xd9	; 217
      00107D AF                    3123 	.db #0xaf	; 175
      00107E 8B                    3124 	.db #0x8b	; 139
      00107F 89                    3125 	.db #0x89	; 137
      001080 00                    3126 	.db #0x00	; 0
      001081 90                    3127 	.db #0x90	; 144
      001082 A8                    3128 	.db #0xa8	; 168
      001083 11                    3129 	.db #0x11	; 17
      001084 14                    3130 	.db #0x14	; 20
      001085 63                    3131 	.db #0x63	; 99	'c'
      001086 33                    3132 	.db #0x33	; 51	'3'
      001087 62                    3133 	.db #0x62	; 98	'b'
      001088 21                    3134 	.db #0x21	; 33
      001089 A8                    3135 	.db #0xa8	; 168
      00108A 89                    3136 	.db #0x89	; 137
      00108B ED                    3137 	.db #0xed	; 237
      00108C AA                    3138 	.db #0xaa	; 170
      00108D 88                    3139 	.db #0x88	; 136
      00108E 80                    3140 	.db #0x80	; 128
      00108F 81                    3141 	.db #0x81	; 129
      001090 A9                    3142 	.db #0xa9	; 169
      001091 09                    3143 	.db #0x09	; 9
      001092 32                    3144 	.db #0x32	; 50	'2'
      001093 62                    3145 	.db #0x62	; 98	'b'
      001094 53                    3146 	.db #0x53	; 83	'S'
      001095 23                    3147 	.db #0x23	; 35
      001096 44                    3148 	.db #0x44	; 68	'D'
      001097 90                    3149 	.db #0x90	; 144
      001098 99                    3150 	.db #0x99	; 153
      001099 FA                    3151 	.db #0xfa	; 250
      00109A AA                    3152 	.db #0xaa	; 170
      00109B 89                    3153 	.db #0x89	; 137
      00109C 89                    3154 	.db #0x89	; 137
      00109D 08                    3155 	.db #0x08	; 8
      00109E 98                    3156 	.db #0x98	; 152
      00109F 0A                    3157 	.db #0x0a	; 10
      0010A0 11                    3158 	.db #0x11	; 17
      0010A1 42                    3159 	.db #0x42	; 66	'B'
      0010A2 26                    3160 	.db #0x26	; 38
      0010A3 24                    3161 	.db #0x24	; 36
      0010A4 25                    3162 	.db #0x25	; 37
      0010A5 13                    3163 	.db #0x13	; 19
      0010A6 9A                    3164 	.db #0x9a	; 154
      0010A7 D9                    3165 	.db #0xd9	; 217
      0010A8 CC                    3166 	.db #0xcc	; 204
      0010A9 99                    3167 	.db #0x99	; 153
      0010AA 99                    3168 	.db #0x99	; 153
      0010AB 19                    3169 	.db #0x19	; 25
      0010AC 88                    3170 	.db #0x88	; 136
      0010AD 09                    3171 	.db #0x09	; 9
      0010AE 18                    3172 	.db #0x18	; 24
      0010AF 22                    3173 	.db #0x22	; 34
      0010B0 54                    3174 	.db #0x54	; 84	'T'
      0010B1 34                    3175 	.db #0x34	; 52	'4'
      0010B2 44                    3176 	.db #0x44	; 68	'D'
      0010B3 23                    3177 	.db #0x23	; 35
      0010B4 A8                    3178 	.db #0xa8	; 168
      0010B5 99                    3179 	.db #0x99	; 153
      0010B6 DC                    3180 	.db #0xdc	; 220
      0010B7 BB                    3181 	.db #0xbb	; 187
      0010B8 AA                    3182 	.db #0xaa	; 170
      0010B9 9A                    3183 	.db #0x9a	; 154
      0010BA 80                    3184 	.db #0x80	; 128
      0010BB 19                    3185 	.db #0x19	; 25
      0010BC 08                    3186 	.db #0x08	; 8
      0010BD 02                    3187 	.db #0x02	; 2
      0010BE 25                    3188 	.db #0x25	; 37
      0010BF 27                    3189 	.db #0x27	; 39
      0010C0 44                    3190 	.db #0x44	; 68	'D'
      0010C1 32                    3191 	.db #0x32	; 50	'2'
      0010C2 01                    3192 	.db #0x01	; 1
      0010C3 B2                    3193 	.db #0xb2	; 178
      0010C4 EA                    3194 	.db #0xea	; 234
      0010C5 CB                    3195 	.db #0xcb	; 203
      0010C6 AB                    3196 	.db #0xab	; 171
      0010C7 8B                    3197 	.db #0x8b	; 139
      0010C8 8A                    3198 	.db #0x8a	; 138
      0010C9 00                    3199 	.db #0x00	; 0
      0010CA 20                    3200 	.db #0x20	; 32
      0010CB 81                    3201 	.db #0x81	; 129
      0010CC 33                    3202 	.db #0x33	; 51	'3'
      0010CD 37                    3203 	.db #0x37	; 55	'7'
      0010CE 63                    3204 	.db #0x63	; 99	'c'
      0010CF 43                    3205 	.db #0x43	; 67	'C'
      0010D0 02                    3206 	.db #0x02	; 2
      0010D1 82                    3207 	.db #0x82	; 130
      0010D2 D0                    3208 	.db #0xd0	; 208
      0010D3 DB                    3209 	.db #0xdb	; 219
      0010D4 BB                    3210 	.db #0xbb	; 187
      0010D5 BA                    3211 	.db #0xba	; 186
      0010D6 89                    3212 	.db #0x89	; 137
      0010D7 08                    3213 	.db #0x08	; 8
      0010D8 30                    3214 	.db #0x30	; 48	'0'
      0010D9 30                    3215 	.db #0x30	; 48	'0'
      0010DA 20                    3216 	.db #0x20	; 32
      0010DB 44                    3217 	.db #0x44	; 68	'D'
      0010DC 24                    3218 	.db #0x24	; 36
      0010DD 45                    3219 	.db #0x45	; 69	'E'
      0010DE 23                    3220 	.db #0x23	; 35
      0010DF 83                    3221 	.db #0x83	; 131
      0010E0 92                    3222 	.db #0x92	; 146
      0010E1 FB                    3223 	.db #0xfb	; 251
      0010E2 CB                    3224 	.db #0xcb	; 203
      0010E3 BB                    3225 	.db #0xbb	; 187
      0010E4 AB                    3226 	.db #0xab	; 171
      0010E5 89                    3227 	.db #0x89	; 137
      0010E6 10                    3228 	.db #0x10	; 16
      0010E7 40                    3229 	.db #0x40	; 64
      0010E8 31                    3230 	.db #0x31	; 49	'1'
      0010E9 12                    3231 	.db #0x12	; 18
      0010EA 23                    3232 	.db #0x23	; 35
      0010EB 37                    3233 	.db #0x37	; 55	'7'
      0010EC 53                    3234 	.db #0x53	; 83	'S'
      0010ED 04                    3235 	.db #0x04	; 4
      0010EE 02                    3236 	.db #0x02	; 2
      0010EF 98                    3237 	.db #0x98	; 152
      0010F0 AE                    3238 	.db #0xae	; 174
      0010F1 BC                    3239 	.db #0xbc	; 188
      0010F2 BA                    3240 	.db #0xba	; 186
      0010F3 BA                    3241 	.db #0xba	; 186
      0010F4 91                    3242 	.db #0x91	; 145
      0010F5 02                    3243 	.db #0x02	; 2
      0010F6 33                    3244 	.db #0x33	; 51	'3'
      0010F7 62                    3245 	.db #0x62	; 98	'b'
      0010F8 21                    3246 	.db #0x21	; 33
      0010F9 22                    3247 	.db #0x22	; 34
      0010FA 44                    3248 	.db #0x44	; 68	'D'
      0010FB 33                    3249 	.db #0x33	; 51	'3'
      0010FC 04                    3250 	.db #0x04	; 4
      0010FD 93                    3251 	.db #0x93	; 147
      0010FE D9                    3252 	.db #0xd9	; 217
      0010FF DC                    3253 	.db #0xdc	; 220
      001100 AB                    3254 	.db #0xab	; 171
      001101 AC                    3255 	.db #0xac	; 172
      001102 09                    3256 	.db #0x09	; 9
      001103 19                    3257 	.db #0x19	; 25
      001104 20                    3258 	.db #0x20	; 32
      001105 84                    3259 	.db #0x84	; 132
      001106 23                    3260 	.db #0x23	; 35
      001107 40                    3261 	.db #0x40	; 64
      001108 42                    3262 	.db #0x42	; 66	'B'
      001109 52                    3263 	.db #0x52	; 82	'R'
      00110A 22                    3264 	.db #0x22	; 34
      00110B 83                    3265 	.db #0x83	; 131
      00110C B2                    3266 	.db #0xb2	; 178
      00110D DB                    3267 	.db #0xdb	; 219
      00110E BE                    3268 	.db #0xbe	; 190
      00110F CB                    3269 	.db #0xcb	; 203
      001110 9A                    3270 	.db #0x9a	; 154
      001111 09                    3271 	.db #0x09	; 9
      001112 18                    3272 	.db #0x18	; 24
      001113 31                    3273 	.db #0x31	; 49	'1'
      001114 23                    3274 	.db #0x23	; 35
      001115 41                    3275 	.db #0x41	; 65	'A'
      001116 31                    3276 	.db #0x31	; 49	'1'
      001117 17                    3277 	.db #0x17	; 23
      001118 53                    3278 	.db #0x53	; 83	'S'
      001119 20                    3279 	.db #0x20	; 32
      00111A 92                    3280 	.db #0x92	; 146
      00111B B1                    3281 	.db #0xb1	; 177
      00111C BC                    3282 	.db #0xbc	; 188
      00111D CD                    3283 	.db #0xcd	; 205
      00111E 9C                    3284 	.db #0x9c	; 156
      00111F 8A                    3285 	.db #0x8a	; 138
      001120 09                    3286 	.db #0x09	; 9
      001121 18                    3287 	.db #0x18	; 24
      001122 03                    3288 	.db #0x03	; 3
      001123 03                    3289 	.db #0x03	; 3
      001124 05                    3290 	.db #0x05	; 5
      001125 31                    3291 	.db #0x31	; 49	'1'
      001126 43                    3292 	.db #0x43	; 67	'C'
      001127 44                    3293 	.db #0x44	; 68	'D'
      001128 50                    3294 	.db #0x50	; 80	'P'
      001129 08                    3295 	.db #0x08	; 8
      00112A B0                    3296 	.db #0xb0	; 176
      00112B CA                    3297 	.db #0xca	; 202
      00112C CB                    3298 	.db #0xcb	; 203
      00112D 9D                    3299 	.db #0x9d	; 157
      00112E 0B                    3300 	.db #0x0b	; 11
      00112F 99                    3301 	.db #0x99	; 153
      001130 02                    3302 	.db #0x02	; 2
      001131 11                    3303 	.db #0x11	; 17
      001132 32                    3304 	.db #0x32	; 50	'2'
      001133 42                    3305 	.db #0x42	; 66	'B'
      001134 31                    3306 	.db #0x31	; 49	'1'
      001135 54                    3307 	.db #0x54	; 84	'T'
      001136 51                    3308 	.db #0x51	; 81	'Q'
      001137 01                    3309 	.db #0x01	; 1
      001138 93                    3310 	.db #0x93	; 147
      001139 A1                    3311 	.db #0xa1	; 161
      00113A DB                    3312 	.db #0xdb	; 219
      00113B DB                    3313 	.db #0xdb	; 219
      00113C AC                    3314 	.db #0xac	; 172
      00113D 8B                    3315 	.db #0x8b	; 139
      00113E 41                    3316 	.db #0x41	; 65	'A'
      00113F CA                    3317 	.db #0xca	; 202
      001140 42                    3318 	.db #0x42	; 66	'B'
      001141 18                    3319 	.db #0x18	; 24
      001142 28                    3320 	.db #0x28	; 40
      001143 21                    3321 	.db #0x21	; 33
      001144 33                    3322 	.db #0x33	; 51	'3'
      001145 32                    3323 	.db #0x32	; 50	'2'
      001146 43                    3324 	.db #0x43	; 67	'C'
      001147 73                    3325 	.db #0x73	; 115	's'
      001148 32                    3326 	.db #0x32	; 50	'2'
      001149 13                    3327 	.db #0x13	; 19
      00114A 12                    3328 	.db #0x12	; 18
      00114B AA                    3329 	.db #0xaa	; 170
      00114C BE                    3330 	.db #0xbe	; 190
      00114D BE                    3331 	.db #0xbe	; 190
      00114E CB                    3332 	.db #0xcb	; 203
      00114F AA                    3333 	.db #0xaa	; 170
      001150 88                    3334 	.db #0x88	; 136
      001151 48                    3335 	.db #0x48	; 72	'H'
      001152 48                    3336 	.db #0x48	; 72	'H'
      001153 38                    3337 	.db #0x38	; 56	'8'
      001154 01                    3338 	.db #0x01	; 1
      001155 83                    3339 	.db #0x83	; 131
      001156 24                    3340 	.db #0x24	; 36
      001157 62                    3341 	.db #0x62	; 98	'b'
      001158 31                    3342 	.db #0x31	; 49	'1'
      001159 12                    3343 	.db #0x12	; 18
      00115A 80                    3344 	.db #0x80	; 128
      00115B AA                    3345 	.db #0xaa	; 170
      00115C BF                    3346 	.db #0xbf	; 191
      00115D AD                    3347 	.db #0xad	; 173
      00115E BB                    3348 	.db #0xbb	; 187
      00115F 98                    3349 	.db #0x98	; 152
      001160 08                    3350 	.db #0x08	; 8
      001161 31                    3351 	.db #0x31	; 49	'1'
      001162 31                    3352 	.db #0x31	; 49	'1'
      001163 43                    3353 	.db #0x43	; 67	'C'
      001164 20                    3354 	.db #0x20	; 32
      001165 94                    3355 	.db #0x94	; 148
      001166 15                    3356 	.db #0x15	; 21
      001167 32                    3357 	.db #0x32	; 50	'2'
      001168 33                    3358 	.db #0x33	; 51	'3'
      001169 05                    3359 	.db #0x05	; 5
      00116A 2A                    3360 	.db #0x2a	; 42
      00116B F0                    3361 	.db #0xf0	; 240
      00116C AA                    3362 	.db #0xaa	; 170
      00116D AD                    3363 	.db #0xad	; 173
      00116E AB                    3364 	.db #0xab	; 171
      00116F 8A                    3365 	.db #0x8a	; 138
      001170 A8                    3366 	.db #0xa8	; 168
      001171 03                    3367 	.db #0x03	; 3
      001172 13                    3368 	.db #0x13	; 19
      001173 15                    3369 	.db #0x15	; 21
      001174 23                    3370 	.db #0x23	; 35
      001175 23                    3371 	.db #0x23	; 35
      001176 15                    3372 	.db #0x15	; 21
      001177 73                    3373 	.db #0x73	; 115	's'
      001178 18                    3374 	.db #0x18	; 24
      001179 94                    3375 	.db #0x94	; 148
      00117A 08                    3376 	.db #0x08	; 8
      00117B D9                    3377 	.db #0xd9	; 217
      00117C C9                    3378 	.db #0xc9	; 201
      00117D C9                    3379 	.db #0xc9	; 201
      00117E AA                    3380 	.db #0xaa	; 170
      00117F 99                    3381 	.db #0x99	; 153
      001180 18                    3382 	.db #0x18	; 24
      001181 82                    3383 	.db #0x82	; 130
      001182 16                    3384 	.db #0x16	; 22
      001183 10                    3385 	.db #0x10	; 16
      001184 83                    3386 	.db #0x83	; 131
      001185 48                    3387 	.db #0x48	; 72	'H'
      001186 82                    3388 	.db #0x82	; 130
      001187 27                    3389 	.db #0x27	; 39
      001188 32                    3390 	.db #0x32	; 50	'2'
      001189 B3                    3391 	.db #0xb3	; 179
      00118A 02                    3392 	.db #0x02	; 2
      00118B CF                    3393 	.db #0xcf	; 207
      00118C C9                    3394 	.db #0xc9	; 201
      00118D AB                    3395 	.db #0xab	; 171
      00118E A9                    3396 	.db #0xa9	; 169
      00118F 10                    3397 	.db #0x10	; 16
      001190 40                    3398 	.db #0x40	; 64
      001191 03                    3399 	.db #0x03	; 3
      001192 23                    3400 	.db #0x23	; 35
      001193 88                    3401 	.db #0x88	; 136
      001194 B4                    3402 	.db #0xb4	; 180
      001195 4A                    3403 	.db #0x4a	; 74	'J'
      001196 80                    3404 	.db #0x80	; 128
      001197 46                    3405 	.db #0x46	; 70	'F'
      001198 50                    3406 	.db #0x50	; 80	'P'
      001199 82                    3407 	.db #0x82	; 130
      00119A 00                    3408 	.db #0x00	; 0
      00119B BC                    3409 	.db #0xbc	; 188
      00119C DB                    3410 	.db #0xdb	; 219
      00119D AC                    3411 	.db #0xac	; 172
      00119E A8                    3412 	.db #0xa8	; 168
      00119F 20                    3413 	.db #0x20	; 32
      0011A0 20                    3414 	.db #0x20	; 32
      0011A1 14                    3415 	.db #0x14	; 20
      0011A2 12                    3416 	.db #0x12	; 18
      0011A3 81                    3417 	.db #0x81	; 129
      0011A4 88                    3418 	.db #0x88	; 136
      0011A5 8A                    3419 	.db #0x8a	; 138
      0011A6 29                    3420 	.db #0x29	; 41
      0011A7 72                    3421 	.db #0x72	; 114	'r'
      0011A8 34                    3422 	.db #0x34	; 52	'4'
      0011A9 85                    3423 	.db #0x85	; 133
      0011AA 03                    3424 	.db #0x03	; 3
      0011AB 9C                    3425 	.db #0x9c	; 156
      0011AC DB                    3426 	.db #0xdb	; 219
      0011AD BB                    3427 	.db #0xbb	; 187
      0011AE BB                    3428 	.db #0xbb	; 187
      0011AF 88                    3429 	.db #0x88	; 136
      0011B0 30                    3430 	.db #0x30	; 48	'0'
      0011B1 34                    3431 	.db #0x34	; 52	'4'
      0011B2 33                    3432 	.db #0x33	; 51	'3'
      0011B3 31                    3433 	.db #0x31	; 49	'1'
      0011B4 B1                    3434 	.db #0xb1	; 177
      0011B5 90                    3435 	.db #0x90	; 144
      0011B6 9B                    3436 	.db #0x9b	; 155
      0011B7 59                    3437 	.db #0x59	; 89	'Y'
      0011B8 73                    3438 	.db #0x73	; 115	's'
      0011B9 73                    3439 	.db #0x73	; 115	's'
      0011BA 01                    3440 	.db #0x01	; 1
      0011BB B3                    3441 	.db #0xb3	; 179
      0011BC 09                    3442 	.db #0x09	; 9
      0011BD AF                    3443 	.db #0xaf	; 175
      0011BE DA                    3444 	.db #0xda	; 218
      0011BF 89                    3445 	.db #0x89	; 137
      0011C0 09                    3446 	.db #0x09	; 9
      0011C1 01                    3447 	.db #0x01	; 1
      0011C2 32                    3448 	.db #0x32	; 50	'2'
      0011C3 21                    3449 	.db #0x21	; 33
      0011C4 02                    3450 	.db #0x02	; 2
      0011C5 00                    3451 	.db #0x00	; 0
      0011C6 8A                    3452 	.db #0x8a	; 138
      0011C7 98                    3453 	.db #0x98	; 152
      0011C8 32                    3454 	.db #0x32	; 50	'2'
      0011C9 54                    3455 	.db #0x54	; 84	'T'
      0011CA 54                    3456 	.db #0x54	; 84	'T'
      0011CB 02                    3457 	.db #0x02	; 2
      0011CC A3                    3458 	.db #0xa3	; 163
      0011CD B9                    3459 	.db #0xb9	; 185
      0011CE AF                    3460 	.db #0xaf	; 175
      0011CF AD                    3461 	.db #0xad	; 173
      0011D0 AA                    3462 	.db #0xaa	; 170
      0011D1 99                    3463 	.db #0x99	; 153
      0011D2 11                    3464 	.db #0x11	; 17
      0011D3 41                    3465 	.db #0x41	; 65	'A'
      0011D4 23                    3466 	.db #0x23	; 35
      0011D5 33                    3467 	.db #0x33	; 51	'3'
      0011D6 38                    3468 	.db #0x38	; 56	'8'
      0011D7 99                    3469 	.db #0x99	; 153
      0011D8 99                    3470 	.db #0x99	; 153
      0011D9 B0                    3471 	.db #0xb0	; 176
      0011DA 34                    3472 	.db #0x34	; 52	'4'
      0011DB 71                    3473 	.db #0x71	; 113	'q'
      0011DC 26                    3474 	.db #0x26	; 38
      0011DD 30                    3475 	.db #0x30	; 48	'0'
      0011DE 09                    3476 	.db #0x09	; 9
      0011DF EB                    3477 	.db #0xeb	; 235
      0011E0 CA                    3478 	.db #0xca	; 202
      0011E1 9C                    3479 	.db #0x9c	; 156
      0011E2 9C                    3480 	.db #0x9c	; 156
      0011E3 88                    3481 	.db #0x88	; 136
      0011E4 11                    3482 	.db #0x11	; 17
      0011E5 32                    3483 	.db #0x32	; 50	'2'
      0011E6 23                    3484 	.db #0x23	; 35
      0011E7 24                    3485 	.db #0x24	; 36
      0011E8 28                    3486 	.db #0x28	; 40
      0011E9 B0                    3487 	.db #0xb0	; 176
      0011EA 98                    3488 	.db #0x98	; 152
      0011EB 1B                    3489 	.db #0x1b	; 27
      0011EC 20                    3490 	.db #0x20	; 32
      0011ED 36                    3491 	.db #0x36	; 54	'6'
      0011EE 35                    3492 	.db #0x35	; 53	'5'
      0011EF 21                    3493 	.db #0x21	; 33
      0011F0 B2                    3494 	.db #0xb2	; 178
      0011F1 CA                    3495 	.db #0xca	; 202
      0011F2 DE                    3496 	.db #0xde	; 222
      0011F3 BA                    3497 	.db #0xba	; 186
      0011F4 BB                    3498 	.db #0xbb	; 187
      0011F5 89                    3499 	.db #0x89	; 137
      0011F6 20                    3500 	.db #0x20	; 32
      0011F7 42                    3501 	.db #0x42	; 66	'B'
      0011F8 15                    3502 	.db #0x15	; 21
      0011F9 23                    3503 	.db #0x23	; 35
      0011FA 00                    3504 	.db #0x00	; 0
      0011FB B1                    3505 	.db #0xb1	; 177
      0011FC A8                    3506 	.db #0xa8	; 168
      0011FD 0A                    3507 	.db #0x0a	; 10
      0011FE 30                    3508 	.db #0x30	; 48	'0'
      0011FF 72                    3509 	.db #0x72	; 114	'r'
      001200 34                    3510 	.db #0x34	; 52	'4'
      001201 85                    3511 	.db #0x85	; 133
      001202 94                    3512 	.db #0x94	; 148
      001203 80                    3513 	.db #0x80	; 128
      001204 CA                    3514 	.db #0xca	; 202
      001205 AC                    3515 	.db #0xac	; 172
      001206 9E                    3516 	.db #0x9e	; 158
      001207 AA                    3517 	.db #0xaa	; 170
      001208 98                    3518 	.db #0x98	; 152
      001209 11                    3519 	.db #0x11	; 17
      00120A 41                    3520 	.db #0x41	; 65	'A'
      00120B 23                    3521 	.db #0x23	; 35
      00120C 14                    3522 	.db #0x14	; 20
      00120D 11                    3523 	.db #0x11	; 17
      00120E 8A                    3524 	.db #0x8a	; 138
      00120F D8                    3525 	.db #0xd8	; 216
      001210 80                    3526 	.db #0x80	; 128
      001211 29                    3527 	.db #0x29	; 41
      001212 41                    3528 	.db #0x41	; 65	'A'
      001213 34                    3529 	.db #0x34	; 52	'4'
      001214 52                    3530 	.db #0x52	; 82	'R'
      001215 10                    3531 	.db #0x10	; 16
      001216 A1                    3532 	.db #0xa1	; 161
      001217 B9                    3533 	.db #0xb9	; 185
      001218 BF                    3534 	.db #0xbf	; 191
      001219 EB                    3535 	.db #0xeb	; 235
      00121A AA                    3536 	.db #0xaa	; 170
      00121B 89                    3537 	.db #0x89	; 137
      00121C 29                    3538 	.db #0x29	; 41
      00121D 30                    3539 	.db #0x30	; 48	'0'
      00121E 44                    3540 	.db #0x44	; 68	'D'
      00121F 21                    3541 	.db #0x21	; 33
      001220 02                    3542 	.db #0x02	; 2
      001221 90                    3543 	.db #0x90	; 144
      001222 C0                    3544 	.db #0xc0	; 192
      001223 88                    3545 	.db #0x88	; 136
      001224 4B                    3546 	.db #0x4b	; 75	'K'
      001225 28                    3547 	.db #0x28	; 40
      001226 24                    3548 	.db #0x24	; 36
      001227 35                    3549 	.db #0x35	; 53	'5'
      001228 41                    3550 	.db #0x41	; 65	'A'
      001229 80                    3551 	.db #0x80	; 128
      00122A B1                    3552 	.db #0xb1	; 177
      00122B CA                    3553 	.db #0xca	; 202
      00122C 9F                    3554 	.db #0x9f	; 159
      00122D 9E                    3555 	.db #0x9e	; 158
      00122E 99                    3556 	.db #0x99	; 153
      00122F 89                    3557 	.db #0x89	; 137
      001230 28                    3558 	.db #0x28	; 40
      001231 21                    3559 	.db #0x21	; 33
      001232 14                    3560 	.db #0x14	; 20
      001233 23                    3561 	.db #0x23	; 35
      001234 10                    3562 	.db #0x10	; 16
      001235 B1                    3563 	.db #0xb1	; 177
      001236 A0                    3564 	.db #0xa0	; 160
      001237 0D                    3565 	.db #0x0d	; 13
      001238 0A                    3566 	.db #0x0a	; 10
      001239 12                    3567 	.db #0x12	; 18
      00123A 26                    3568 	.db #0x26	; 38
      00123B 25                    3569 	.db #0x25	; 37
      00123C 22                    3570 	.db #0x22	; 34
      00123D 0F                    3571 	.db #0x0f	; 15
      00123E 2B                    3572 	.db #0x2b	; 43
      00123F 3C                    3573 	.db #0x3c	; 60
      001240 81                    3574 	.db #0x81	; 129
      001241 9B                    3575 	.db #0x9b	; 155
      001242 BE                    3576 	.db #0xbe	; 190
      001243 CC                    3577 	.db #0xcc	; 204
      001244 AB                    3578 	.db #0xab	; 171
      001245 9C                    3579 	.db #0x9c	; 156
      001246 98                    3580 	.db #0x98	; 152
      001247 02                    3581 	.db #0x02	; 2
      001248 24                    3582 	.db #0x24	; 36
      001249 43                    3583 	.db #0x43	; 67	'C'
      00124A 22                    3584 	.db #0x22	; 34
      00124B 12                    3585 	.db #0x12	; 18
      00124C 88                    3586 	.db #0x88	; 136
      00124D CA                    3587 	.db #0xca	; 202
      00124E B0                    3588 	.db #0xb0	; 176
      00124F 89                    3589 	.db #0x89	; 137
      001250 28                    3590 	.db #0x28	; 40
      001251 26                    3591 	.db #0x26	; 38
      001252 45                    3592 	.db #0x45	; 69	'E'
      001253 51                    3593 	.db #0x51	; 81	'Q'
      001254 28                    3594 	.db #0x28	; 40
      001255 98                    3595 	.db #0x98	; 152
      001256 E1                    3596 	.db #0xe1	; 225
      001257 B9                    3597 	.db #0xb9	; 185
      001258 DB                    3598 	.db #0xdb	; 219
      001259 BA                    3599 	.db #0xba	; 186
      00125A 99                    3600 	.db #0x99	; 153
      00125B 2A                    3601 	.db #0x2a	; 42
      00125C 38                    3602 	.db #0x38	; 56	'8'
      00125D 15                    3603 	.db #0x15	; 21
      00125E 15                    3604 	.db #0x15	; 21
      00125F 31                    3605 	.db #0x31	; 49	'1'
      001260 10                    3606 	.db #0x10	; 16
      001261 98                    3607 	.db #0x98	; 152
      001262 88                    3608 	.db #0x88	; 136
      001263 0C                    3609 	.db #0x0c	; 12
      001264 8A                    3610 	.db #0x8a	; 138
      001265 A1                    3611 	.db #0xa1	; 161
      001266 05                    3612 	.db #0x05	; 5
      001267 44                    3613 	.db #0x44	; 68	'D'
      001268 60                    3614 	.db #0x60	; 96
      001269 10                    3615 	.db #0x10	; 16
      00126A 80                    3616 	.db #0x80	; 128
      00126B A0                    3617 	.db #0xa0	; 160
      00126C DB                    3618 	.db #0xdb	; 219
      00126D BC                    3619 	.db #0xbc	; 188
      00126E 9D                    3620 	.db #0x9d	; 157
      00126F 9B                    3621 	.db #0x9b	; 155
      001270 88                    3622 	.db #0x88	; 136
      001271 20                    3623 	.db #0x20	; 32
      001272 43                    3624 	.db #0x43	; 67	'C'
      001273 24                    3625 	.db #0x24	; 36
      001274 14                    3626 	.db #0x14	; 20
      001275 01                    3627 	.db #0x01	; 1
      001276 90                    3628 	.db #0x90	; 144
      001277 99                    3629 	.db #0x99	; 153
      001278 AA                    3630 	.db #0xaa	; 170
      001279 A9                    3631 	.db #0xa9	; 169
      00127A 18                    3632 	.db #0x18	; 24
      00127B 61                    3633 	.db #0x61	; 97	'a'
      00127C 53                    3634 	.db #0x53	; 83	'S'
      00127D 24                    3635 	.db #0x24	; 36
      00127E 13                    3636 	.db #0x13	; 19
      00127F 10                    3637 	.db #0x10	; 16
      001280 AB                    3638 	.db #0xab	; 171
      001281 F9                    3639 	.db #0xf9	; 249
      001282 DC                    3640 	.db #0xdc	; 220
      001283 9B                    3641 	.db #0x9b	; 155
      001284 9C                    3642 	.db #0x9c	; 156
      001285 88                    3643 	.db #0x88	; 136
      001286 20                    3644 	.db #0x20	; 32
      001287 51                    3645 	.db #0x51	; 81	'Q'
      001288 22                    3646 	.db #0x22	; 34
      001289 13                    3647 	.db #0x13	; 19
      00128A 82                    3648 	.db #0x82	; 130
      00128B 88                    3649 	.db #0x88	; 136
      00128C 9B                    3650 	.db #0x9b	; 155
      00128D BB                    3651 	.db #0xbb	; 187
      00128E 99                    3652 	.db #0x99	; 153
      00128F 39                    3653 	.db #0x39	; 57	'9'
      001290 70                    3654 	.db #0x70	; 112	'p'
      001291 53                    3655 	.db #0x53	; 83	'S'
      001292 33                    3656 	.db #0x33	; 51	'3'
      001293 14                    3657 	.db #0x14	; 20
      001294 22                    3658 	.db #0x22	; 34
      001295 09                    3659 	.db #0x09	; 9
      001296 DB                    3660 	.db #0xdb	; 219
      001297 FB                    3661 	.db #0xfb	; 251
      001298 CA                    3662 	.db #0xca	; 202
      001299 9C                    3663 	.db #0x9c	; 156
      00129A 9A                    3664 	.db #0x9a	; 154
      00129B 09                    3665 	.db #0x09	; 9
      00129C 30                    3666 	.db #0x30	; 48	'0'
      00129D 52                    3667 	.db #0x52	; 82	'R'
      00129E 33                    3668 	.db #0x33	; 51	'3'
      00129F 23                    3669 	.db #0x23	; 35
      0012A0 81                    3670 	.db #0x81	; 129
      0012A1 C0                    3671 	.db #0xc0	; 192
      0012A2 C8                    3672 	.db #0xc8	; 200
      0012A3 99                    3673 	.db #0x99	; 153
      0012A4 0A                    3674 	.db #0x0a	; 10
      0012A5 29                    3675 	.db #0x29	; 41
      0012A6 33                    3676 	.db #0x33	; 51	'3'
      0012A7 27                    3677 	.db #0x27	; 39
      0012A8 43                    3678 	.db #0x43	; 67	'C'
      0012A9 22                    3679 	.db #0x22	; 34
      0012AA 11                    3680 	.db #0x11	; 17
      0012AB 80                    3681 	.db #0x80	; 128
      0012AC BA                    3682 	.db #0xba	; 186
      0012AD DE                    3683 	.db #0xde	; 222
      0012AE EB                    3684 	.db #0xeb	; 235
      0012AF CA                    3685 	.db #0xca	; 202
      0012B0 A9                    3686 	.db #0xa9	; 169
      0012B1 09                    3687 	.db #0x09	; 9
      0012B2 10                    3688 	.db #0x10	; 16
      0012B3 43                    3689 	.db #0x43	; 67	'C'
      0012B4 43                    3690 	.db #0x43	; 67	'C'
      0012B5 22                    3691 	.db #0x22	; 34
      0012B6 02                    3692 	.db #0x02	; 2
      0012B7 A1                    3693 	.db #0xa1	; 161
      0012B8 B9                    3694 	.db #0xb9	; 185
      0012B9 8C                    3695 	.db #0x8c	; 140
      0012BA 8C                    3696 	.db #0x8c	; 140
      0012BB 80                    3697 	.db #0x80	; 128
      0012BC 32                    3698 	.db #0x32	; 50	'2'
      0012BD 44                    3699 	.db #0x44	; 68	'D'
      0012BE 33                    3700 	.db #0x33	; 51	'3'
      0012BF 15                    3701 	.db #0x15	; 21
      0012C0 22                    3702 	.db #0x22	; 34
      0012C1 1A                    3703 	.db #0x1a	; 26
      0012C2 AA                    3704 	.db #0xaa	; 170
      0012C3 FA                    3705 	.db #0xfa	; 250
      0012C4 CC                    3706 	.db #0xcc	; 204
      0012C5 AC                    3707 	.db #0xac	; 172
      0012C6 9C                    3708 	.db #0x9c	; 156
      0012C7 8A                    3709 	.db #0x8a	; 138
      0012C8 00                    3710 	.db #0x00	; 0
      0012C9 32                    3711 	.db #0x32	; 50	'2'
      0012CA 44                    3712 	.db #0x44	; 68	'D'
      0012CB 23                    3713 	.db #0x23	; 35
      0012CC 12                    3714 	.db #0x12	; 18
      0012CD 80                    3715 	.db #0x80	; 128
      0012CE A8                    3716 	.db #0xa8	; 168
      0012CF D9                    3717 	.db #0xd9	; 217
      0012D0 B8                    3718 	.db #0xb8	; 184
      0012D1 18                    3719 	.db #0x18	; 24
      0012D2 58                    3720 	.db #0x58	; 88	'X'
      0012D3 31                    3721 	.db #0x31	; 49	'1'
      0012D4 14                    3722 	.db #0x14	; 20
      0012D5 24                    3723 	.db #0x24	; 36
      0012D6 22                    3724 	.db #0x22	; 34
      0012D7 80                    3725 	.db #0x80	; 128
      0012D8 C2                    3726 	.db #0xc2	; 194
      0012D9 B0                    3727 	.db #0xb0	; 176
      0012DA BE                    3728 	.db #0xbe	; 190
      0012DB BF                    3729 	.db #0xbf	; 191
      0012DC DB                    3730 	.db #0xdb	; 219
      0012DD A9                    3731 	.db #0xa9	; 169
      0012DE 88                    3732 	.db #0x88	; 136
      0012DF 11                    3733 	.db #0x11	; 17
      0012E0 52                    3734 	.db #0x52	; 82	'R'
      0012E1 33                    3735 	.db #0x33	; 51	'3'
      0012E2 42                    3736 	.db #0x42	; 66	'B'
      0012E3 10                    3737 	.db #0x10	; 16
      0012E4 98                    3738 	.db #0x98	; 152
      0012E5 A8                    3739 	.db #0xa8	; 168
      0012E6 9B                    3740 	.db #0x9b	; 155
      0012E7 8B                    3741 	.db #0x8b	; 139
      0012E8 00                    3742 	.db #0x00	; 0
      0012E9 63                    3743 	.db #0x63	; 99	'c'
      0012EA 61                    3744 	.db #0x61	; 97	'a'
      0012EB 21                    3745 	.db #0x21	; 33
      0012EC 03                    3746 	.db #0x03	; 3
      0012ED 02                    3747 	.db #0x02	; 2
      0012EE 00                    3748 	.db #0x00	; 0
      0012EF A9                    3749 	.db #0xa9	; 169
      0012F0 F8                    3750 	.db #0xf8	; 248
      0012F1 AD                    3751 	.db #0xad	; 173
      0012F2 AE                    3752 	.db #0xae	; 174
      0012F3 CA                    3753 	.db #0xca	; 202
      0012F4 A8                    3754 	.db #0xa8	; 168
      0012F5 18                    3755 	.db #0x18	; 24
      0012F6 30                    3756 	.db #0x30	; 48	'0'
      0012F7 43                    3757 	.db #0x43	; 67	'C'
      0012F8 25                    3758 	.db #0x25	; 37
      0012F9 21                    3759 	.db #0x21	; 33
      0012FA 00                    3760 	.db #0x00	; 0
      0012FB A8                    3761 	.db #0xa8	; 168
      0012FC B8                    3762 	.db #0xb8	; 184
      0012FD AA                    3763 	.db #0xaa	; 170
      0012FE 9A                    3764 	.db #0x9a	; 154
      0012FF 02                    3765 	.db #0x02	; 2
      001300 45                    3766 	.db #0x45	; 69	'E'
      001301 51                    3767 	.db #0x51	; 81	'Q'
      001302 21                    3768 	.db #0x21	; 33
      001303 12                    3769 	.db #0x12	; 18
      001304 01                    3770 	.db #0x01	; 1
      001305 B1                    3771 	.db #0xb1	; 177
      001306 D2                    3772 	.db #0xd2	; 210
      001307 D8                    3773 	.db #0xd8	; 216
      001308 AD                    3774 	.db #0xad	; 173
      001309 9F                    3775 	.db #0x9f	; 159
      00130A AA                    3776 	.db #0xaa	; 170
      00130B A8                    3777 	.db #0xa8	; 168
      00130C 00                    3778 	.db #0x00	; 0
      00130D 31                    3779 	.db #0x31	; 49	'1'
      00130E 34                    3780 	.db #0x34	; 52	'4'
      00130F 15                    3781 	.db #0x15	; 21
      001310 13                    3782 	.db #0x13	; 19
      001311 00                    3783 	.db #0x00	; 0
      001312 A8                    3784 	.db #0xa8	; 168
      001313 B9                    3785 	.db #0xb9	; 185
      001314 AA                    3786 	.db #0xaa	; 170
      001315 8B                    3787 	.db #0x8b	; 139
      001316 11                    3788 	.db #0x11	; 17
      001317 26                    3789 	.db #0x26	; 38
      001318 53                    3790 	.db #0x53	; 83	'S'
      001319 32                    3791 	.db #0x32	; 50	'2'
      00131A 12                    3792 	.db #0x12	; 18
      00131B 83                    3793 	.db #0x83	; 131
      00131C 80                    3794 	.db #0x80	; 128
      00131D B8                    3795 	.db #0xb8	; 184
      00131E FB                    3796 	.db #0xfb	; 251
      00131F CF                    3797 	.db #0xcf	; 207
      001320 9C                    3798 	.db #0x9c	; 156
      001321 AB                    3799 	.db #0xab	; 171
      001322 99                    3800 	.db #0x99	; 153
      001323 00                    3801 	.db #0x00	; 0
      001324 52                    3802 	.db #0x52	; 82	'R'
      001325 42                    3803 	.db #0x42	; 66	'B'
      001326 13                    3804 	.db #0x13	; 19
      001327 04                    3805 	.db #0x04	; 4
      001328 00                    3806 	.db #0x00	; 0
      001329 0A                    3807 	.db #0x0a	; 10
      00132A BA                    3808 	.db #0xba	; 186
      00132B B8                    3809 	.db #0xb8	; 184
      00132C 88                    3810 	.db #0x88	; 136
      00132D 28                    3811 	.db #0x28	; 40
      00132E 24                    3812 	.db #0x24	; 36
      00132F 16                    3813 	.db #0x16	; 22
      001330 32                    3814 	.db #0x32	; 50	'2'
      001331 22                    3815 	.db #0x22	; 34
      001332 03                    3816 	.db #0x03	; 3
      001333 12                    3817 	.db #0x12	; 18
      001334 2A                    3818 	.db #0x2a	; 42
      001335 BF                    3819 	.db #0xbf	; 191
      001336 CF                    3820 	.db #0xcf	; 207
      001337 AC                    3821 	.db #0xac	; 172
      001338 BB                    3822 	.db #0xbb	; 187
      001339 A9                    3823 	.db #0xa9	; 169
      00133A 00                    3824 	.db #0x00	; 0
      00133B 43                    3825 	.db #0x43	; 67	'C'
      00133C B8                    3826 	.db #0xb8	; 184
      00133D E1                    3827 	.db #0xe1	; 225
      00133E 3D                    3828 	.db #0x3d	; 61
      00133F 25                    3829 	.db #0x25	; 37
      001340 23                    3830 	.db #0x23	; 35
      001341 01                    3831 	.db #0x01	; 1
      001342 90                    3832 	.db #0x90	; 144
      001343 A9                    3833 	.db #0xa9	; 169
      001344 AB                    3834 	.db #0xab	; 171
      001345 BB                    3835 	.db #0xbb	; 187
      001346 09                    3836 	.db #0x09	; 9
      001347 43                    3837 	.db #0x43	; 67	'C'
      001348 54                    3838 	.db #0x54	; 84	'T'
      001349 33                    3839 	.db #0x33	; 51	'3'
      00134A 25                    3840 	.db #0x25	; 37
      00134B 22                    3841 	.db #0x22	; 34
      00134C 11                    3842 	.db #0x11	; 17
      00134D 90                    3843 	.db #0x90	; 144
      00134E A8                    3844 	.db #0xa8	; 168
      00134F EF                    3845 	.db #0xef	; 239
      001350 CC                    3846 	.db #0xcc	; 204
      001351 BA                    3847 	.db #0xba	; 186
      001352 9A                    3848 	.db #0x9a	; 154
      001353 0A                    3849 	.db #0x0a	; 10
      001354 21                    3850 	.db #0x21	; 33
      001355 44                    3851 	.db #0x44	; 68	'D'
      001356 33                    3852 	.db #0x33	; 51	'3'
      001357 33                    3853 	.db #0x33	; 51	'3'
      001358 21                    3854 	.db #0x21	; 33
      001359 89                    3855 	.db #0x89	; 137
      00135A BA                    3856 	.db #0xba	; 186
      00135B DB                    3857 	.db #0xdb	; 219
      00135C A9                    3858 	.db #0xa9	; 169
      00135D 08                    3859 	.db #0x08	; 8
      00135E 31                    3860 	.db #0x31	; 49	'1'
      00135F 35                    3861 	.db #0x35	; 53	'5'
      001360 34                    3862 	.db #0x34	; 52	'4'
      001361 62                    3863 	.db #0x62	; 98	'b'
      001362 10                    3864 	.db #0x10	; 16
      001363 80                    3865 	.db #0x80	; 128
      001364 81                    3866 	.db #0x81	; 129
      001365 00                    3867 	.db #0x00	; 0
      001366 DB                    3868 	.db #0xdb	; 219
      001367 CF                    3869 	.db #0xcf	; 207
      001368 CB                    3870 	.db #0xcb	; 203
      001369 BA                    3871 	.db #0xba	; 186
      00136A 99                    3872 	.db #0x99	; 153
      00136B 28                    3873 	.db #0x28	; 40
      00136C 41                    3874 	.db #0x41	; 65	'A'
      00136D 53                    3875 	.db #0x53	; 83	'S'
      00136E 32                    3876 	.db #0x32	; 50	'2'
      00136F 12                    3877 	.db #0x12	; 18
      001370 82                    3878 	.db #0x82	; 130
      001371 88                    3879 	.db #0x88	; 136
      001372 9B                    3880 	.db #0x9b	; 155
      001373 DB                    3881 	.db #0xdb	; 219
      001374 A8                    3882 	.db #0xa8	; 168
      001375 28                    3883 	.db #0x28	; 40
      001376 42                    3884 	.db #0x42	; 66	'B'
      001377 34                    3885 	.db #0x34	; 52	'4'
      001378 43                    3886 	.db #0x43	; 67	'C'
      001379 22                    3887 	.db #0x22	; 34
      00137A 11                    3888 	.db #0x11	; 17
      00137B 00                    3889 	.db #0x00	; 0
      00137C 08                    3890 	.db #0x08	; 8
      00137D 09                    3891 	.db #0x09	; 9
      00137E FF                    3892 	.db #0xff	; 255
      00137F CD                    3893 	.db #0xcd	; 205
      001380 C9                    3894 	.db #0xc9	; 201
      001381 99                    3895 	.db #0x99	; 153
      001382 09                    3896 	.db #0x09	; 9
      001383 28                    3897 	.db #0x28	; 40
      001384 33                    3898 	.db #0x33	; 51	'3'
      001385 25                    3899 	.db #0x25	; 37
      001386 23                    3900 	.db #0x23	; 35
      001387 13                    3901 	.db #0x13	; 19
      001388 91                    3902 	.db #0x91	; 145
      001389 B8                    3903 	.db #0xb8	; 184
      00138A 8C                    3904 	.db #0x8c	; 140
      00138B 8D                    3905 	.db #0x8d	; 141
      00138C 89                    3906 	.db #0x89	; 137
      00138D 00                    3907 	.db #0x00	; 0
      00138E 32                    3908 	.db #0x32	; 50	'2'
      00138F 43                    3909 	.db #0x43	; 67	'C'
      001390 33                    3910 	.db #0x33	; 51	'3'
      001391 32                    3911 	.db #0x32	; 50	'2'
      001392 21                    3912 	.db #0x21	; 33
      001393 02                    3913 	.db #0x02	; 2
      001394 C4                    3914 	.db #0xc4	; 196
      001395 DB                    3915 	.db #0xdb	; 219
      001396 DF                    3916 	.db #0xdf	; 223
      001397 BB                    3917 	.db #0xbb	; 187
      001398 BA                    3918 	.db #0xba	; 186
      001399 9A                    3919 	.db #0x9a	; 154
      00139A 19                    3920 	.db #0x19	; 25
      00139B 43                    3921 	.db #0x43	; 67	'C'
      00139C 35                    3922 	.db #0x35	; 53	'5'
      00139D 42                    3923 	.db #0x42	; 66	'B'
      00139E 23                    3924 	.db #0x23	; 35
      00139F 01                    3925 	.db #0x01	; 1
      0013A0 90                    3926 	.db #0x90	; 144
      0013A1 BA                    3927 	.db #0xba	; 186
      0013A2 AC                    3928 	.db #0xac	; 172
      0013A3 9B                    3929 	.db #0x9b	; 155
      0013A4 88                    3930 	.db #0x88	; 136
      0013A5 42                    3931 	.db #0x42	; 66	'B'
      0013A6 53                    3932 	.db #0x53	; 83	'S'
      0013A7 14                    3933 	.db #0x14	; 20
      0013A8 13                    3934 	.db #0x13	; 19
      0013A9 21                    3935 	.db #0x21	; 33
      0013AA 21                    3936 	.db #0x21	; 33
      0013AB 20                    3937 	.db #0x20	; 32
      0013AC D9                    3938 	.db #0xd9	; 217
      0013AD FD                    3939 	.db #0xfd	; 253
      0013AE CB                    3940 	.db #0xcb	; 203
      0013AF BB                    3941 	.db #0xbb	; 187
      0013B0 BA                    3942 	.db #0xba	; 186
      0013B1 99                    3943 	.db #0x99	; 153
      0013B2 31                    3944 	.db #0x31	; 49	'1'
      0013B3 54                    3945 	.db #0x54	; 84	'T'
      0013B4 42                    3946 	.db #0x42	; 66	'B'
      0013B5 32                    3947 	.db #0x32	; 50	'2'
      0013B6 12                    3948 	.db #0x12	; 18
      0013B7 81                    3949 	.db #0x81	; 129
      0013B8 B0                    3950 	.db #0xb0	; 176
      0013B9 C9                    3951 	.db #0xc9	; 201
      0013BA AA                    3952 	.db #0xaa	; 170
      0013BB 9B                    3953 	.db #0x9b	; 155
      0013BC 0A                    3954 	.db #0x0a	; 10
      0013BD 42                    3955 	.db #0x42	; 66	'B'
      0013BE 44                    3956 	.db #0x44	; 68	'D'
      0013BF 43                    3957 	.db #0x43	; 67	'C'
      0013C0 21                    3958 	.db #0x21	; 33
      0013C1 13                    3959 	.db #0x13	; 19
      0013C2 33                    3960 	.db #0x33	; 51	'3'
      0013C3 90                    3961 	.db #0x90	; 144
      0013C4 FC                    3962 	.db #0xfc	; 252
      0013C5 EC                    3963 	.db #0xec	; 236
      0013C6 BA                    3964 	.db #0xba	; 186
      0013C7 9B                    3965 	.db #0x9b	; 155
      0013C8 8B                    3966 	.db #0x8b	; 139
      0013C9 09                    3967 	.db #0x09	; 9
      0013CA 23                    3968 	.db #0x23	; 35
      0013CB 26                    3969 	.db #0x26	; 38
      0013CC 24                    3970 	.db #0x24	; 36
      0013CD 12                    3971 	.db #0x12	; 18
      0013CE 12                    3972 	.db #0x12	; 18
      0013CF 10                    3973 	.db #0x10	; 16
      0013D0 8A                    3974 	.db #0x8a	; 138
      0013D1 DA                    3975 	.db #0xda	; 218
      0013D2 AA                    3976 	.db #0xaa	; 170
      0013D3 99                    3977 	.db #0x99	; 153
      0013D4 08                    3978 	.db #0x08	; 8
      0013D5 42                    3979 	.db #0x42	; 66	'B'
      0013D6 53                    3980 	.db #0x53	; 83	'S'
      0013D7 32                    3981 	.db #0x32	; 50	'2'
      0013D8 43                    3982 	.db #0x43	; 67	'C'
      0013D9 41                    3983 	.db #0x41	; 65	'A'
      0013DA 80                    3984 	.db #0x80	; 128
      0013DB D3                    3985 	.db #0xd3	; 211
      0013DC E8                    3986 	.db #0xe8	; 232
      0013DD AD                    3987 	.db #0xad	; 173
      0013DE AC                    3988 	.db #0xac	; 172
      0013DF 9A                    3989 	.db #0x9a	; 154
      0013E0 8A                    3990 	.db #0x8a	; 138
      0013E1 00                    3991 	.db #0x00	; 0
      0013E2 33                    3992 	.db #0x33	; 51	'3'
      0013E3 35                    3993 	.db #0x35	; 53	'5'
      0013E4 43                    3994 	.db #0x43	; 67	'C'
      0013E5 21                    3995 	.db #0x21	; 33
      0013E6 11                    3996 	.db #0x11	; 17
      0013E7 A1                    3997 	.db #0xa1	; 161
      0013E8 C0                    3998 	.db #0xc0	; 192
      0013E9 A9                    3999 	.db #0xa9	; 169
      0013EA AB                    4000 	.db #0xab	; 171
      0013EB 0C                    4001 	.db #0x0c	; 12
      0013EC 29                    4002 	.db #0x29	; 41
      0013ED 51                    4003 	.db #0x51	; 81	'Q'
      0013EE 33                    4004 	.db #0x33	; 51	'3'
      0013EF 15                    4005 	.db #0x15	; 21
      0013F0 23                    4006 	.db #0x23	; 35
      0013F1 52                    4007 	.db #0x52	; 82	'R'
      0013F2 10                    4008 	.db #0x10	; 16
      0013F3 B8                    4009 	.db #0xb8	; 184
      0013F4 FD                    4010 	.db #0xfd	; 253
      0013F5 CB                    4011 	.db #0xcb	; 203
      0013F6 AA                    4012 	.db #0xaa	; 170
      0013F7 9A                    4013 	.db #0x9a	; 154
      0013F8 89                    4014 	.db #0x89	; 137
      0013F9 28                    4015 	.db #0x28	; 40
      0013FA 33                    4016 	.db #0x33	; 51	'3'
      0013FB 26                    4017 	.db #0x26	; 38
      0013FC 33                    4018 	.db #0x33	; 51	'3'
      0013FD 22                    4019 	.db #0x22	; 34
      0013FE 12                    4020 	.db #0x12	; 18
      0013FF 00                    4021 	.db #0x00	; 0
      001400 AA                    4022 	.db #0xaa	; 170
      001401 BC                    4023 	.db #0xbc	; 188
      001402 DA                    4024 	.db #0xda	; 218
      001403 99                    4025 	.db #0x99	; 153
      001404 11                    4026 	.db #0x11	; 17
      001405 52                    4027 	.db #0x52	; 82	'R'
      001406 42                    4028 	.db #0x42	; 66	'B'
      001407 23                    4029 	.db #0x23	; 35
      001408 33                    4030 	.db #0x33	; 51	'3'
      001409 32                    4031 	.db #0x32	; 50	'2'
      00140A 84                    4032 	.db #0x84	; 132
      00140B FA                    4033 	.db #0xfa	; 250
      00140C BD                    4034 	.db #0xbd	; 189
      00140D BD                    4035 	.db #0xbd	; 189
      00140E AB                    4036 	.db #0xab	; 171
      00140F AA                    4037 	.db #0xaa	; 170
      001410 89                    4038 	.db #0x89	; 137
      001411 21                    4039 	.db #0x21	; 33
      001412 44                    4040 	.db #0x44	; 68	'D'
      001413 43                    4041 	.db #0x43	; 67	'C'
      001414 32                    4042 	.db #0x32	; 50	'2'
      001415 13                    4043 	.db #0x13	; 19
      001416 02                    4044 	.db #0x02	; 2
      001417 A1                    4045 	.db #0xa1	; 161
      001418 99                    4046 	.db #0x99	; 153
      001419 9E                    4047 	.db #0x9e	; 158
      00141A 9A                    4048 	.db #0x9a	; 154
      00141B 88                    4049 	.db #0x88	; 136
      00141C 12                    4050 	.db #0x12	; 18
      00141D 34                    4051 	.db #0x34	; 52	'4'
      00141E 63                    4052 	.db #0x63	; 99	'c'
      00141F 32                    4053 	.db #0x32	; 50	'2'
      001420 34                    4054 	.db #0x34	; 52	'4'
      001421 12                    4055 	.db #0x12	; 18
      001422 DA                    4056 	.db #0xda	; 218
      001423 DD                    4057 	.db #0xdd	; 221
      001424 DA                    4058 	.db #0xda	; 218
      001425 B9                    4059 	.db #0xb9	; 185
      001426 A9                    4060 	.db #0xa9	; 169
      001427 89                    4061 	.db #0x89	; 137
      001428 28                    4062 	.db #0x28	; 40
      001429 43                    4063 	.db #0x43	; 67	'C'
      00142A 43                    4064 	.db #0x43	; 67	'C'
      00142B 23                    4065 	.db #0x23	; 35
      00142C 23                    4066 	.db #0x23	; 35
      00142D 12                    4067 	.db #0x12	; 18
      00142E 80                    4068 	.db #0x80	; 128
      00142F AB                    4069 	.db #0xab	; 171
      001430 BA                    4070 	.db #0xba	; 186
      001431 CA                    4071 	.db #0xca	; 202
      001432 A9                    4072 	.db #0xa9	; 169
      001433 32                    4073 	.db #0x32	; 50	'2'
      001434 35                    4074 	.db #0x35	; 53	'5'
      001435 52                    4075 	.db #0x52	; 82	'R'
      001436 34                    4076 	.db #0x34	; 52	'4'
      001437 34                    4077 	.db #0x34	; 52	'4'
      001438 02                    4078 	.db #0x02	; 2
      001439 E1                    4079 	.db #0xe1	; 225
      00143A AC                    4080 	.db #0xac	; 172
      00143B B7                    4081 	.db #0xb7	; 183
      00143C 04                    4082 	.db #0x04	; 4
      00143D 39                    4083 	.db #0x39	; 57	'9'
      00143E DC                    4084 	.db #0xdc	; 220
      00143F AB                    4085 	.db #0xab	; 171
      001440 8B                    4086 	.db #0x8b	; 139
      001441 19                    4087 	.db #0x19	; 25
      001442 20                    4088 	.db #0x20	; 32
      001443 34                    4089 	.db #0x34	; 52	'4'
      001444 25                    4090 	.db #0x25	; 37
      001445 14                    4091 	.db #0x14	; 20
      001446 21                    4092 	.db #0x21	; 33
      001447 10                    4093 	.db #0x10	; 16
      001448 08                    4094 	.db #0x08	; 8
      001449 B9                    4095 	.db #0xb9	; 185
      00144A C9                    4096 	.db #0xc9	; 201
      00144B A8                    4097 	.db #0xa8	; 168
      00144C 10                    4098 	.db #0x10	; 16
      00144D 41                    4099 	.db #0x41	; 65	'A'
      00144E 53                    4100 	.db #0x53	; 83	'S'
      00144F 43                    4101 	.db #0x43	; 67	'C'
      001450 22                    4102 	.db #0x22	; 34
      001451 12                    4103 	.db #0x12	; 18
      001452 C1                    4104 	.db #0xc1	; 193
      001453 DD                    4105 	.db #0xdd	; 221
      001454 CC                    4106 	.db #0xcc	; 204
      001455 CA                    4107 	.db #0xca	; 202
      001456 AA                    4108 	.db #0xaa	; 170
      001457 89                    4109 	.db #0x89	; 137
      001458 10                    4110 	.db #0x10	; 16
      001459 22                    4111 	.db #0x22	; 34
      00145A 35                    4112 	.db #0x35	; 53	'5'
      00145B 33                    4113 	.db #0x33	; 51	'3'
      00145C 22                    4114 	.db #0x22	; 34
      00145D 22                    4115 	.db #0x22	; 34
      00145E 80                    4116 	.db #0x80	; 128
      00145F A8                    4117 	.db #0xa8	; 168
      001460 BA                    4118 	.db #0xba	; 186
      001461 9C                    4119 	.db #0x9c	; 156
      001462 88                    4120 	.db #0x88	; 136
      001463 02                    4121 	.db #0x02	; 2
      001464 53                    4122 	.db #0x53	; 83	'S'
      001465 44                    4123 	.db #0x44	; 68	'D'
      001466 43                    4124 	.db #0x43	; 67	'C'
      001467 32                    4125 	.db #0x32	; 50	'2'
      001468 81                    4126 	.db #0x81	; 129
      001469 FB                    4127 	.db #0xfb	; 251
      00146A CC                    4128 	.db #0xcc	; 204
      00146B BC                    4129 	.db #0xbc	; 188
      00146C CB                    4130 	.db #0xcb	; 203
      00146D AA                    4131 	.db #0xaa	; 170
      00146E 80                    4132 	.db #0x80	; 128
      00146F 22                    4133 	.db #0x22	; 34
      001470 53                    4134 	.db #0x53	; 83	'S'
      001471 43                    4135 	.db #0x43	; 67	'C'
      001472 22                    4136 	.db #0x22	; 34
      001473 11                    4137 	.db #0x11	; 17
      001474 00                    4138 	.db #0x00	; 0
      001475 00                    4139 	.db #0x00	; 0
      001476 98                    4140 	.db #0x98	; 152
      001477 AA                    4141 	.db #0xaa	; 170
      001478 8B                    4142 	.db #0x8b	; 139
      001479 18                    4143 	.db #0x18	; 24
      00147A 33                    4144 	.db #0x33	; 51	'3'
      00147B 73                    4145 	.db #0x73	; 115	's'
      00147C 54                    4146 	.db #0x54	; 84	'T'
      00147D 23                    4147 	.db #0x23	; 35
      00147E 08                    4148 	.db #0x08	; 8
      00147F A8                    4149 	.db #0xa8	; 168
      001480 FC                    4150 	.db #0xfc	; 252
      001481 CC                    4151 	.db #0xcc	; 204
      001482 BB                    4152 	.db #0xbb	; 187
      001483 AB                    4153 	.db #0xab	; 171
      001484 08                    4154 	.db #0x08	; 8
      001485 10                    4155 	.db #0x10	; 16
      001486 43                    4156 	.db #0x43	; 67	'C'
      001487 25                    4157 	.db #0x25	; 37
      001488 23                    4158 	.db #0x23	; 35
      001489 22                    4159 	.db #0x22	; 34
      00148A 11                    4160 	.db #0x11	; 17
      00148B 08                    4161 	.db #0x08	; 8
      00148C 99                    4162 	.db #0x99	; 153
      00148D B9                    4163 	.db #0xb9	; 185
      00148E 9B                    4164 	.db #0x9b	; 155
      00148F 28                    4165 	.db #0x28	; 40
      001490 43                    4166 	.db #0x43	; 67	'C'
      001491 44                    4167 	.db #0x44	; 68	'D'
      001492 54                    4168 	.db #0x54	; 84	'T'
      001493 22                    4169 	.db #0x22	; 34
      001494 02                    4170 	.db #0x02	; 2
      001495 B8                    4171 	.db #0xb8	; 184
      001496 DF                    4172 	.db #0xdf	; 223
      001497 CB                    4173 	.db #0xcb	; 203
      001498 BB                    4174 	.db #0xbb	; 187
      001499 BB                    4175 	.db #0xbb	; 187
      00149A 09                    4176 	.db #0x09	; 9
      00149B 21                    4177 	.db #0x21	; 33
      00149C 43                    4178 	.db #0x43	; 67	'C'
      00149D 35                    4179 	.db #0x35	; 53	'5'
      00149E 23                    4180 	.db #0x23	; 35
      00149F 22                    4181 	.db #0x22	; 34
      0014A0 01                    4182 	.db #0x01	; 1
      0014A1 80                    4183 	.db #0x80	; 128
      0014A2 89                    4184 	.db #0x89	; 137
      0014A3 A9                    4185 	.db #0xa9	; 169
      0014A4 99                    4186 	.db #0x99	; 153
      0014A5 20                    4187 	.db #0x20	; 32
      0014A6 62                    4188 	.db #0x62	; 98	'b'
      0014A7 53                    4189 	.db #0x53	; 83	'S'
      0014A8 43                    4190 	.db #0x43	; 67	'C'
      0014A9 23                    4191 	.db #0x23	; 35
      0014AA 12                    4192 	.db #0x12	; 18
      0014AB C0                    4193 	.db #0xc0	; 192
      0014AC CF                    4194 	.db #0xcf	; 207
      0014AD CC                    4195 	.db #0xcc	; 204
      0014AE AB                    4196 	.db #0xab	; 171
      0014AF AB                    4197 	.db #0xab	; 171
      0014B0 89                    4198 	.db #0x89	; 137
      0014B1 10                    4199 	.db #0x10	; 16
      0014B2 42                    4200 	.db #0x42	; 66	'B'
      0014B3 43                    4201 	.db #0x43	; 67	'C'
      0014B4 33                    4202 	.db #0x33	; 51	'3'
      0014B5 24                    4203 	.db #0x24	; 36
      0014B6 11                    4204 	.db #0x11	; 17
      0014B7 81                    4205 	.db #0x81	; 129
      0014B8 98                    4206 	.db #0x98	; 152
      0014B9 99                    4207 	.db #0x99	; 153
      0014BA 89                    4208 	.db #0x89	; 137
      0014BB 19                    4209 	.db #0x19	; 25
      0014BC 44                    4210 	.db #0x44	; 68	'D'
      0014BD 25                    4211 	.db #0x25	; 37
      0014BE 21                    4212 	.db #0x21	; 33
      0014BF 15                    4213 	.db #0x15	; 21
      0014C0 91                    4214 	.db #0x91	; 145
      0014C1 BC                    4215 	.db #0xbc	; 188
      0014C2 DD                    4216 	.db #0xdd	; 221
      0014C3 CB                    4217 	.db #0xcb	; 203
      0014C4 AB                    4218 	.db #0xab	; 171
      0014C5 AA                    4219 	.db #0xaa	; 170
      0014C6 89                    4220 	.db #0x89	; 137
      0014C7 21                    4221 	.db #0x21	; 33
      0014C8 33                    4222 	.db #0x33	; 51	'3'
      0014C9 35                    4223 	.db #0x35	; 53	'5'
      0014CA 25                    4224 	.db #0x25	; 37
      0014CB 12                    4225 	.db #0x12	; 18
      0014CC 12                    4226 	.db #0x12	; 18
      0014CD 81                    4227 	.db #0x81	; 129
      0014CE 88                    4228 	.db #0x88	; 136
      0014CF 99                    4229 	.db #0x99	; 153
      0014D0 89                    4230 	.db #0x89	; 137
      0014D1 42                    4231 	.db #0x42	; 66	'B'
      0014D2 54                    4232 	.db #0x54	; 84	'T'
      0014D3 43                    4233 	.db #0x43	; 67	'C'
      0014D4 11                    4234 	.db #0x11	; 17
      0014D5 90                    4235 	.db #0x90	; 144
      0014D6 B0                    4236 	.db #0xb0	; 176
      0014D7 CF                    4237 	.db #0xcf	; 207
      0014D8 CC                    4238 	.db #0xcc	; 204
      0014D9 AB                    4239 	.db #0xab	; 171
      0014DA 9B                    4240 	.db #0x9b	; 155
      0014DB 9A                    4241 	.db #0x9a	; 154
      0014DC 88                    4242 	.db #0x88	; 136
      0014DD 42                    4243 	.db #0x42	; 66	'B'
      0014DE 44                    4244 	.db #0x44	; 68	'D'
      0014DF 23                    4245 	.db #0x23	; 35
      0014E0 23                    4246 	.db #0x23	; 35
      0014E1 12                    4247 	.db #0x12	; 18
      0014E2 00                    4248 	.db #0x00	; 0
      0014E3 00                    4249 	.db #0x00	; 0
      0014E4 A8                    4250 	.db #0xa8	; 168
      0014E5 9A                    4251 	.db #0x9a	; 154
      0014E6 18                    4252 	.db #0x18	; 24
      0014E7 72                    4253 	.db #0x72	; 114	'r'
      0014E8 22                    4254 	.db #0x22	; 34
      0014E9 03                    4255 	.db #0x03	; 3
      0014EA 42                    4256 	.db #0x42	; 66	'B'
      0014EB 81                    4257 	.db #0x81	; 129
      0014EC F8                    4258 	.db #0xf8	; 248
      0014ED BE                    4259 	.db #0xbe	; 190
      0014EE DB                    4260 	.db #0xdb	; 219
      0014EF AB                    4261 	.db #0xab	; 171
      0014F0 AB                    4262 	.db #0xab	; 171
      0014F1 98                    4263 	.db #0x98	; 152
      0014F2 28                    4264 	.db #0x28	; 40
      0014F3 53                    4265 	.db #0x53	; 83	'S'
      0014F4 34                    4266 	.db #0x34	; 52	'4'
      0014F5 24                    4267 	.db #0x24	; 36
      0014F6 23                    4268 	.db #0x23	; 35
      0014F7 11                    4269 	.db #0x11	; 17
      0014F8 80                    4270 	.db #0x80	; 128
      0014F9 A8                    4271 	.db #0xa8	; 168
      0014FA AA                    4272 	.db #0xaa	; 170
      0014FB 9A                    4273 	.db #0x9a	; 154
      0014FC 08                    4274 	.db #0x08	; 8
      0014FD 21                    4275 	.db #0x21	; 33
      0014FE 26                    4276 	.db #0x26	; 38
      0014FF 21                    4277 	.db #0x21	; 33
      001500 42                    4278 	.db #0x42	; 66	'B'
      001501 93                    4279 	.db #0x93	; 147
      001502 EB                    4280 	.db #0xeb	; 235
      001503 CD                    4281 	.db #0xcd	; 205
      001504 DB                    4282 	.db #0xdb	; 219
      001505 AB                    4283 	.db #0xab	; 171
      001506 9A                    4284 	.db #0x9a	; 154
      001507 89                    4285 	.db #0x89	; 137
      001508 00                    4286 	.db #0x00	; 0
      001509 52                    4287 	.db #0x52	; 82	'R'
      00150A 43                    4288 	.db #0x43	; 67	'C'
      00150B 33                    4289 	.db #0x33	; 51	'3'
      00150C 34                    4290 	.db #0x34	; 52	'4'
      00150D 32                    4291 	.db #0x32	; 50	'2'
      00150E 12                    4292 	.db #0x12	; 18
      00150F 98                    4293 	.db #0x98	; 152
      001510 CA                    4294 	.db #0xca	; 202
      001511 AC                    4295 	.db #0xac	; 172
      001512 AA                    4296 	.db #0xaa	; 170
      001513 88                    4297 	.db #0x88	; 136
      001514 20                    4298 	.db #0x20	; 32
      001515 22                    4299 	.db #0x22	; 34
      001516 80                    4300 	.db #0x80	; 128
      001517 10                    4301 	.db #0x10	; 16
      001518 DB                    4302 	.db #0xdb	; 219
      001519 AD                    4303 	.db #0xad	; 173
      00151A EB                    4304 	.db #0xeb	; 235
      00151B CB                    4305 	.db #0xcb	; 203
      00151C 9A                    4306 	.db #0x9a	; 154
      00151D 01                    4307 	.db #0x01	; 1
      00151E 00                    4308 	.db #0x00	; 0
      00151F 12                    4309 	.db #0x12	; 18
      001520 52                    4310 	.db #0x52	; 82	'R'
      001521 34                    4311 	.db #0x34	; 52	'4'
      001522 34                    4312 	.db #0x34	; 52	'4'
      001523 31                    4313 	.db #0x31	; 49	'1'
      001524 23                    4314 	.db #0x23	; 35
      001525 82                    4315 	.db #0x82	; 130
      001526 AA                    4316 	.db #0xaa	; 170
      001527 BA                    4317 	.db #0xba	; 186
      001528 BF                    4318 	.db #0xbf	; 191
      001529 99                    4319 	.db #0x99	; 153
      00152A 98                    4320 	.db #0x98	; 152
      00152B 89                    4321 	.db #0x89	; 137
      00152C 09                    4322 	.db #0x09	; 9
      00152D B1                    4323 	.db #0xb1	; 177
      00152E E9                    4324 	.db #0xe9	; 233
      00152F CB                    4325 	.db #0xcb	; 203
      001530 CA                    4326 	.db #0xca	; 202
      001531 98                    4327 	.db #0x98	; 152
      001532 89                    4328 	.db #0x89	; 137
      001533 11                    4329 	.db #0x11	; 17
      001534 64                    4330 	.db #0x64	; 100	'd'
      001535 44                    4331 	.db #0x44	; 68	'D'
      001536 22                    4332 	.db #0x22	; 34
      001537 13                    4333 	.db #0x13	; 19
      001538 12                    4334 	.db #0x12	; 18
      001539 91                    4335 	.db #0x91	; 145
      00153A DC                    4336 	.db #0xdc	; 220
      00153B 03                    4337 	.db #0x03	; 3
      00153C 20                    4338 	.db #0x20	; 32
      00153D CA                    4339 	.db #0xca	; 202
      00153E CA                    4340 	.db #0xca	; 202
      00153F AD                    4341 	.db #0xad	; 173
      001540 AA                    4342 	.db #0xaa	; 170
      001541 BB                    4343 	.db #0xbb	; 187
      001542 0A                    4344 	.db #0x0a	; 10
      001543 10                    4345 	.db #0x10	; 16
      001544 32                    4346 	.db #0x32	; 50	'2'
      001545 46                    4347 	.db #0x46	; 70	'F'
      001546 33                    4348 	.db #0x33	; 51	'3'
      001547 33                    4349 	.db #0x33	; 51	'3'
      001548 14                    4350 	.db #0x14	; 20
      001549 AA                    4351 	.db #0xaa	; 170
      00154A BC                    4352 	.db #0xbc	; 188
      00154B CB                    4353 	.db #0xcb	; 203
      00154C AF                    4354 	.db #0xaf	; 175
      00154D 5A                    4355 	.db #0x5a	; 90	'Z'
      00154E 82                    4356 	.db #0x82	; 130
      00154F 00                    4357 	.db #0x00	; 0
      001550 01                    4358 	.db #0x01	; 1
      001551 81                    4359 	.db #0x81	; 129
      001552 00                    4360 	.db #0x00	; 0
      001553 98                    4361 	.db #0x98	; 152
      001554 A1                    4362 	.db #0xa1	; 161
      001555 88                    4363 	.db #0x88	; 136
      001556 B8                    4364 	.db #0xb8	; 184
      001557 81                    4365 	.db #0x81	; 129
      001558 00                    4366 	.db #0x00	; 0
      001559 A0                    4367 	.db #0xa0	; 160
      00155A 92                    4368 	.db #0x92	; 146
      00155B 80                    4369 	.db #0x80	; 128
      00155C 02                    4370 	.db #0x02	; 2
      00155D 62                    4371 	.db #0x62	; 98	'b'
      00155E 82                    4372 	.db #0x82	; 130
      00155F 01                    4373 	.db #0x01	; 1
      001560 BD                    4374 	.db #0xbd	; 189
      001561 A5                    4375 	.db #0xa5	; 165
      001562 8A                    4376 	.db #0x8a	; 138
      001563 98                    4377 	.db #0x98	; 152
      001564 80                    4378 	.db #0x80	; 128
      001565 A1                    4379 	.db #0xa1	; 161
      001566 08                    4380 	.db #0x08	; 8
      001567 0B                    4381 	.db #0x0b	; 11
      001568 FF                    4382 	.db #0xff	; 255
      001569 80                    4383 	.db #0x80	; 128
      00156A 88                    4384 	.db #0x88	; 136
      00156B 80                    4385 	.db #0x80	; 128
      00156C 98                    4386 	.db #0x98	; 152
      00156D B0                    4387 	.db #0xb0	; 176
      00156E 92                    4388 	.db #0x92	; 146
      00156F 62                    4389 	.db #0x62	; 98	'b'
      001570 80                    4390 	.db #0x80	; 128
      001571 34                    4391 	.db #0x34	; 52	'4'
      001572 94                    4392 	.db #0x94	; 148
      001573 12                    4393 	.db #0x12	; 18
      001574 42                    4394 	.db #0x42	; 66	'B'
      001575 24                    4395 	.db #0x24	; 36
      001576 32                    4396 	.db #0x32	; 50	'2'
      001577 22                    4397 	.db #0x22	; 34
      001578 8C                    4398 	.db #0x8c	; 140
      001579 C9                    4399 	.db #0xc9	; 201
      00157A AE                    4400 	.db #0xae	; 174
      00157B BC                    4401 	.db #0xbc	; 188
      00157C DB                    4402 	.db #0xdb	; 219
      00157D 9B                    4403 	.db #0x9b	; 155
      00157E 20                    4404 	.db #0x20	; 32
      00157F 59                    4405 	.db #0x59	; 89	'Y'
      001580 92                    4406 	.db #0x92	; 146
      001581 31                    4407 	.db #0x31	; 49	'1'
      001582 01                    4408 	.db #0x01	; 1
      001583 23                    4409 	.db #0x23	; 35
      001584 B3                    4410 	.db #0xb3	; 179
      001585 9A                    4411 	.db #0x9a	; 154
      001586 1C                    4412 	.db #0x1c	; 28
      001587 86                    4413 	.db #0x86	; 134
      001588 32                    4414 	.db #0x32	; 50	'2'
      001589 3B                    4415 	.db #0x3b	; 59
      00158A 17                    4416 	.db #0x17	; 23
      00158B 43                    4417 	.db #0x43	; 67	'C'
      00158C 11                    4418 	.db #0x11	; 17
      00158D B0                    4419 	.db #0xb0	; 176
      00158E D1                    4420 	.db #0xd1	; 209
      00158F DB                    4421 	.db #0xdb	; 219
      001590 CA                    4422 	.db #0xca	; 202
      001591 9D                    4423 	.db #0x9d	; 157
      001592 8A                    4424 	.db #0x8a	; 138
      001593 80                    4425 	.db #0x80	; 128
      001594 11                    4426 	.db #0x11	; 17
      001595 41                    4427 	.db #0x41	; 65	'A'
      001596 41                    4428 	.db #0x41	; 65	'A'
      001597 31                    4429 	.db #0x31	; 49	'1'
      001598 03                    4430 	.db #0x03	; 3
      001599 92                    4431 	.db #0x92	; 146
      00159A 98                    4432 	.db #0x98	; 152
      00159B AD                    4433 	.db #0xad	; 173
      00159C BC                    4434 	.db #0xbc	; 188
      00159D 99                    4435 	.db #0x99	; 153
      00159E 00                    4436 	.db #0x00	; 0
      00159F 41                    4437 	.db #0x41	; 65	'A'
      0015A0 60                    4438 	.db #0x60	; 96
      0015A1 32                    4439 	.db #0x32	; 50	'2'
      0015A2 25                    4440 	.db #0x25	; 37
      0015A3 22                    4441 	.db #0x22	; 34
      0015A4 A1                    4442 	.db #0xa1	; 161
      0015A5 C9                    4443 	.db #0xc9	; 201
      0015A6 AD                    4444 	.db #0xad	; 173
      0015A7 BC                    4445 	.db #0xbc	; 188
      0015A8 BA                    4446 	.db #0xba	; 186
      0015A9 99                    4447 	.db #0x99	; 153
      0015AA 92                    4448 	.db #0x92	; 146
      0015AB 33                    4449 	.db #0x33	; 51	'3'
      0015AC 41                    4450 	.db #0x41	; 65	'A'
      0015AD 42                    4451 	.db #0x42	; 66	'B'
      0015AE 23                    4452 	.db #0x23	; 35
      0015AF 92                    4453 	.db #0x92	; 146
      0015B0 B9                    4454 	.db #0xb9	; 185
      0015B1 9E                    4455 	.db #0x9e	; 158
      0015B2 BB                    4456 	.db #0xbb	; 187
      0015B3 DA                    4457 	.db #0xda	; 218
      0015B4 90                    4458 	.db #0x90	; 144
      0015B5 12                    4459 	.db #0x12	; 18
      0015B6 52                    4460 	.db #0x52	; 82	'R'
      0015B7 43                    4461 	.db #0x43	; 67	'C'
      0015B8 23                    4462 	.db #0x23	; 35
      0015B9 16                    4463 	.db #0x16	; 22
      0015BA 22                    4464 	.db #0x22	; 34
      0015BB 9A                    4465 	.db #0x9a	; 154
      0015BC AA                    4466 	.db #0xaa	; 170
      0015BD AE                    4467 	.db #0xae	; 174
      0015BE B9                    4468 	.db #0xb9	; 185
      0015BF AB                    4469 	.db #0xab	; 171
      0015C0 0A                    4470 	.db #0x0a	; 10
      0015C1 90                    4471 	.db #0x90	; 144
      0015C2 06                    4472 	.db #0x06	; 6
      0015C3 19                    4473 	.db #0x19	; 25
      0015C4 88                    4474 	.db #0x88	; 136
      0015C5 04                    4475 	.db #0x04	; 4
      0015C6 00                    4476 	.db #0x00	; 0
      0015C7 BA                    4477 	.db #0xba	; 186
      0015C8 98                    4478 	.db #0x98	; 152
      0015C9 A0                    4479 	.db #0xa0	; 160
      0015CA 30                    4480 	.db #0x30	; 48	'0'
      0015CB E3                    4481 	.db #0xe3	; 227
      0015CC 25                    4482 	.db #0x25	; 37
      0015CD 62                    4483 	.db #0x62	; 98	'b'
      0015CE 23                    4484 	.db #0x23	; 35
      0015CF 81                    4485 	.db #0x81	; 129
      0015D0 80                    4486 	.db #0x80	; 128
      0015D1 9A                    4487 	.db #0x9a	; 154
      0015D2 AC                    4488 	.db #0xac	; 172
      0015D3 BA                    4489 	.db #0xba	; 186
      0015D4 AC                    4490 	.db #0xac	; 172
      0015D5 9A                    4491 	.db #0x9a	; 154
      0015D6 A9                    4492 	.db #0xa9	; 169
      0015D7 00                    4493 	.db #0x00	; 0
      0015D8 19                    4494 	.db #0x19	; 25
      0015D9 B9                    4495 	.db #0xb9	; 185
      0015DA 30                    4496 	.db #0x30	; 48	'0'
      0015DB 04                    4497 	.db #0x04	; 4
      0015DC 31                    4498 	.db #0x31	; 49	'1'
      0015DD 73                    4499 	.db #0x73	; 115	's'
      0015DE 82                    4500 	.db #0x82	; 130
      0015DF 81                    4501 	.db #0x81	; 129
      0015E0 01                    4502 	.db #0x01	; 1
      0015E1 A2                    4503 	.db #0xa2	; 162
      0015E2 11                    4504 	.db #0x11	; 17
      0015E3 B2                    4505 	.db #0xb2	; 178
      0015E4 F0                    4506 	.db #0xf0	; 240
      0015E5 08                    4507 	.db #0x08	; 8
      0015E6 08                    4508 	.db #0x08	; 8
      0015E7 08                    4509 	.db #0x08	; 8
      0015E8 08                    4510 	.db #0x08	; 8
      0015E9 09                    4511 	.db #0x09	; 9
      0015EA 00                    4512 	.db #0x00	; 0
      0015EB 00                    4513 	.db #0x00	; 0
      0015EC 00                    4514 	.db #0x00	; 0
      0015ED 00                    4515 	.db #0x00	; 0
      0015EE 00                    4516 	.db #0x00	; 0
      0015EF 00                    4517 	.db #0x00	; 0
                                   4518 	.area XINIT   (CODE)
                                   4519 	.area CABS    (ABS,CODE)
