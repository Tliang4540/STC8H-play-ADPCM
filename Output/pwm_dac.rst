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
      000162                        522 _ADPCM_Decode:
                           000007   523 	ar7 = 0x07
                           000006   524 	ar6 = 0x06
                           000005   525 	ar5 = 0x05
                           000004   526 	ar4 = 0x04
                           000003   527 	ar3 = 0x03
                           000002   528 	ar2 = 0x02
                           000001   529 	ar1 = 0x01
                           000000   530 	ar0 = 0x00
      000162 85 82 18         [24]  531 	mov	_ADPCM_Decode_xcode_65536_5,dpl
                                    532 ;	src/pwm_dac.c:286: step = StepSizeTable[index];
      000165 C2 D5            [12]  533 	clr	F0
      000167 75 F0 02         [24]  534 	mov	b,#0x02
      00016A E5 13            [12]  535 	mov	a,_index
      00016C 30 E7 04         [24]  536 	jnb	acc.7,00154$
      00016F B2 D5            [12]  537 	cpl	F0
      000171 F4               [12]  538 	cpl	a
      000172 04               [12]  539 	inc	a
      000173                        540 00154$:
      000173 A4               [48]  541 	mul	ab
      000174 30 D5 0A         [24]  542 	jnb	F0,00155$
      000177 F4               [12]  543 	cpl	a
      000178 24 01            [12]  544 	add	a,#0x01
      00017A C5 F0            [12]  545 	xch	a,b
      00017C F4               [12]  546 	cpl	a
      00017D 34 00            [12]  547 	addc	a,#0x00
      00017F C5 F0            [12]  548 	xch	a,b
      000181                        549 00155$:
      000181 24 0F            [12]  550 	add	a,#_StepSizeTable
      000183 F5 82            [12]  551 	mov	dpl,a
      000185 74 08            [12]  552 	mov	a,#(_StepSizeTable >> 8)
      000187 35 F0            [12]  553 	addc	a,b
      000189 F5 83            [12]  554 	mov	dph,a
      00018B E4               [12]  555 	clr	a
      00018C 93               [24]  556 	movc	a,@a+dptr
      00018D F5 19            [12]  557 	mov	_ADPCM_Decode_step_65536_6,a
      00018F A3               [24]  558 	inc	dptr
      000190 E4               [12]  559 	clr	a
      000191 93               [24]  560 	movc	a,@a+dptr
                                    561 ;	src/pwm_dac.c:289: diffq = step>> 3;
      000192 F5 1A            [12]  562 	mov	(_ADPCM_Decode_step_65536_6 + 1),a
      000194 AB 19            [24]  563 	mov	r3,_ADPCM_Decode_step_65536_6
      000196 C4               [12]  564 	swap	a
      000197 23               [12]  565 	rl	a
      000198 CB               [12]  566 	xch	a,r3
      000199 C4               [12]  567 	swap	a
      00019A 23               [12]  568 	rl	a
      00019B 54 1F            [12]  569 	anl	a,#0x1f
      00019D 6B               [12]  570 	xrl	a,r3
      00019E CB               [12]  571 	xch	a,r3
      00019F 54 1F            [12]  572 	anl	a,#0x1f
      0001A1 CB               [12]  573 	xch	a,r3
      0001A2 6B               [12]  574 	xrl	a,r3
      0001A3 CB               [12]  575 	xch	a,r3
      0001A4 FC               [12]  576 	mov	r4,a
      0001A5 8B 01            [24]  577 	mov	ar1,r3
      0001A7 8C 02            [24]  578 	mov	ar2,r4
                                    579 ;	src/pwm_dac.c:290: if (xcode&4)
      0001A9 E4               [12]  580 	clr	a
      0001AA FB               [12]  581 	mov	r3,a
      0001AB FC               [12]  582 	mov	r4,a
      0001AC E5 18            [12]  583 	mov	a,_ADPCM_Decode_xcode_65536_5
      0001AE 30 E2 13         [24]  584 	jnb	acc.2,00102$
                                    585 ;	src/pwm_dac.c:292: diffq += step;
      0001B1 A8 19            [24]  586 	mov	r0,_ADPCM_Decode_step_65536_6
      0001B3 AD 1A            [24]  587 	mov	r5,(_ADPCM_Decode_step_65536_6 + 1)
      0001B5 E4               [12]  588 	clr	a
      0001B6 FE               [12]  589 	mov	r6,a
      0001B7 FF               [12]  590 	mov	r7,a
      0001B8 E8               [12]  591 	mov	a,r0
      0001B9 29               [12]  592 	add	a,r1
      0001BA F9               [12]  593 	mov	r1,a
      0001BB ED               [12]  594 	mov	a,r5
      0001BC 3A               [12]  595 	addc	a,r2
      0001BD FA               [12]  596 	mov	r2,a
      0001BE EE               [12]  597 	mov	a,r6
      0001BF 3B               [12]  598 	addc	a,r3
      0001C0 FB               [12]  599 	mov	r3,a
      0001C1 EF               [12]  600 	mov	a,r7
      0001C2 3C               [12]  601 	addc	a,r4
      0001C3 FC               [12]  602 	mov	r4,a
      0001C4                        603 00102$:
                                    604 ;	src/pwm_dac.c:295: if (xcode&2)
      0001C4 E5 18            [12]  605 	mov	a,_ADPCM_Decode_xcode_65536_5
      0001C6 30 E1 1D         [24]  606 	jnb	acc.1,00104$
                                    607 ;	src/pwm_dac.c:297: diffq += step>>1;
      0001C9 AE 19            [24]  608 	mov	r6,_ADPCM_Decode_step_65536_6
      0001CB E5 1A            [12]  609 	mov	a,(_ADPCM_Decode_step_65536_6 + 1)
      0001CD C3               [12]  610 	clr	c
      0001CE 13               [12]  611 	rrc	a
      0001CF CE               [12]  612 	xch	a,r6
      0001D0 13               [12]  613 	rrc	a
      0001D1 CE               [12]  614 	xch	a,r6
      0001D2 FF               [12]  615 	mov	r7,a
      0001D3 8E 00            [24]  616 	mov	ar0,r6
      0001D5 8F 05            [24]  617 	mov	ar5,r7
      0001D7 E4               [12]  618 	clr	a
      0001D8 FE               [12]  619 	mov	r6,a
      0001D9 FF               [12]  620 	mov	r7,a
      0001DA E8               [12]  621 	mov	a,r0
      0001DB 29               [12]  622 	add	a,r1
      0001DC F9               [12]  623 	mov	r1,a
      0001DD ED               [12]  624 	mov	a,r5
      0001DE 3A               [12]  625 	addc	a,r2
      0001DF FA               [12]  626 	mov	r2,a
      0001E0 EE               [12]  627 	mov	a,r6
      0001E1 3B               [12]  628 	addc	a,r3
      0001E2 FB               [12]  629 	mov	r3,a
      0001E3 EF               [12]  630 	mov	a,r7
      0001E4 3C               [12]  631 	addc	a,r4
      0001E5 FC               [12]  632 	mov	r4,a
      0001E6                        633 00104$:
                                    634 ;	src/pwm_dac.c:300: if (xcode&1)
      0001E6 E5 18            [12]  635 	mov	a,_ADPCM_Decode_xcode_65536_5
      0001E8 30 E0 22         [24]  636 	jnb	acc.0,00106$
                                    637 ;	src/pwm_dac.c:302: diffq += step>>2;
      0001EB AE 19            [24]  638 	mov	r6,_ADPCM_Decode_step_65536_6
      0001ED E5 1A            [12]  639 	mov	a,(_ADPCM_Decode_step_65536_6 + 1)
      0001EF C3               [12]  640 	clr	c
      0001F0 13               [12]  641 	rrc	a
      0001F1 CE               [12]  642 	xch	a,r6
      0001F2 13               [12]  643 	rrc	a
      0001F3 CE               [12]  644 	xch	a,r6
      0001F4 C3               [12]  645 	clr	c
      0001F5 13               [12]  646 	rrc	a
      0001F6 CE               [12]  647 	xch	a,r6
      0001F7 13               [12]  648 	rrc	a
      0001F8 CE               [12]  649 	xch	a,r6
      0001F9 FF               [12]  650 	mov	r7,a
      0001FA 8E 00            [24]  651 	mov	ar0,r6
      0001FC 8F 05            [24]  652 	mov	ar5,r7
      0001FE E4               [12]  653 	clr	a
      0001FF FE               [12]  654 	mov	r6,a
      000200 FF               [12]  655 	mov	r7,a
      000201 E8               [12]  656 	mov	a,r0
      000202 29               [12]  657 	add	a,r1
      000203 F9               [12]  658 	mov	r1,a
      000204 ED               [12]  659 	mov	a,r5
      000205 3A               [12]  660 	addc	a,r2
      000206 FA               [12]  661 	mov	r2,a
      000207 EE               [12]  662 	mov	a,r6
      000208 3B               [12]  663 	addc	a,r3
      000209 FB               [12]  664 	mov	r3,a
      00020A EF               [12]  665 	mov	a,r7
      00020B 3C               [12]  666 	addc	a,r4
      00020C FC               [12]  667 	mov	r4,a
      00020D                        668 00106$:
                                    669 ;	src/pwm_dac.c:306: if (xcode&8)
      00020D E5 18            [12]  670 	mov	a,_ADPCM_Decode_xcode_65536_5
      00020F 30 E3 17         [24]  671 	jnb	acc.3,00108$
                                    672 ;	src/pwm_dac.c:308: predsample -= diffq;
      000212 E5 14            [12]  673 	mov	a,_predsample
      000214 C3               [12]  674 	clr	c
      000215 99               [12]  675 	subb	a,r1
      000216 F5 14            [12]  676 	mov	_predsample,a
      000218 E5 15            [12]  677 	mov	a,(_predsample + 1)
      00021A 9A               [12]  678 	subb	a,r2
      00021B F5 15            [12]  679 	mov	(_predsample + 1),a
      00021D E5 16            [12]  680 	mov	a,(_predsample + 2)
      00021F 9B               [12]  681 	subb	a,r3
      000220 F5 16            [12]  682 	mov	(_predsample + 2),a
      000222 E5 17            [12]  683 	mov	a,(_predsample + 3)
      000224 9C               [12]  684 	subb	a,r4
      000225 F5 17            [12]  685 	mov	(_predsample + 3),a
      000227 80 14            [24]  686 	sjmp	00109$
      000229                        687 00108$:
                                    688 ;	src/pwm_dac.c:312: predsample += diffq;
      000229 E9               [12]  689 	mov	a,r1
      00022A 25 14            [12]  690 	add	a,_predsample
      00022C F5 14            [12]  691 	mov	_predsample,a
      00022E EA               [12]  692 	mov	a,r2
      00022F 35 15            [12]  693 	addc	a,(_predsample + 1)
      000231 F5 15            [12]  694 	mov	(_predsample + 1),a
      000233 EB               [12]  695 	mov	a,r3
      000234 35 16            [12]  696 	addc	a,(_predsample + 2)
      000236 F5 16            [12]  697 	mov	(_predsample + 2),a
      000238 EC               [12]  698 	mov	a,r4
      000239 35 17            [12]  699 	addc	a,(_predsample + 3)
      00023B F5 17            [12]  700 	mov	(_predsample + 3),a
      00023D                        701 00109$:
                                    702 ;	src/pwm_dac.c:316: if (predsample > 32767)
      00023D C3               [12]  703 	clr	c
      00023E 74 FF            [12]  704 	mov	a,#0xff
      000240 95 14            [12]  705 	subb	a,_predsample
      000242 74 7F            [12]  706 	mov	a,#0x7f
      000244 95 15            [12]  707 	subb	a,(_predsample + 1)
      000246 E4               [12]  708 	clr	a
      000247 95 16            [12]  709 	subb	a,(_predsample + 2)
      000249 74 80            [12]  710 	mov	a,#(0x00 ^ 0x80)
      00024B 85 17 F0         [24]  711 	mov	b,(_predsample + 3)
      00024E 63 F0 80         [24]  712 	xrl	b,#0x80
      000251 95 F0            [12]  713 	subb	a,b
      000253 50 0D            [24]  714 	jnc	00113$
                                    715 ;	src/pwm_dac.c:318: predsample = 32767;
      000255 75 14 FF         [24]  716 	mov	_predsample,#0xff
      000258 75 15 7F         [24]  717 	mov	(_predsample + 1),#0x7f
      00025B E4               [12]  718 	clr	a
      00025C F5 16            [12]  719 	mov	(_predsample + 2),a
      00025E F5 17            [12]  720 	mov	(_predsample + 3),a
      000260 80 1D            [24]  721 	sjmp	00114$
      000262                        722 00113$:
                                    723 ;	src/pwm_dac.c:320: else if (predsample < -32768)
      000262 C3               [12]  724 	clr	c
      000263 E5 15            [12]  725 	mov	a,(_predsample + 1)
      000265 94 80            [12]  726 	subb	a,#0x80
      000267 E5 16            [12]  727 	mov	a,(_predsample + 2)
      000269 94 FF            [12]  728 	subb	a,#0xff
      00026B E5 17            [12]  729 	mov	a,(_predsample + 3)
      00026D 64 80            [12]  730 	xrl	a,#0x80
      00026F 94 7F            [12]  731 	subb	a,#0x7f
      000271 50 0C            [24]  732 	jnc	00114$
                                    733 ;	src/pwm_dac.c:322: predsample = -32768;
      000273 75 14 00         [24]  734 	mov	_predsample,#0x00
      000276 75 15 80         [24]  735 	mov	(_predsample + 1),#0x80
      000279 75 16 FF         [24]  736 	mov	(_predsample + 2),#0xff
      00027C 75 17 FF         [24]  737 	mov	(_predsample + 3),#0xff
      00027F                        738 00114$:
                                    739 ;	src/pwm_dac.c:326: index += IndexTable [xcode];
      00027F E5 18            [12]  740 	mov	a,_ADPCM_Decode_xcode_65536_5
      000281 90 08 C1         [24]  741 	mov	dptr,#_IndexTable
      000284 93               [24]  742 	movc	a,@a+dptr
      000285 25 13            [12]  743 	add	a,_index
                                    744 ;	src/pwm_dac.c:328: if (index < 0)
      000287 F5 13            [12]  745 	mov	_index,a
      000289 30 E7 05         [24]  746 	jnb	acc.7,00118$
                                    747 ;	src/pwm_dac.c:330: index = 0;
      00028C 75 13 00         [24]  748 	mov	_index,#0x00
      00028F 80 10            [24]  749 	sjmp	00119$
      000291                        750 00118$:
                                    751 ;	src/pwm_dac.c:332: else if (index > 88)
      000291 C3               [12]  752 	clr	c
      000292 74 D8            [12]  753 	mov	a,#(0x58 ^ 0x80)
      000294 85 13 F0         [24]  754 	mov	b,_index
      000297 63 F0 80         [24]  755 	xrl	b,#0x80
      00029A 95 F0            [12]  756 	subb	a,b
      00029C 50 03            [24]  757 	jnc	00119$
                                    758 ;	src/pwm_dac.c:334: index = 88;
      00029E 75 13 58         [24]  759 	mov	_index,#0x58
      0002A1                        760 00119$:
                                    761 ;	src/pwm_dac.c:338: return (uint8_t)((predsample/256)+128);
      0002A1 E4               [12]  762 	clr	a
      0002A2 F5 27            [12]  763 	mov	__divslong_PARM_2,a
      0002A4 75 28 01         [24]  764 	mov	(__divslong_PARM_2 + 1),#0x01
      0002A7 F5 29            [12]  765 	mov	(__divslong_PARM_2 + 2),a
      0002A9 F5 2A            [12]  766 	mov	(__divslong_PARM_2 + 3),a
      0002AB 85 14 82         [24]  767 	mov	dpl,_predsample
      0002AE 85 15 83         [24]  768 	mov	dph,(_predsample + 1)
      0002B1 85 16 F0         [24]  769 	mov	b,(_predsample + 2)
      0002B4 E5 17            [12]  770 	mov	a,(_predsample + 3)
      0002B6 12 07 9D         [24]  771 	lcall	__divslong
      0002B9 AC 82            [24]  772 	mov	r4,dpl
      0002BB 74 80            [12]  773 	mov	a,#0x80
      0002BD 2C               [12]  774 	add	a,r4
                                    775 ;	src/pwm_dac.c:339: }
      0002BE F5 82            [12]  776 	mov	dpl,a
      0002C0 22               [24]  777 	ret
                                    778 ;------------------------------------------------------------
                                    779 ;Allocation info for local variables in function 'pwm_init'
                                    780 ;------------------------------------------------------------
                                    781 ;	src/pwm_dac.c:341: void pwm_init(void)
                                    782 ;	-----------------------------------------
                                    783 ;	 function pwm_init
                                    784 ;	-----------------------------------------
      0002C1                        785 _pwm_init:
                                    786 ;	src/pwm_dac.c:343: P_SW2 = 0x80;
      0002C1 75 BA 80         [24]  787 	mov	_P_SW2,#0x80
                                    788 ;	src/pwm_dac.c:344: PWM1_CCER1 = 0x00;
      0002C4 90 FE CC         [24]  789 	mov	dptr,#0xfecc
      0002C7 E4               [12]  790 	clr	a
      0002C8 F0               [24]  791 	movx	@dptr,a
                                    792 ;	src/pwm_dac.c:345: PWM1_CCMR2 = 0x60;
      0002C9 90 FE C9         [24]  793 	mov	dptr,#0xfec9
      0002CC 74 60            [12]  794 	mov	a,#0x60
      0002CE F0               [24]  795 	movx	@dptr,a
                                    796 ;	src/pwm_dac.c:346: PWM1_CCER1 = 0x10;
      0002CF 90 FE CC         [24]  797 	mov	dptr,#0xfecc
      0002D2 74 10            [12]  798 	mov	a,#0x10
      0002D4 F0               [24]  799 	movx	@dptr,a
                                    800 ;	src/pwm_dac.c:347: PWM1_CCR2H = 0x00;
      0002D5 90 FE D7         [24]  801 	mov	dptr,#0xfed7
      0002D8 E4               [12]  802 	clr	a
      0002D9 F0               [24]  803 	movx	@dptr,a
                                    804 ;	src/pwm_dac.c:348: PWM1_CCR2L = 0x80;
      0002DA 90 FE D8         [24]  805 	mov	dptr,#0xfed8
      0002DD 74 80            [12]  806 	mov	a,#0x80
      0002DF F0               [24]  807 	movx	@dptr,a
                                    808 ;	src/pwm_dac.c:349: PWM1_ARRH  = 0x01;
      0002E0 90 FE D2         [24]  809 	mov	dptr,#0xfed2
      0002E3 23               [12]  810 	rl	a
      0002E4 F0               [24]  811 	movx	@dptr,a
                                    812 ;	src/pwm_dac.c:350: PWM1_ARRL  = 0x00;
      0002E5 90 FE D3         [24]  813 	mov	dptr,#0xfed3
      0002E8 E4               [12]  814 	clr	a
      0002E9 F0               [24]  815 	movx	@dptr,a
                                    816 ;	src/pwm_dac.c:351: PWM1_ENO   = 0x04;
      0002EA 90 FE B1         [24]  817 	mov	dptr,#0xfeb1
      0002ED 74 04            [12]  818 	mov	a,#0x04
      0002EF F0               [24]  819 	movx	@dptr,a
                                    820 ;	src/pwm_dac.c:352: PWM1_BKR   = 0x80;
      0002F0 90 FE DD         [24]  821 	mov	dptr,#0xfedd
      0002F3 74 80            [12]  822 	mov	a,#0x80
      0002F5 F0               [24]  823 	movx	@dptr,a
                                    824 ;	src/pwm_dac.c:353: PWM1_CR1   = 0x01;
      0002F6 90 FE C0         [24]  825 	mov	dptr,#0xfec0
      0002F9 23               [12]  826 	rl	a
      0002FA F0               [24]  827 	movx	@dptr,a
                                    828 ;	src/pwm_dac.c:354: }
      0002FB 22               [24]  829 	ret
                                    830 ;------------------------------------------------------------
                                    831 ;Allocation info for local variables in function 'PWM2_Interrupt'
                                    832 ;------------------------------------------------------------
                                    833 ;	src/pwm_dac.c:356: void PWM2_Interrupt(void) interrupt (27)
                                    834 ;	-----------------------------------------
                                    835 ;	 function PWM2_Interrupt
                                    836 ;	-----------------------------------------
      0002FC                        837 _PWM2_Interrupt:
      0002FC C0 E0            [24]  838 	push	acc
      0002FE C0 82            [24]  839 	push	dpl
      000300 C0 83            [24]  840 	push	dph
      000302 C0 07            [24]  841 	push	ar7
      000304 C0 D0            [24]  842 	push	psw
      000306 75 D0 00         [24]  843 	mov	psw,#0x00
                                    844 ;	src/pwm_dac.c:358: PWM2_SR1 = 0x00;
      000309 90 FE E5         [24]  845 	mov	dptr,#0xfee5
      00030C E4               [12]  846 	clr	a
      00030D F0               [24]  847 	movx	@dptr,a
                                    848 ;	src/pwm_dac.c:359: if(dac_read != dac_write)
      00030E E5 11            [12]  849 	mov	a,_dac_write
      000310 B5 10 02         [24]  850 	cjne	a,_dac_read,00110$
      000313 80 16            [24]  851 	sjmp	00102$
      000315                        852 00110$:
                                    853 ;	src/pwm_dac.c:361: PWM1_CCR2L = dac_buff1[dac_read++];
      000315 AF 10            [24]  854 	mov	r7,_dac_read
      000317 05 10            [12]  855 	inc	_dac_read
      000319 EF               [12]  856 	mov	a,r7
      00031A 24 01            [12]  857 	add	a,#_dac_buff1
      00031C F5 82            [12]  858 	mov	dpl,a
      00031E E4               [12]  859 	clr	a
      00031F 34 00            [12]  860 	addc	a,#(_dac_buff1 >> 8)
      000321 F5 83            [12]  861 	mov	dph,a
      000323 E0               [24]  862 	movx	a,@dptr
      000324 FF               [12]  863 	mov	r7,a
      000325 90 FE D8         [24]  864 	mov	dptr,#0xfed8
      000328 F0               [24]  865 	movx	@dptr,a
      000329 80 18            [24]  866 	sjmp	00104$
      00032B                        867 00102$:
                                    868 ;	src/pwm_dac.c:365: dac_read = 0;
      00032B 75 10 00         [24]  869 	mov	_dac_read,#0x00
                                    870 ;	src/pwm_dac.c:366: dac_write = 0;
      00032E 75 11 00         [24]  871 	mov	_dac_write,#0x00
                                    872 ;	src/pwm_dac.c:367: dac_sendflag = 0;
      000331 75 12 00         [24]  873 	mov	_dac_sendflag,#0x00
                                    874 ;	src/pwm_dac.c:368: PWM1_CCR2L = 0x80;  //保持中值
      000334 90 FE D8         [24]  875 	mov	dptr,#0xfed8
      000337 74 80            [12]  876 	mov	a,#0x80
      000339 F0               [24]  877 	movx	@dptr,a
                                    878 ;	src/pwm_dac.c:369: PWM2_CR1 = 0x00;    //停止发送
      00033A 90 FE E0         [24]  879 	mov	dptr,#0xfee0
      00033D E4               [12]  880 	clr	a
      00033E F0               [24]  881 	movx	@dptr,a
                                    882 ;	src/pwm_dac.c:370: PWM2_IER = 0x00;
      00033F 90 FE E4         [24]  883 	mov	dptr,#0xfee4
      000342 F0               [24]  884 	movx	@dptr,a
      000343                        885 00104$:
                                    886 ;	src/pwm_dac.c:372: }
      000343 D0 D0            [24]  887 	pop	psw
      000345 D0 07            [24]  888 	pop	ar7
      000347 D0 83            [24]  889 	pop	dph
      000349 D0 82            [24]  890 	pop	dpl
      00034B D0 E0            [24]  891 	pop	acc
      00034D 32               [24]  892 	reti
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
      00034E                        904 _dac_send:
                                    905 ;	src/pwm_dac.c:378: while((dac_write != (uint8_t)(dac_read-1)) && (dac_write != (uint8_t)(dac_read-2)))   //还有缓存空间则继续解码数据
      00034E                        906 00107$:
      00034E E5 10            [12]  907 	mov	a,_dac_read
      000350 FF               [12]  908 	mov	r7,a
      000351 14               [12]  909 	dec	a
      000352 FE               [12]  910 	mov	r6,a
      000353 B5 11 03         [24]  911 	cjne	a,_dac_write,00138$
      000356 02 04 BA         [24]  912 	ljmp	00109$
      000359                        913 00138$:
      000359 1F               [12]  914 	dec	r7
      00035A 1F               [12]  915 	dec	r7
      00035B EF               [12]  916 	mov	a,r7
      00035C B5 11 03         [24]  917 	cjne	a,_dac_write,00139$
      00035F 02 04 BA         [24]  918 	ljmp	00109$
      000362                        919 00139$:
                                    920 ;	src/pwm_dac.c:380: if((i % 255) == 0)    //块数据头,每块255个字节
      000362 75 27 FF         [24]  921 	mov	__moduint_PARM_2,#0xff
      000365 75 28 00         [24]  922 	mov	(__moduint_PARM_2 + 1),#0x00
      000368 85 1B 82         [24]  923 	mov	dpl,_dac_send_i_65536_23
      00036B 85 1C 83         [24]  924 	mov	dph,(_dac_send_i_65536_23 + 1)
      00036E 12 07 50         [24]  925 	lcall	__moduint
      000371 E5 82            [12]  926 	mov	a,dpl
      000373 85 83 F0         [24]  927 	mov	b,dph
      000376 45 F0            [12]  928 	orl	a,b
      000378 60 03            [24]  929 	jz	00140$
      00037A 02 04 0B         [24]  930 	ljmp	00104$
      00037D                        931 00140$:
                                    932 ;	src/pwm_dac.c:382: int16_t *p = (int16_t *)&wav_buf[i];  //16位音频数据
      00037D E5 1B            [12]  933 	mov	a,_dac_send_i_65536_23
      00037F 24 D1            [12]  934 	add	a,#_wav_buf
      000381 FE               [12]  935 	mov	r6,a
      000382 E5 1C            [12]  936 	mov	a,(_dac_send_i_65536_23 + 1)
      000384 34 08            [12]  937 	addc	a,#(_wav_buf >> 8)
      000386 FF               [12]  938 	mov	r7,a
      000387 7D 80            [12]  939 	mov	r5,#0x80
                                    940 ;	src/pwm_dac.c:383: predsample = *p;
      000389 8E 82            [24]  941 	mov	dpl,r6
      00038B 8F 83            [24]  942 	mov	dph,r7
      00038D 8D F0            [24]  943 	mov	b,r5
      00038F 12 07 EF         [24]  944 	lcall	__gptrget
      000392 FE               [12]  945 	mov	r6,a
      000393 A3               [24]  946 	inc	dptr
      000394 12 07 EF         [24]  947 	lcall	__gptrget
      000397 FF               [12]  948 	mov	r7,a
      000398 8E 14            [24]  949 	mov	_predsample,r6
      00039A EF               [12]  950 	mov	a,r7
      00039B F5 15            [12]  951 	mov	(_predsample + 1),a
      00039D 33               [12]  952 	rlc	a
      00039E 95 E0            [12]  953 	subb	a,acc
      0003A0 F5 16            [12]  954 	mov	(_predsample + 2),a
      0003A2 F5 17            [12]  955 	mov	(_predsample + 3),a
                                    956 ;	src/pwm_dac.c:384: i+=2;
      0003A4 74 02            [12]  957 	mov	a,#0x02
      0003A6 25 1B            [12]  958 	add	a,_dac_send_i_65536_23
      0003A8 F5 1B            [12]  959 	mov	_dac_send_i_65536_23,a
      0003AA E4               [12]  960 	clr	a
      0003AB 35 1C            [12]  961 	addc	a,(_dac_send_i_65536_23 + 1)
      0003AD F5 1C            [12]  962 	mov	(_dac_send_i_65536_23 + 1),a
                                    963 ;	src/pwm_dac.c:385: dac_buff1[dac_write] = (predsample/256)+128;  //转换为8bit
      0003AF E5 11            [12]  964 	mov	a,_dac_write
      0003B1 24 01            [12]  965 	add	a,#_dac_buff1
      0003B3 FE               [12]  966 	mov	r6,a
      0003B4 E4               [12]  967 	clr	a
      0003B5 34 00            [12]  968 	addc	a,#(_dac_buff1 >> 8)
      0003B7 FF               [12]  969 	mov	r7,a
      0003B8 E4               [12]  970 	clr	a
      0003B9 F5 27            [12]  971 	mov	__divslong_PARM_2,a
      0003BB 75 28 01         [24]  972 	mov	(__divslong_PARM_2 + 1),#0x01
      0003BE F5 29            [12]  973 	mov	(__divslong_PARM_2 + 2),a
      0003C0 F5 2A            [12]  974 	mov	(__divslong_PARM_2 + 3),a
      0003C2 85 14 82         [24]  975 	mov	dpl,_predsample
      0003C5 85 15 83         [24]  976 	mov	dph,(_predsample + 1)
      0003C8 85 16 F0         [24]  977 	mov	b,(_predsample + 2)
      0003CB E5 17            [12]  978 	mov	a,(_predsample + 3)
      0003CD C0 07            [24]  979 	push	ar7
      0003CF C0 06            [24]  980 	push	ar6
      0003D1 12 07 9D         [24]  981 	lcall	__divslong
      0003D4 AA 82            [24]  982 	mov	r2,dpl
      0003D6 D0 06            [24]  983 	pop	ar6
      0003D8 D0 07            [24]  984 	pop	ar7
      0003DA 74 80            [12]  985 	mov	a,#0x80
      0003DC 2A               [12]  986 	add	a,r2
      0003DD 8E 82            [24]  987 	mov	dpl,r6
      0003DF 8F 83            [24]  988 	mov	dph,r7
      0003E1 F0               [24]  989 	movx	@dptr,a
                                    990 ;	src/pwm_dac.c:386: printf_byte(dac_buff1[dac_write]);            //串口输出音频数据
      0003E2 8E 82            [24]  991 	mov	dpl,r6
      0003E4 8F 83            [24]  992 	mov	dph,r7
      0003E6 E0               [24]  993 	movx	a,@dptr
      0003E7 F5 82            [12]  994 	mov	dpl,a
      0003E9 12 06 BE         [24]  995 	lcall	_printf_byte
                                    996 ;	src/pwm_dac.c:387: dac_write++;
      0003EC 05 11            [12]  997 	inc	_dac_write
                                    998 ;	src/pwm_dac.c:389: index = wav_buf[i++];
      0003EE AE 1B            [24]  999 	mov	r6,_dac_send_i_65536_23
      0003F0 AF 1C            [24] 1000 	mov	r7,(_dac_send_i_65536_23 + 1)
      0003F2 05 1B            [12] 1001 	inc	_dac_send_i_65536_23
      0003F4 E4               [12] 1002 	clr	a
      0003F5 B5 1B 02         [24] 1003 	cjne	a,_dac_send_i_65536_23,00141$
      0003F8 05 1C            [12] 1004 	inc	(_dac_send_i_65536_23 + 1)
      0003FA                       1005 00141$:
      0003FA EE               [12] 1006 	mov	a,r6
      0003FB 24 D1            [12] 1007 	add	a,#_wav_buf
      0003FD F5 82            [12] 1008 	mov	dpl,a
      0003FF EF               [12] 1009 	mov	a,r7
      000400 34 08            [12] 1010 	addc	a,#(_wav_buf >> 8)
      000402 F5 83            [12] 1011 	mov	dph,a
      000404 E4               [12] 1012 	clr	a
      000405 93               [24] 1013 	movc	a,@a+dptr
      000406 F5 13            [12] 1014 	mov	_index,a
      000408 02 03 4E         [24] 1015 	ljmp	00107$
      00040B                       1016 00104$:
                                   1017 ;	src/pwm_dac.c:393: dac_buff1[dac_write] = ADPCM_Decode(wav_buf[i]&0x0f);
      00040B E5 11            [12] 1018 	mov	a,_dac_write
      00040D 24 01            [12] 1019 	add	a,#_dac_buff1
      00040F FE               [12] 1020 	mov	r6,a
      000410 E4               [12] 1021 	clr	a
      000411 34 00            [12] 1022 	addc	a,#(_dac_buff1 >> 8)
      000413 FF               [12] 1023 	mov	r7,a
      000414 E5 1B            [12] 1024 	mov	a,_dac_send_i_65536_23
      000416 24 D1            [12] 1025 	add	a,#_wav_buf
      000418 F5 82            [12] 1026 	mov	dpl,a
      00041A E5 1C            [12] 1027 	mov	a,(_dac_send_i_65536_23 + 1)
      00041C 34 08            [12] 1028 	addc	a,#(_wav_buf >> 8)
      00041E F5 83            [12] 1029 	mov	dph,a
      000420 E4               [12] 1030 	clr	a
      000421 93               [24] 1031 	movc	a,@a+dptr
      000422 FD               [12] 1032 	mov	r5,a
      000423 74 0F            [12] 1033 	mov	a,#0x0f
      000425 5D               [12] 1034 	anl	a,r5
      000426 F5 82            [12] 1035 	mov	dpl,a
      000428 C0 07            [24] 1036 	push	ar7
      00042A C0 06            [24] 1037 	push	ar6
      00042C 12 01 62         [24] 1038 	lcall	_ADPCM_Decode
      00042F AD 82            [24] 1039 	mov	r5,dpl
      000431 D0 06            [24] 1040 	pop	ar6
      000433 D0 07            [24] 1041 	pop	ar7
      000435 8E 82            [24] 1042 	mov	dpl,r6
      000437 8F 83            [24] 1043 	mov	dph,r7
      000439 ED               [12] 1044 	mov	a,r5
      00043A F0               [24] 1045 	movx	@dptr,a
                                   1046 ;	src/pwm_dac.c:394: printf_byte(dac_buff1[dac_write]);
      00043B E5 11            [12] 1047 	mov	a,_dac_write
      00043D 24 01            [12] 1048 	add	a,#_dac_buff1
      00043F F5 82            [12] 1049 	mov	dpl,a
      000441 E4               [12] 1050 	clr	a
      000442 34 00            [12] 1051 	addc	a,#(_dac_buff1 >> 8)
      000444 F5 83            [12] 1052 	mov	dph,a
      000446 E0               [24] 1053 	movx	a,@dptr
      000447 F5 82            [12] 1054 	mov	dpl,a
      000449 12 06 BE         [24] 1055 	lcall	_printf_byte
                                   1056 ;	src/pwm_dac.c:395: dac_write++;
      00044C 05 11            [12] 1057 	inc	_dac_write
                                   1058 ;	src/pwm_dac.c:396: dac_buff1[dac_write] = ADPCM_Decode(wav_buf[i]>>4);
      00044E E5 11            [12] 1059 	mov	a,_dac_write
      000450 24 01            [12] 1060 	add	a,#_dac_buff1
      000452 FE               [12] 1061 	mov	r6,a
      000453 E4               [12] 1062 	clr	a
      000454 34 00            [12] 1063 	addc	a,#(_dac_buff1 >> 8)
      000456 FF               [12] 1064 	mov	r7,a
      000457 E5 1B            [12] 1065 	mov	a,_dac_send_i_65536_23
      000459 24 D1            [12] 1066 	add	a,#_wav_buf
      00045B F5 82            [12] 1067 	mov	dpl,a
      00045D E5 1C            [12] 1068 	mov	a,(_dac_send_i_65536_23 + 1)
      00045F 34 08            [12] 1069 	addc	a,#(_wav_buf >> 8)
      000461 F5 83            [12] 1070 	mov	dph,a
      000463 E4               [12] 1071 	clr	a
      000464 93               [24] 1072 	movc	a,@a+dptr
      000465 C4               [12] 1073 	swap	a
      000466 54 0F            [12] 1074 	anl	a,#0x0f
      000468 F5 82            [12] 1075 	mov	dpl,a
      00046A C0 07            [24] 1076 	push	ar7
      00046C C0 06            [24] 1077 	push	ar6
      00046E 12 01 62         [24] 1078 	lcall	_ADPCM_Decode
      000471 AD 82            [24] 1079 	mov	r5,dpl
      000473 D0 06            [24] 1080 	pop	ar6
      000475 D0 07            [24] 1081 	pop	ar7
      000477 8E 82            [24] 1082 	mov	dpl,r6
      000479 8F 83            [24] 1083 	mov	dph,r7
      00047B ED               [12] 1084 	mov	a,r5
      00047C F0               [24] 1085 	movx	@dptr,a
                                   1086 ;	src/pwm_dac.c:397: printf_byte(dac_buff1[dac_write]);
      00047D E5 11            [12] 1087 	mov	a,_dac_write
      00047F 24 01            [12] 1088 	add	a,#_dac_buff1
      000481 F5 82            [12] 1089 	mov	dpl,a
      000483 E4               [12] 1090 	clr	a
      000484 34 00            [12] 1091 	addc	a,#(_dac_buff1 >> 8)
      000486 F5 83            [12] 1092 	mov	dph,a
      000488 E0               [24] 1093 	movx	a,@dptr
      000489 F5 82            [12] 1094 	mov	dpl,a
      00048B 12 06 BE         [24] 1095 	lcall	_printf_byte
                                   1096 ;	src/pwm_dac.c:398: dac_write++;
      00048E 05 11            [12] 1097 	inc	_dac_write
                                   1098 ;	src/pwm_dac.c:399: i++;
      000490 05 1B            [12] 1099 	inc	_dac_send_i_65536_23
      000492 E4               [12] 1100 	clr	a
      000493 B5 1B 02         [24] 1101 	cjne	a,_dac_send_i_65536_23,00142$
      000496 05 1C            [12] 1102 	inc	(_dac_send_i_65536_23 + 1)
      000498                       1103 00142$:
                                   1104 ;	src/pwm_dac.c:400: if(i == (uint16_t)sizeof(wav_buf))  //解码结束
      000498 74 AA            [12] 1105 	mov	a,#0xaa
      00049A B5 1B 07         [24] 1106 	cjne	a,_dac_send_i_65536_23,00143$
      00049D 74 0C            [12] 1107 	mov	a,#0x0c
      00049F B5 1C 02         [24] 1108 	cjne	a,(_dac_send_i_65536_23 + 1),00143$
      0004A2 80 03            [24] 1109 	sjmp	00144$
      0004A4                       1110 00143$:
      0004A4 02 03 4E         [24] 1111 	ljmp	00107$
      0004A7                       1112 00144$:
                                   1113 ;	src/pwm_dac.c:402: i = 0;
      0004A7 E4               [12] 1114 	clr	a
      0004A8 F5 1B            [12] 1115 	mov	_dac_send_i_65536_23,a
      0004AA F5 1C            [12] 1116 	mov	(_dac_send_i_65536_23 + 1),a
                                   1117 ;	src/pwm_dac.c:403: index = 0;
                                   1118 ;	1-genFromRTrack replaced	mov	_index,#0x00
      0004AC F5 13            [12] 1119 	mov	_index,a
                                   1120 ;	src/pwm_dac.c:404: predsample = 0;
      0004AE F5 14            [12] 1121 	mov	_predsample,a
      0004B0 F5 15            [12] 1122 	mov	(_predsample + 1),a
      0004B2 F5 16            [12] 1123 	mov	(_predsample + 2),a
      0004B4 F5 17            [12] 1124 	mov	(_predsample + 3),a
                                   1125 ;	src/pwm_dac.c:405: return 0;
      0004B6 75 82 00         [24] 1126 	mov	dpl,#0x00
      0004B9 22               [24] 1127 	ret
      0004BA                       1128 00109$:
                                   1129 ;	src/pwm_dac.c:410: if(dac_sendflag == 0)
      0004BA E5 12            [12] 1130 	mov	a,_dac_sendflag
      0004BC 70 25            [24] 1131 	jnz	00111$
                                   1132 ;	src/pwm_dac.c:412: PWM2_CNTRH = 0x00;
      0004BE 90 FE EE         [24] 1133 	mov	dptr,#0xfeee
      0004C1 E4               [12] 1134 	clr	a
      0004C2 F0               [24] 1135 	movx	@dptr,a
                                   1136 ;	src/pwm_dac.c:413: PWM2_CNTRL = 0x00;
      0004C3 90 FE EF         [24] 1137 	mov	dptr,#0xfeef
      0004C6 F0               [24] 1138 	movx	@dptr,a
                                   1139 ;	src/pwm_dac.c:415: PWM2_ARRH = 0x0A;
      0004C7 90 FE F2         [24] 1140 	mov	dptr,#0xfef2
      0004CA 74 0A            [12] 1141 	mov	a,#0x0a
      0004CC F0               [24] 1142 	movx	@dptr,a
                                   1143 ;	src/pwm_dac.c:416: PWM2_ARRL = 0xCD;
      0004CD 90 FE F3         [24] 1144 	mov	dptr,#0xfef3
      0004D0 74 CD            [12] 1145 	mov	a,#0xcd
      0004D2 F0               [24] 1146 	movx	@dptr,a
                                   1147 ;	src/pwm_dac.c:418: PWM2_SR1 = 0x00;
      0004D3 90 FE E5         [24] 1148 	mov	dptr,#0xfee5
      0004D6 E4               [12] 1149 	clr	a
      0004D7 F0               [24] 1150 	movx	@dptr,a
                                   1151 ;	src/pwm_dac.c:419: PWM2_IER = 0x01;
      0004D8 90 FE E4         [24] 1152 	mov	dptr,#0xfee4
      0004DB 04               [12] 1153 	inc	a
      0004DC F0               [24] 1154 	movx	@dptr,a
                                   1155 ;	src/pwm_dac.c:420: PWM2_CR1 = 0x01;
      0004DD 90 FE E0         [24] 1156 	mov	dptr,#0xfee0
      0004E0 F0               [24] 1157 	movx	@dptr,a
                                   1158 ;	src/pwm_dac.c:421: dac_sendflag = 1;
                                   1159 ;	1-genFromRTrack replaced	mov	_dac_sendflag,#0x01
      0004E1 F5 12            [12] 1160 	mov	_dac_sendflag,a
      0004E3                       1161 00111$:
                                   1162 ;	src/pwm_dac.c:423: return 1;
      0004E3 75 82 01         [24] 1163 	mov	dpl,#0x01
                                   1164 ;	src/pwm_dac.c:424: }
      0004E6 22               [24] 1165 	ret
                                   1166 	.area CSEG    (CODE)
                                   1167 	.area CONST   (CODE)
      00080F                       1168 _StepSizeTable:
      00080F 07 00                 1169 	.byte #0x07, #0x00	; 7
      000811 08 00                 1170 	.byte #0x08, #0x00	; 8
      000813 09 00                 1171 	.byte #0x09, #0x00	; 9
      000815 0A 00                 1172 	.byte #0x0a, #0x00	; 10
      000817 0B 00                 1173 	.byte #0x0b, #0x00	; 11
      000819 0C 00                 1174 	.byte #0x0c, #0x00	; 12
      00081B 0D 00                 1175 	.byte #0x0d, #0x00	; 13
      00081D 0E 00                 1176 	.byte #0x0e, #0x00	; 14
      00081F 10 00                 1177 	.byte #0x10, #0x00	; 16
      000821 11 00                 1178 	.byte #0x11, #0x00	; 17
      000823 13 00                 1179 	.byte #0x13, #0x00	; 19
      000825 15 00                 1180 	.byte #0x15, #0x00	; 21
      000827 17 00                 1181 	.byte #0x17, #0x00	; 23
      000829 19 00                 1182 	.byte #0x19, #0x00	; 25
      00082B 1C 00                 1183 	.byte #0x1c, #0x00	; 28
      00082D 1F 00                 1184 	.byte #0x1f, #0x00	; 31
      00082F 22 00                 1185 	.byte #0x22, #0x00	; 34
      000831 25 00                 1186 	.byte #0x25, #0x00	; 37
      000833 29 00                 1187 	.byte #0x29, #0x00	; 41
      000835 2D 00                 1188 	.byte #0x2d, #0x00	; 45
      000837 32 00                 1189 	.byte #0x32, #0x00	; 50
      000839 37 00                 1190 	.byte #0x37, #0x00	; 55
      00083B 3C 00                 1191 	.byte #0x3c, #0x00	; 60
      00083D 42 00                 1192 	.byte #0x42, #0x00	; 66
      00083F 49 00                 1193 	.byte #0x49, #0x00	; 73
      000841 50 00                 1194 	.byte #0x50, #0x00	; 80
      000843 58 00                 1195 	.byte #0x58, #0x00	; 88
      000845 61 00                 1196 	.byte #0x61, #0x00	; 97
      000847 6B 00                 1197 	.byte #0x6b, #0x00	; 107
      000849 76 00                 1198 	.byte #0x76, #0x00	; 118
      00084B 82 00                 1199 	.byte #0x82, #0x00	; 130
      00084D 8F 00                 1200 	.byte #0x8f, #0x00	; 143
      00084F 9D 00                 1201 	.byte #0x9d, #0x00	; 157
      000851 AD 00                 1202 	.byte #0xad, #0x00	; 173
      000853 BE 00                 1203 	.byte #0xbe, #0x00	; 190
      000855 D1 00                 1204 	.byte #0xd1, #0x00	; 209
      000857 E6 00                 1205 	.byte #0xe6, #0x00	; 230
      000859 FD 00                 1206 	.byte #0xfd, #0x00	; 253
      00085B 17 01                 1207 	.byte #0x17, #0x01	; 279
      00085D 33 01                 1208 	.byte #0x33, #0x01	; 307
      00085F 51 01                 1209 	.byte #0x51, #0x01	; 337
      000861 73 01                 1210 	.byte #0x73, #0x01	; 371
      000863 98 01                 1211 	.byte #0x98, #0x01	; 408
      000865 C1 01                 1212 	.byte #0xc1, #0x01	; 449
      000867 EE 01                 1213 	.byte #0xee, #0x01	; 494
      000869 20 02                 1214 	.byte #0x20, #0x02	; 544
      00086B 56 02                 1215 	.byte #0x56, #0x02	; 598
      00086D 92 02                 1216 	.byte #0x92, #0x02	; 658
      00086F D4 02                 1217 	.byte #0xd4, #0x02	; 724
      000871 1C 03                 1218 	.byte #0x1c, #0x03	; 796
      000873 6C 03                 1219 	.byte #0x6c, #0x03	; 876
      000875 C3 03                 1220 	.byte #0xc3, #0x03	; 963
      000877 24 04                 1221 	.byte #0x24, #0x04	; 1060
      000879 8E 04                 1222 	.byte #0x8e, #0x04	; 1166
      00087B 02 05                 1223 	.byte #0x02, #0x05	; 1282
      00087D 83 05                 1224 	.byte #0x83, #0x05	; 1411
      00087F 10 06                 1225 	.byte #0x10, #0x06	; 1552
      000881 AB 06                 1226 	.byte #0xab, #0x06	; 1707
      000883 56 07                 1227 	.byte #0x56, #0x07	; 1878
      000885 12 08                 1228 	.byte #0x12, #0x08	; 2066
      000887 E0 08                 1229 	.byte #0xe0, #0x08	; 2272
      000889 C3 09                 1230 	.byte #0xc3, #0x09	; 2499
      00088B BD 0A                 1231 	.byte #0xbd, #0x0a	; 2749
      00088D D0 0B                 1232 	.byte #0xd0, #0x0b	; 3024
      00088F FF 0C                 1233 	.byte #0xff, #0x0c	; 3327
      000891 4C 0E                 1234 	.byte #0x4c, #0x0e	; 3660
      000893 BA 0F                 1235 	.byte #0xba, #0x0f	; 4026
      000895 4C 11                 1236 	.byte #0x4c, #0x11	; 4428
      000897 07 13                 1237 	.byte #0x07, #0x13	; 4871
      000899 EE 14                 1238 	.byte #0xee, #0x14	; 5358
      00089B 06 17                 1239 	.byte #0x06, #0x17	; 5894
      00089D 54 19                 1240 	.byte #0x54, #0x19	; 6484
      00089F DC 1B                 1241 	.byte #0xdc, #0x1b	; 7132
      0008A1 A5 1E                 1242 	.byte #0xa5, #0x1e	; 7845
      0008A3 B6 21                 1243 	.byte #0xb6, #0x21	; 8630
      0008A5 15 25                 1244 	.byte #0x15, #0x25	; 9493
      0008A7 CA 28                 1245 	.byte #0xca, #0x28	; 10442
      0008A9 DF 2C                 1246 	.byte #0xdf, #0x2c	; 11487
      0008AB 5B 31                 1247 	.byte #0x5b, #0x31	; 12635
      0008AD 4B 36                 1248 	.byte #0x4b, #0x36	; 13899
      0008AF B9 3B                 1249 	.byte #0xb9, #0x3b	; 15289
      0008B1 B2 41                 1250 	.byte #0xb2, #0x41	; 16818
      0008B3 44 48                 1251 	.byte #0x44, #0x48	; 18500
      0008B5 7E 4F                 1252 	.byte #0x7e, #0x4f	; 20350
      0008B7 71 57                 1253 	.byte #0x71, #0x57	; 22385
      0008B9 2F 60                 1254 	.byte #0x2f, #0x60	; 24623
      0008BB CE 69                 1255 	.byte #0xce, #0x69	; 27086
      0008BD 62 74                 1256 	.byte #0x62, #0x74	; 29794
      0008BF FF 7F                 1257 	.byte #0xff, #0x7f	; 32767
      0008C1                       1258 _IndexTable:
      0008C1 FF                    1259 	.db #0xff	; -1
      0008C2 FF                    1260 	.db #0xff	; -1
      0008C3 FF                    1261 	.db #0xff	; -1
      0008C4 FF                    1262 	.db #0xff	; -1
      0008C5 02                    1263 	.db #0x02	;  2
      0008C6 04                    1264 	.db #0x04	;  4
      0008C7 06                    1265 	.db #0x06	;  6
      0008C8 08                    1266 	.db #0x08	;  8
      0008C9 FF                    1267 	.db #0xff	; -1
      0008CA FF                    1268 	.db #0xff	; -1
      0008CB FF                    1269 	.db #0xff	; -1
      0008CC FF                    1270 	.db #0xff	; -1
      0008CD 02                    1271 	.db #0x02	;  2
      0008CE 04                    1272 	.db #0x04	;  4
      0008CF 06                    1273 	.db #0x06	;  6
      0008D0 08                    1274 	.db #0x08	;  8
      0008D1                       1275 _wav_buf:
      0008D1 07                    1276 	.db #0x07	; 7
      0008D2 00                    1277 	.db #0x00	; 0
      0008D3 00                    1278 	.db #0x00	; 0
      0008D4 5F                    1279 	.db #0x5f	; 95
      0008D5 1F                    1280 	.db #0x1f	; 31
      0008D6 50                    1281 	.db #0x50	; 80	'P'
      0008D7 11                    1282 	.db #0x11	; 17
      0008D8 9D                    1283 	.db #0x9d	; 157
      0008D9 99                    1284 	.db #0x99	; 153
      0008DA 60                    1285 	.db #0x60	; 96
      0008DB 89                    1286 	.db #0x89	; 137
      0008DC BC                    1287 	.db #0xbc	; 188
      0008DD 9C                    1288 	.db #0x9c	; 156
      0008DE 60                    1289 	.db #0x60	; 96
      0008DF 10                    1290 	.db #0x10	; 16
      0008E0 6B                    1291 	.db #0x6b	; 107	'k'
      0008E1 79                    1292 	.db #0x79	; 121	'y'
      0008E2 52                    1293 	.db #0x52	; 82	'R'
      0008E3 92                    1294 	.db #0x92	; 146
      0008E4 DE                    1295 	.db #0xde	; 222
      0008E5 8A                    1296 	.db #0x8a	; 138
      0008E6 31                    1297 	.db #0x31	; 49	'1'
      0008E7 15                    1298 	.db #0x15	; 21
      0008E8 B0                    1299 	.db #0xb0	; 176
      0008E9 BB                    1300 	.db #0xbb	; 187
      0008EA 18                    1301 	.db #0x18	; 24
      0008EB 26                    1302 	.db #0x26	; 38
      0008EC 81                    1303 	.db #0x81	; 129
      0008ED BB                    1304 	.db #0xbb	; 187
      0008EE 9A                    1305 	.db #0x9a	; 154
      0008EF 43                    1306 	.db #0x43	; 67	'C'
      0008F0 02                    1307 	.db #0x02	; 2
      0008F1 B8                    1308 	.db #0xb8	; 184
      0008F2 AA                    1309 	.db #0xaa	; 170
      0008F3 20                    1310 	.db #0x20	; 32
      0008F4 24                    1311 	.db #0x24	; 36
      0008F5 90                    1312 	.db #0x90	; 144
      0008F6 AB                    1313 	.db #0xab	; 171
      0008F7 0A                    1314 	.db #0x0a	; 10
      0008F8 21                    1315 	.db #0x21	; 33
      0008F9 82                    1316 	.db #0x82	; 130
      0008FA 19                    1317 	.db #0x19	; 25
      0008FB 04                    1318 	.db #0x04	; 4
      0008FC 84                    1319 	.db #0x84	; 132
      0008FD BE                    1320 	.db #0xbe	; 190
      0008FE 8B                    1321 	.db #0x8b	; 139
      0008FF 27                    1322 	.db #0x27	; 39
      000900 90                    1323 	.db #0x90	; 144
      000901 CD                    1324 	.db #0xcd	; 205
      000902 3A                    1325 	.db #0x3a	; 58
      000903 36                    1326 	.db #0x36	; 54	'6'
      000904 94                    1327 	.db #0x94	; 148
      000905 CB                    1328 	.db #0xcb	; 203
      000906 9A                    1329 	.db #0x9a	; 154
      000907 31                    1330 	.db #0x31	; 49	'1'
      000908 03                    1331 	.db #0x03	; 3
      000909 A1                    1332 	.db #0xa1	; 161
      00090A BB                    1333 	.db #0xbb	; 187
      00090B 79                    1334 	.db #0x79	; 121	'y'
      00090C 12                    1335 	.db #0x12	; 18
      00090D AA                    1336 	.db #0xaa	; 170
      00090E AC                    1337 	.db #0xac	; 172
      00090F 32                    1338 	.db #0x32	; 50	'2'
      000910 25                    1339 	.db #0x25	; 37
      000911 A1                    1340 	.db #0xa1	; 161
      000912 DB                    1341 	.db #0xdb	; 219
      000913 AB                    1342 	.db #0xab	; 171
      000914 32                    1343 	.db #0x32	; 50	'2'
      000915 27                    1344 	.db #0x27	; 39
      000916 81                    1345 	.db #0x81	; 129
      000917 CB                    1346 	.db #0xcb	; 203
      000918 0B                    1347 	.db #0x0b	; 11
      000919 14                    1348 	.db #0x14	; 20
      00091A 80                    1349 	.db #0x80	; 128
      00091B 88                    1350 	.db #0x88	; 136
      00091C A8                    1351 	.db #0xa8	; 168
      00091D 88                    1352 	.db #0x88	; 136
      00091E 11                    1353 	.db #0x11	; 17
      00091F C8                    1354 	.db #0xc8	; 200
      000920 38                    1355 	.db #0x38	; 56	'8'
      000921 26                    1356 	.db #0x26	; 38
      000922 CA                    1357 	.db #0xca	; 202
      000923 40                    1358 	.db #0x40	; 64
      000924 13                    1359 	.db #0x13	; 19
      000925 F9                    1360 	.db #0xf9	; 249
      000926 DB                    1361 	.db #0xdb	; 219
      000927 10                    1362 	.db #0x10	; 16
      000928 34                    1363 	.db #0x34	; 52	'4'
      000929 01                    1364 	.db #0x01	; 1
      00092A C9                    1365 	.db #0xc9	; 201
      00092B 9A                    1366 	.db #0x9a	; 154
      00092C 82                    1367 	.db #0x82	; 130
      00092D 90                    1368 	.db #0x90	; 144
      00092E 09                    1369 	.db #0x09	; 9
      00092F 35                    1370 	.db #0x35	; 53	'5'
      000930 13                    1371 	.db #0x13	; 19
      000931 FB                    1372 	.db #0xfb	; 251
      000932 0B                    1373 	.db #0x0b	; 11
      000933 14                    1374 	.db #0x14	; 20
      000934 B0                    1375 	.db #0xb0	; 176
      000935 8C                    1376 	.db #0x8c	; 140
      000936 44                    1377 	.db #0x44	; 68	'D'
      000937 92                    1378 	.db #0x92	; 146
      000938 AE                    1379 	.db #0xae	; 174
      000939 19                    1380 	.db #0x19	; 25
      00093A 22                    1381 	.db #0x22	; 34
      00093B 20                    1382 	.db #0x20	; 32
      00093C 98                    1383 	.db #0x98	; 152
      00093D 8B                    1384 	.db #0x8b	; 139
      00093E 12                    1385 	.db #0x12	; 18
      00093F E3                    1386 	.db #0xe3	; 227
      000940 9B                    1387 	.db #0x9b	; 155
      000941 03                    1388 	.db #0x03	; 3
      000942 02                    1389 	.db #0x02	; 2
      000943 C8                    1390 	.db #0xc8	; 200
      000944 13                    1391 	.db #0x13	; 19
      000945 A9                    1392 	.db #0xa9	; 169
      000946 17                    1393 	.db #0x17	; 23
      000947 B9                    1394 	.db #0xb9	; 185
      000948 8F                    1395 	.db #0x8f	; 143
      000949 41                    1396 	.db #0x41	; 65	'A'
      00094A 12                    1397 	.db #0x12	; 18
      00094B 98                    1398 	.db #0x98	; 152
      00094C BE                    1399 	.db #0xbe	; 190
      00094D 19                    1400 	.db #0x19	; 25
      00094E 34                    1401 	.db #0x34	; 52	'4'
      00094F 90                    1402 	.db #0x90	; 144
      000950 98                    1403 	.db #0x98	; 152
      000951 AC                    1404 	.db #0xac	; 172
      000952 43                    1405 	.db #0x43	; 67	'C'
      000953 84                    1406 	.db #0x84	; 132
      000954 E9                    1407 	.db #0xe9	; 233
      000955 98                    1408 	.db #0x98	; 152
      000956 32                    1409 	.db #0x32	; 50	'2'
      000957 22                    1410 	.db #0x22	; 34
      000958 C8                    1411 	.db #0xc8	; 200
      000959 9E                    1412 	.db #0x9e	; 158
      00095A 22                    1413 	.db #0x22	; 34
      00095B B1                    1414 	.db #0xb1	; 177
      00095C C8                    1415 	.db #0xc8	; 200
      00095D 4A                    1416 	.db #0x4a	; 74	'J'
      00095E 54                    1417 	.db #0x54	; 84	'T'
      00095F 98                    1418 	.db #0x98	; 152
      000960 BB                    1419 	.db #0xbb	; 187
      000961 98                    1420 	.db #0x98	; 152
      000962 25                    1421 	.db #0x25	; 37
      000963 92                    1422 	.db #0x92	; 146
      000964 9B                    1423 	.db #0x9b	; 155
      000965 61                    1424 	.db #0x61	; 97	'a'
      000966 A0                    1425 	.db #0xa0	; 160
      000967 CA                    1426 	.db #0xca	; 202
      000968 20                    1427 	.db #0x20	; 32
      000969 02                    1428 	.db #0x02	; 2
      00096A 28                    1429 	.db #0x28	; 40
      00096B 22                    1430 	.db #0x22	; 34
      00096C EA                    1431 	.db #0xea	; 234
      00096D AF                    1432 	.db #0xaf	; 175
      00096E 20                    1433 	.db #0x20	; 32
      00096F 35                    1434 	.db #0x35	; 53	'5'
      000970 C0                    1435 	.db #0xc0	; 192
      000971 AB                    1436 	.db #0xab	; 171
      000972 41                    1437 	.db #0x41	; 65	'A'
      000973 03                    1438 	.db #0x03	; 3
      000974 CA                    1439 	.db #0xca	; 202
      000975 8C                    1440 	.db #0x8c	; 140
      000976 62                    1441 	.db #0x62	; 98	'b'
      000977 82                    1442 	.db #0x82	; 130
      000978 CA                    1443 	.db #0xca	; 202
      000979 09                    1444 	.db #0x09	; 9
      00097A 33                    1445 	.db #0x33	; 51	'3'
      00097B 98                    1446 	.db #0x98	; 152
      00097C AA                    1447 	.db #0xaa	; 170
      00097D 30                    1448 	.db #0x30	; 48	'0'
      00097E 13                    1449 	.db #0x13	; 19
      00097F EB                    1450 	.db #0xeb	; 235
      000980 19                    1451 	.db #0x19	; 25
      000981 14                    1452 	.db #0x14	; 20
      000982 AA                    1453 	.db #0xaa	; 170
      000983 0A                    1454 	.db #0x0a	; 10
      000984 32                    1455 	.db #0x32	; 50	'2'
      000985 C0                    1456 	.db #0xc0	; 192
      000986 80                    1457 	.db #0x80	; 128
      000987 06                    1458 	.db #0x06	; 6
      000988 C8                    1459 	.db #0xc8	; 200
      000989 89                    1460 	.db #0x89	; 137
      00098A 31                    1461 	.db #0x31	; 49	'1'
      00098B 13                    1462 	.db #0x13	; 19
      00098C EC                    1463 	.db #0xec	; 236
      00098D 09                    1464 	.db #0x09	; 9
      00098E 23                    1465 	.db #0x23	; 35
      00098F A1                    1466 	.db #0xa1	; 161
      000990 1C                    1467 	.db #0x1c	; 28
      000991 22                    1468 	.db #0x22	; 34
      000992 F1                    1469 	.db #0xf1	; 241
      000993 8C                    1470 	.db #0x8c	; 140
      000994 41                    1471 	.db #0x41	; 65	'A'
      000995 03                    1472 	.db #0x03	; 3
      000996 C9                    1473 	.db #0xc9	; 201
      000997 89                    1474 	.db #0x89	; 137
      000998 15                    1475 	.db #0x15	; 21
      000999 C8                    1476 	.db #0xc8	; 200
      00099A 8A                    1477 	.db #0x8a	; 138
      00099B 31                    1478 	.db #0x31	; 49	'1'
      00099C 91                    1479 	.db #0x91	; 145
      00099D A8                    1480 	.db #0xa8	; 168
      00099E 08                    1481 	.db #0x08	; 8
      00099F 25                    1482 	.db #0x25	; 37
      0009A0 99                    1483 	.db #0x99	; 153
      0009A1 AB                    1484 	.db #0xab	; 171
      0009A2 51                    1485 	.db #0x51	; 81	'Q'
      0009A3 C1                    1486 	.db #0xc1	; 193
      0009A4 09                    1487 	.db #0x09	; 9
      0009A5 18                    1488 	.db #0x18	; 24
      0009A6 A2                    1489 	.db #0xa2	; 162
      0009A7 C0                    1490 	.db #0xc0	; 192
      0009A8 04                    1491 	.db #0x04	; 4
      0009A9 94                    1492 	.db #0x94	; 148
      0009AA 0A                    1493 	.db #0x0a	; 10
      0009AB B1                    1494 	.db #0xb1	; 177
      0009AC F1                    1495 	.db #0xf1	; 241
      0009AD 43                    1496 	.db #0x43	; 67	'C'
      0009AE 84                    1497 	.db #0x84	; 132
      0009AF 31                    1498 	.db #0x31	; 49	'1'
      0009B0 A0                    1499 	.db #0xa0	; 160
      0009B1 DA                    1500 	.db #0xda	; 218
      0009B2 28                    1501 	.db #0x28	; 40
      0009B3 FD                    1502 	.db #0xfd	; 253
      0009B4 9F                    1503 	.db #0x9f	; 159
      0009B5 30                    1504 	.db #0x30	; 48	'0'
      0009B6 A1                    1505 	.db #0xa1	; 161
      0009B7 89                    1506 	.db #0x89	; 137
      0009B8 53                    1507 	.db #0x53	; 83	'S'
      0009B9 02                    1508 	.db #0x02	; 2
      0009BA 41                    1509 	.db #0x41	; 65	'A'
      0009BB 04                    1510 	.db #0x04	; 4
      0009BC BB                    1511 	.db #0xbb	; 187
      0009BD 38                    1512 	.db #0x38	; 56	'8'
      0009BE A4                    1513 	.db #0xa4	; 164
      0009BF FC                    1514 	.db #0xfc	; 252
      0009C0 9B                    1515 	.db #0x9b	; 155
      0009C1 10                    1516 	.db #0x10	; 16
      0009C2 99                    1517 	.db #0x99	; 153
      0009C3 0A                    1518 	.db #0x0a	; 10
      0009C4 53                    1519 	.db #0x53	; 83	'S'
      0009C5 24                    1520 	.db #0x24	; 36
      0009C6 03                    1521 	.db #0x03	; 3
      0009C7 09                    1522 	.db #0x09	; 9
      0009C8 30                    1523 	.db #0x30	; 48	'0'
      0009C9 14                    1524 	.db #0x14	; 20
      0009CA B1                    1525 	.db #0xb1	; 177
      0009CB AA                    1526 	.db #0xaa	; 170
      0009CC BD                    1527 	.db #0xbd	; 189
      0009CD FF                    1528 	.db #0xff	; 255
      0009CE 8A                    1529 	.db #0x8a	; 138
      0009CF 02                    1530 	.db #0x02	; 2
      0009D0 B5                    1531 	.db #0xb5	; 181
      0009D1 B8                    1532 	.db #0xb8	; 184
      0009D2 4B                    1533 	.db #0x4b	; 75	'K'
      0009D3 30                    1534 	.db #0x30	; 48	'0'
      0009D4 26                    1535 	.db #0x26	; 38
      0009D5 90                    1536 	.db #0x90	; 144
      0009D6 98                    1537 	.db #0x98	; 152
      0009D7 A9                    1538 	.db #0xa9	; 169
      0009D8 48                    1539 	.db #0x48	; 72	'H'
      0009D9 15                    1540 	.db #0x15	; 21
      0009DA 98                    1541 	.db #0x98	; 152
      0009DB 09                    1542 	.db #0x09	; 9
      0009DC D8                    1543 	.db #0xd8	; 216
      0009DD BD                    1544 	.db #0xbd	; 189
      0009DE 08                    1545 	.db #0x08	; 8
      0009DF 11                    1546 	.db #0x11	; 17
      0009E0 50                    1547 	.db #0x50	; 80	'P'
      0009E1 24                    1548 	.db #0x24	; 36
      0009E2 B0                    1549 	.db #0xb0	; 176
      0009E3 8A                    1550 	.db #0x8a	; 138
      0009E4 98                    1551 	.db #0x98	; 152
      0009E5 48                    1552 	.db #0x48	; 72	'H'
      0009E6 54                    1553 	.db #0x54	; 84	'T'
      0009E7 B0                    1554 	.db #0xb0	; 176
      0009E8 8A                    1555 	.db #0x8a	; 138
      0009E9 A0                    1556 	.db #0xa0	; 160
      0009EA CC                    1557 	.db #0xcc	; 204
      0009EB 0B                    1558 	.db #0x0b	; 11
      0009EC 31                    1559 	.db #0x31	; 49	'1'
      0009ED 31                    1560 	.db #0x31	; 49	'1'
      0009EE 26                    1561 	.db #0x26	; 38
      0009EF B0                    1562 	.db #0xb0	; 176
      0009F0 0B                    1563 	.db #0x0b	; 11
      0009F1 00                    1564 	.db #0x00	; 0
      0009F2 09                    1565 	.db #0x09	; 9
      0009F3 37                    1566 	.db #0x37	; 55	'7'
      0009F4 92                    1567 	.db #0x92	; 146
      0009F5 AB                    1568 	.db #0xab	; 171
      0009F6 AB                    1569 	.db #0xab	; 171
      0009F7 DC                    1570 	.db #0xdc	; 220
      0009F8 8C                    1571 	.db #0x8c	; 140
      0009F9 22                    1572 	.db #0x22	; 34
      0009FA 43                    1573 	.db #0x43	; 67	'C'
      0009FB 14                    1574 	.db #0x14	; 20
      0009FC BA                    1575 	.db #0xba	; 186
      0009FD 8A                    1576 	.db #0x8a	; 138
      0009FE 00                    1577 	.db #0x00	; 0
      0009FF 43                    1578 	.db #0x43	; 67	'C'
      000A00 15                    1579 	.db #0x15	; 21
      000A01 98                    1580 	.db #0x98	; 152
      000A02 9A                    1581 	.db #0x9a	; 154
      000A03 CB                    1582 	.db #0xcb	; 203
      000A04 9C                    1583 	.db #0x9c	; 156
      000A05 BD                    1584 	.db #0xbd	; 189
      000A06 52                    1585 	.db #0x52	; 82	'R'
      000A07 13                    1586 	.db #0x13	; 19
      000A08 30                    1587 	.db #0x30	; 48	'0'
      000A09 C1                    1588 	.db #0xc1	; 193
      000A0A 9D                    1589 	.db #0x9d	; 157
      000A0B 21                    1590 	.db #0x21	; 33
      000A0C 11                    1591 	.db #0x11	; 17
      000A0D 51                    1592 	.db #0x51	; 81	'Q'
      000A0E A0                    1593 	.db #0xa0	; 160
      000A0F 9B                    1594 	.db #0x9b	; 155
      000A10 A0                    1595 	.db #0xa0	; 160
      000A11 CB                    1596 	.db #0xcb	; 203
      000A12 BC                    1597 	.db #0xbc	; 188
      000A13 32                    1598 	.db #0x32	; 50	'2'
      000A14 27                    1599 	.db #0x27	; 39
      000A15 00                    1600 	.db #0x00	; 0
      000A16 99                    1601 	.db #0x99	; 153
      000A17 AA                    1602 	.db #0xaa	; 170
      000A18 20                    1603 	.db #0x20	; 32
      000A19 16                    1604 	.db #0x16	; 22
      000A1A 11                    1605 	.db #0x11	; 17
      000A1B 81                    1606 	.db #0x81	; 129
      000A1C CB                    1607 	.db #0xcb	; 203
      000A1D 89                    1608 	.db #0x89	; 137
      000A1E CA                    1609 	.db #0xca	; 202
      000A1F BE                    1610 	.db #0xbe	; 190
      000A20 22                    1611 	.db #0x22	; 34
      000A21 33                    1612 	.db #0x33	; 51	'3'
      000A22 25                    1613 	.db #0x25	; 37
      000A23 BB                    1614 	.db #0xbb	; 187
      000A24 9B                    1615 	.db #0x9b	; 155
      000A25 30                    1616 	.db #0x30	; 48	'0'
      000A26 36                    1617 	.db #0x36	; 54	'6'
      000A27 01                    1618 	.db #0x01	; 1
      000A28 00                    1619 	.db #0x00	; 0
      000A29 AD                    1620 	.db #0xad	; 173
      000A2A 08                    1621 	.db #0x08	; 8
      000A2B E9                    1622 	.db #0xe9	; 233
      000A2C CA                    1623 	.db #0xca	; 202
      000A2D 48                    1624 	.db #0x48	; 72	'H'
      000A2E 21                    1625 	.db #0x21	; 33
      000A2F 42                    1626 	.db #0x42	; 66	'B'
      000A30 D8                    1627 	.db #0xd8	; 216
      000A31 8A                    1628 	.db #0x8a	; 138
      000A32 10                    1629 	.db #0x10	; 16
      000A33 42                    1630 	.db #0x42	; 66	'B'
      000A34 82                    1631 	.db #0x82	; 130
      000A35 88                    1632 	.db #0x88	; 136
      000A36 98                    1633 	.db #0x98	; 152
      000A37 8B                    1634 	.db #0x8b	; 139
      000A38 BA                    1635 	.db #0xba	; 186
      000A39 EF                    1636 	.db #0xef	; 239
      000A3A 10                    1637 	.db #0x10	; 16
      000A3B 03                    1638 	.db #0x03	; 3
      000A3C 41                    1639 	.db #0x41	; 65	'A'
      000A3D A8                    1640 	.db #0xa8	; 168
      000A3E 9B                    1641 	.db #0x9b	; 155
      000A3F 10                    1642 	.db #0x10	; 16
      000A40 34                    1643 	.db #0x34	; 52	'4'
      000A41 03                    1644 	.db #0x03	; 3
      000A42 98                    1645 	.db #0x98	; 152
      000A43 99                    1646 	.db #0x99	; 153
      000A44 AB                    1647 	.db #0xab	; 171
      000A45 C9                    1648 	.db #0xc9	; 201
      000A46 EF                    1649 	.db #0xef	; 239
      000A47 10                    1650 	.db #0x10	; 16
      000A48 20                    1651 	.db #0x20	; 32
      000A49 24                    1652 	.db #0x24	; 36
      000A4A 99                    1653 	.db #0x99	; 153
      000A4B AA                    1654 	.db #0xaa	; 170
      000A4C 3A                    1655 	.db #0x3a	; 58
      000A4D 25                    1656 	.db #0x25	; 37
      000A4E 31                    1657 	.db #0x31	; 49	'1'
      000A4F 98                    1658 	.db #0x98	; 152
      000A50 8C                    1659 	.db #0x8c	; 140
      000A51 A8                    1660 	.db #0xa8	; 168
      000A52 A9                    1661 	.db #0xa9	; 169
      000A53 FB                    1662 	.db #0xfb	; 251
      000A54 2D                    1663 	.db #0x2d	; 45
      000A55 10                    1664 	.db #0x10	; 16
      000A56 72                    1665 	.db #0x72	; 114	'r'
      000A57 98                    1666 	.db #0x98	; 152
      000A58 98                    1667 	.db #0x98	; 152
      000A59 89                    1668 	.db #0x89	; 137
      000A5A 24                    1669 	.db #0x24	; 36
      000A5B 10                    1670 	.db #0x10	; 16
      000A5C 02                    1671 	.db #0x02	; 2
      000A5D DA                    1672 	.db #0xda	; 218
      000A5E 80                    1673 	.db #0x80	; 128
      000A5F 9A                    1674 	.db #0x9a	; 154
      000A60 DB                    1675 	.db #0xdb	; 219
      000A61 2A                    1676 	.db #0x2a	; 42
      000A62 02                    1677 	.db #0x02	; 2
      000A63 54                    1678 	.db #0x54	; 84	'T'
      000A64 A0                    1679 	.db #0xa0	; 160
      000A65 89                    1680 	.db #0x89	; 137
      000A66 89                    1681 	.db #0x89	; 137
      000A67 44                    1682 	.db #0x44	; 68	'D'
      000A68 11                    1683 	.db #0x11	; 17
      000A69 91                    1684 	.db #0x91	; 145
      000A6A AA                    1685 	.db #0xaa	; 170
      000A6B B9                    1686 	.db #0xb9	; 185
      000A6C B0                    1687 	.db #0xb0	; 176
      000A6D EF                    1688 	.db #0xef	; 239
      000A6E 10                    1689 	.db #0x10	; 16
      000A6F 39                    1690 	.db #0x39	; 57	'9'
      000A70 24                    1691 	.db #0x24	; 36
      000A71 89                    1692 	.db #0x89	; 137
      000A72 D0                    1693 	.db #0xd0	; 208
      000A73 29                    1694 	.db #0x29	; 41
      000A74 22                    1695 	.db #0x22	; 34
      000A75 33                    1696 	.db #0x33	; 51	'3'
      000A76 8A                    1697 	.db #0x8a	; 138
      000A77 9A                    1698 	.db #0x9a	; 154
      000A78 9E                    1699 	.db #0x9e	; 158
      000A79 C1                    1700 	.db #0xc1	; 193
      000A7A BC                    1701 	.db #0xbc	; 188
      000A7B 82                    1702 	.db #0x82	; 130
      000A7C 50                    1703 	.db #0x50	; 80	'P'
      000A7D 13                    1704 	.db #0x13	; 19
      000A7E 80                    1705 	.db #0x80	; 128
      000A7F CB                    1706 	.db #0xcb	; 203
      000A80 11                    1707 	.db #0x11	; 17
      000A81 42                    1708 	.db #0x42	; 66	'B'
      000A82 06                    1709 	.db #0x06	; 6
      000A83 88                    1710 	.db #0x88	; 136
      000A84 A9                    1711 	.db #0xa9	; 169
      000A85 0B                    1712 	.db #0x0b	; 11
      000A86 C9                    1713 	.db #0xc9	; 201
      000A87 AD                    1714 	.db #0xad	; 173
      000A88 82                    1715 	.db #0x82	; 130
      000A89 50                    1716 	.db #0x50	; 80	'P'
      000A8A 23                    1717 	.db #0x23	; 35
      000A8B 0A                    1718 	.db #0x0a	; 10
      000A8C DA                    1719 	.db #0xda	; 218
      000A8D 28                    1720 	.db #0x28	; 40
      000A8E 24                    1721 	.db #0x24	; 36
      000A8F 23                    1722 	.db #0x23	; 35
      000A90 B8                    1723 	.db #0xb8	; 184
      000A91 C9                    1724 	.db #0xc9	; 201
      000A92 AA                    1725 	.db #0xaa	; 170
      000A93 B8                    1726 	.db #0xb8	; 184
      000A94 AF                    1727 	.db #0xaf	; 175
      000A95 80                    1728 	.db #0x80	; 128
      000A96 62                    1729 	.db #0x62	; 98	'b'
      000A97 83                    1730 	.db #0x83	; 131
      000A98 81                    1731 	.db #0x81	; 129
      000A99 BC                    1732 	.db #0xbc	; 188
      000A9A 83                    1733 	.db #0x83	; 131
      000A9B 62                    1734 	.db #0x62	; 98	'b'
      000A9C 83                    1735 	.db #0x83	; 131
      000A9D 00                    1736 	.db #0x00	; 0
      000A9E AD                    1737 	.db #0xad	; 173
      000A9F 98                    1738 	.db #0x98	; 152
      000AA0 8A                    1739 	.db #0x8a	; 138
      000AA1 9D                    1740 	.db #0x9d	; 157
      000AA2 91                    1741 	.db #0x91	; 145
      000AA3 62                    1742 	.db #0x62	; 98	'b'
      000AA4 02                    1743 	.db #0x02	; 2
      000AA5 80                    1744 	.db #0x80	; 128
      000AA6 8C                    1745 	.db #0x8c	; 140
      000AA7 18                    1746 	.db #0x18	; 24
      000AA8 62                    1747 	.db #0x62	; 98	'b'
      000AA9 01                    1748 	.db #0x01	; 1
      000AAA A1                    1749 	.db #0xa1	; 161
      000AAB AA                    1750 	.db #0xaa	; 170
      000AAC B9                    1751 	.db #0xb9	; 185
      000AAD C9                    1752 	.db #0xc9	; 201
      000AAE 1E                    1753 	.db #0x1e	; 30
      000AAF 89                    1754 	.db #0x89	; 137
      000AB0 15                    1755 	.db #0x15	; 21
      000AB1 02                    1756 	.db #0x02	; 2
      000AB2 81                    1757 	.db #0x81	; 129
      000AB3 0D                    1758 	.db #0x0d	; 13
      000AB4 08                    1759 	.db #0x08	; 8
      000AB5 43                    1760 	.db #0x43	; 67	'C'
      000AB6 01                    1761 	.db #0x01	; 1
      000AB7 A2                    1762 	.db #0xa2	; 162
      000AB8 9D                    1763 	.db #0x9d	; 157
      000AB9 B9                    1764 	.db #0xb9	; 185
      000ABA BA                    1765 	.db #0xba	; 186
      000ABB 1C                    1766 	.db #0x1c	; 28
      000ABC 29                    1767 	.db #0x29	; 41
      000ABD 27                    1768 	.db #0x27	; 39
      000ABE 10                    1769 	.db #0x10	; 16
      000ABF B1                    1770 	.db #0xb1	; 177
      000AC0 1A                    1771 	.db #0x1a	; 26
      000AC1 29                    1772 	.db #0x29	; 41
      000AC2 27                    1773 	.db #0x27	; 39
      000AC3 10                    1774 	.db #0x10	; 16
      000AC4 C0                    1775 	.db #0xc0	; 192
      000AC5 99                    1776 	.db #0x99	; 153
      000AC6 9C                    1777 	.db #0x9c	; 156
      000AC7 EA                    1778 	.db #0xea	; 234
      000AC8 81                    1779 	.db #0x81	; 129
      000AC9 4A                    1780 	.db #0x4a	; 74	'J'
      000ACA 12                    1781 	.db #0x12	; 18
      000ACB 21                    1782 	.db #0x21	; 33
      000ACC AA                    1783 	.db #0xaa	; 170
      000ACD B2                    1784 	.db #0xb2	; 178
      000ACE 60                    1785 	.db #0x60	; 96
      000ACF 69                    1786 	.db #0x69	; 105	'i'
      000AD0 1D                    1787 	.db #0x1d	; 29
      000AD1 49                    1788 	.db #0x49	; 73	'I'
      000AD2 31                    1789 	.db #0x31	; 49	'1'
      000AD3 90                    1790 	.db #0x90	; 144
      000AD4 AA                    1791 	.db #0xaa	; 170
      000AD5 CC                    1792 	.db #0xcc	; 204
      000AD6 C9                    1793 	.db #0xc9	; 201
      000AD7 2C                    1794 	.db #0x2c	; 44
      000AD8 1C                    1795 	.db #0x1c	; 28
      000AD9 14                    1796 	.db #0x14	; 20
      000ADA 21                    1797 	.db #0x21	; 33
      000ADB A1                    1798 	.db #0xa1	; 161
      000ADC 88                    1799 	.db #0x88	; 136
      000ADD 1A                    1800 	.db #0x1a	; 26
      000ADE 15                    1801 	.db #0x15	; 21
      000ADF 33                    1802 	.db #0x33	; 51	'3'
      000AE0 A0                    1803 	.db #0xa0	; 160
      000AE1 E9                    1804 	.db #0xe9	; 233
      000AE2 9C                    1805 	.db #0x9c	; 156
      000AE3 DB                    1806 	.db #0xdb	; 219
      000AE4 18                    1807 	.db #0x18	; 24
      000AE5 3B                    1808 	.db #0x3b	; 59
      000AE6 06                    1809 	.db #0x06	; 6
      000AE7 21                    1810 	.db #0x21	; 33
      000AE8 A8                    1811 	.db #0xa8	; 168
      000AE9 91                    1812 	.db #0x91	; 145
      000AEA 5A                    1813 	.db #0x5a	; 90	'Z'
      000AEB 01                    1814 	.db #0x01	; 1
      000AEC 05                    1815 	.db #0x05	; 5
      000AED 08                    1816 	.db #0x08	; 8
      000AEE D9                    1817 	.db #0xd9	; 217
      000AEF 99                    1818 	.db #0x99	; 153
      000AF0 AC                    1819 	.db #0xac	; 172
      000AF1 90                    1820 	.db #0x90	; 144
      000AF2 6B                    1821 	.db #0x6b	; 107	'k'
      000AF3 01                    1822 	.db #0x01	; 1
      000AF4 22                    1823 	.db #0x22	; 34
      000AF5 08                    1824 	.db #0x08	; 8
      000AF6 B0                    1825 	.db #0xb0	; 176
      000AF7 30                    1826 	.db #0x30	; 48	'0'
      000AF8 00                    1827 	.db #0x00	; 0
      000AF9 17                    1828 	.db #0x17	; 23
      000AFA 00                    1829 	.db #0x00	; 0
      000AFB C8                    1830 	.db #0xc8	; 200
      000AFC C9                    1831 	.db #0xc9	; 201
      000AFD BC                    1832 	.db #0xbc	; 188
      000AFE C0                    1833 	.db #0xc0	; 192
      000AFF 38                    1834 	.db #0x38	; 56	'8'
      000B00 30                    1835 	.db #0x30	; 48	'0'
      000B01 15                    1836 	.db #0x15	; 21
      000B02 28                    1837 	.db #0x28	; 40
      000B03 B8                    1838 	.db #0xb8	; 184
      000B04 21                    1839 	.db #0x21	; 33
      000B05 39                    1840 	.db #0x39	; 57	'9'
      000B06 87                    1841 	.db #0x87	; 135
      000B07 11                    1842 	.db #0x11	; 17
      000B08 9A                    1843 	.db #0x9a	; 154
      000B09 D9                    1844 	.db #0xd9	; 217
      000B0A BC                    1845 	.db #0xbc	; 188
      000B0B 9A                    1846 	.db #0x9a	; 154
      000B0C 2B                    1847 	.db #0x2b	; 43
      000B0D 33                    1848 	.db #0x33	; 51	'3'
      000B0E 45                    1849 	.db #0x45	; 69	'E'
      000B0F 80                    1850 	.db #0x80	; 128
      000B10 A2                    1851 	.db #0xa2	; 162
      000B11 38                    1852 	.db #0x38	; 56	'8'
      000B12 29                    1853 	.db #0x29	; 41
      000B13 06                    1854 	.db #0x06	; 6
      000B14 20                    1855 	.db #0x20	; 32
      000B15 C0                    1856 	.db #0xc0	; 192
      000B16 B8                    1857 	.db #0xb8	; 184
      000B17 AF                    1858 	.db #0xaf	; 175
      000B18 8B                    1859 	.db #0x8b	; 139
      000B19 1D                    1860 	.db #0x1d	; 29
      000B1A 81                    1861 	.db #0x81	; 129
      000B1B 24                    1862 	.db #0x24	; 36
      000B1C 20                    1863 	.db #0x20	; 32
      000B1D 91                    1864 	.db #0x91	; 145
      000B1E 20                    1865 	.db #0x20	; 32
      000B1F 3B                    1866 	.db #0x3b	; 59
      000B20 12                    1867 	.db #0x12	; 18
      000B21 52                    1868 	.db #0x52	; 82	'R'
      000B22 09                    1869 	.db #0x09	; 9
      000B23 F0                    1870 	.db #0xf0	; 240
      000B24 BA                    1871 	.db #0xba	; 186
      000B25 8F                    1872 	.db #0x8f	; 143
      000B26 A9                    1873 	.db #0xa9	; 169
      000B27 01                    1874 	.db #0x01	; 1
      000B28 32                    1875 	.db #0x32	; 50	'2'
      000B29 12                    1876 	.db #0x12	; 18
      000B2A 95                    1877 	.db #0x95	; 149
      000B2B 20                    1878 	.db #0x20	; 32
      000B2C 1A                    1879 	.db #0x1a	; 26
      000B2D 21                    1880 	.db #0x21	; 33
      000B2E 58                    1881 	.db #0x58	; 88	'X'
      000B2F 18                    1882 	.db #0x18	; 24
      000B30 A8                    1883 	.db #0xa8	; 168
      000B31 CC                    1884 	.db #0xcc	; 204
      000B32 BD                    1885 	.db #0xbd	; 189
      000B33 C9                    1886 	.db #0xc9	; 201
      000B34 19                    1887 	.db #0x19	; 25
      000B35 20                    1888 	.db #0x20	; 32
      000B36 16                    1889 	.db #0x16	; 22
      000B37 21                    1890 	.db #0x21	; 33
      000B38 08                    1891 	.db #0x08	; 8
      000B39 81                    1892 	.db #0x81	; 129
      000B3A 20                    1893 	.db #0x20	; 32
      000B3B 20                    1894 	.db #0x20	; 32
      000B3C 83                    1895 	.db #0x83	; 131
      000B3D B3                    1896 	.db #0xb3	; 179
      000B3E CC                    1897 	.db #0xcc	; 204
      000B3F CE                    1898 	.db #0xce	; 206
      000B40 AB                    1899 	.db #0xab	; 171
      000B41 9C                    1900 	.db #0x9c	; 156
      000B42 10                    1901 	.db #0x10	; 16
      000B43 52                    1902 	.db #0x52	; 82	'R'
      000B44 31                    1903 	.db #0x31	; 49	'1'
      000B45 12                    1904 	.db #0x12	; 18
      000B46 11                    1905 	.db #0x11	; 17
      000B47 19                    1906 	.db #0x19	; 25
      000B48 A3                    1907 	.db #0xa3	; 163
      000B49 15                    1908 	.db #0x15	; 21
      000B4A 18                    1909 	.db #0x18	; 24
      000B4B F1                    1910 	.db #0xf1	; 241
      000B4C A9                    1911 	.db #0xa9	; 169
      000B4D 9F                    1912 	.db #0x9f	; 159
      000B4E BA                    1913 	.db #0xba	; 186
      000B4F 08                    1914 	.db #0x08	; 8
      000B50 48                    1915 	.db #0x48	; 72	'H'
      000B51 22                    1916 	.db #0x22	; 34
      000B52 13                    1917 	.db #0x13	; 19
      000B53 22                    1918 	.db #0x22	; 34
      000B54 28                    1919 	.db #0x28	; 40
      000B55 01                    1920 	.db #0x01	; 1
      000B56 03                    1921 	.db #0x03	; 3
      000B57 71                    1922 	.db #0x71	; 113	'q'
      000B58 0A                    1923 	.db #0x0a	; 10
      000B59 D9                    1924 	.db #0xd9	; 217
      000B5A CB                    1925 	.db #0xcb	; 203
      000B5B 9D                    1926 	.db #0x9d	; 157
      000B5C 9C                    1927 	.db #0x9c	; 156
      000B5D 80                    1928 	.db #0x80	; 128
      000B5E 42                    1929 	.db #0x42	; 66	'B'
      000B5F 21                    1930 	.db #0x21	; 33
      000B60 84                    1931 	.db #0x84	; 132
      000B61 21                    1932 	.db #0x21	; 33
      000B62 19                    1933 	.db #0x19	; 25
      000B63 A3                    1934 	.db #0xa3	; 163
      000B64 04                    1935 	.db #0x04	; 4
      000B65 10                    1936 	.db #0x10	; 16
      000B66 89                    1937 	.db #0x89	; 137
      000B67 DB                    1938 	.db #0xdb	; 219
      000B68 FB                    1939 	.db #0xfb	; 251
      000B69 9B                    1940 	.db #0x9b	; 155
      000B6A 8E                    1941 	.db #0x8e	; 142
      000B6B 80                    1942 	.db #0x80	; 128
      000B6C 22                    1943 	.db #0x22	; 34
      000B6D 22                    1944 	.db #0x22	; 34
      000B6E 84                    1945 	.db #0x84	; 132
      000B6F 83                    1946 	.db #0x83	; 131
      000B70 02                    1947 	.db #0x02	; 2
      000B71 00                    1948 	.db #0x00	; 0
      000B72 82                    1949 	.db #0x82	; 130
      000B73 31                    1950 	.db #0x31	; 49	'1'
      000B74 2D                    1951 	.db #0x2d	; 45
      000B75 CC                    1952 	.db #0xcc	; 204
      000B76 BB                    1953 	.db #0xbb	; 187
      000B77 9F                    1954 	.db #0x9f	; 159
      000B78 9B                    1955 	.db #0x9b	; 155
      000B79 88                    1956 	.db #0x88	; 136
      000B7A 42                    1957 	.db #0x42	; 66	'B'
      000B7B 42                    1958 	.db #0x42	; 66	'B'
      000B7C 12                    1959 	.db #0x12	; 18
      000B7D 04                    1960 	.db #0x04	; 4
      000B7E 10                    1961 	.db #0x10	; 16
      000B7F 88                    1962 	.db #0x88	; 136
      000B80 A3                    1963 	.db #0xa3	; 163
      000B81 02                    1964 	.db #0x02	; 2
      000B82 2A                    1965 	.db #0x2a	; 42
      000B83 BC                    1966 	.db #0xbc	; 188
      000B84 ED                    1967 	.db #0xed	; 237
      000B85 AB                    1968 	.db #0xab	; 171
      000B86 8E                    1969 	.db #0x8e	; 142
      000B87 89                    1970 	.db #0x89	; 137
      000B88 32                    1971 	.db #0x32	; 50	'2'
      000B89 60                    1972 	.db #0x60	; 96
      000B8A 01                    1973 	.db #0x01	; 1
      000B8B 94                    1974 	.db #0x94	; 148
      000B8C 82                    1975 	.db #0x82	; 130
      000B8D 80                    1976 	.db #0x80	; 128
      000B8E 00                    1977 	.db #0x00	; 0
      000B8F 38                    1978 	.db #0x38	; 56	'8'
      000B90 1A                    1979 	.db #0x1a	; 26
      000B91 A9                    1980 	.db #0xa9	; 169
      000B92 FB                    1981 	.db #0xfb	; 251
      000B93 9C                    1982 	.db #0x9c	; 156
      000B94 8E                    1983 	.db #0x8e	; 142
      000B95 8A                    1984 	.db #0x8a	; 138
      000B96 01                    1985 	.db #0x01	; 1
      000B97 23                    1986 	.db #0x23	; 35
      000B98 14                    1987 	.db #0x14	; 20
      000B99 23                    1988 	.db #0x23	; 35
      000B9A 30                    1989 	.db #0x30	; 48	'0'
      000B9B 2A                    1990 	.db #0x2a	; 42
      000B9C 90                    1991 	.db #0x90	; 144
      000B9D 21                    1992 	.db #0x21	; 33
      000B9E 4A                    1993 	.db #0x4a	; 74	'J'
      000B9F 9A                    1994 	.db #0x9a	; 154
      000BA0 FA                    1995 	.db #0xfa	; 250
      000BA1 DC                    1996 	.db #0xdc	; 220
      000BA2 D9                    1997 	.db #0xd9	; 217
      000BA3 99                    1998 	.db #0x99	; 153
      000BA4 18                    1999 	.db #0x18	; 24
      000BA5 22                    2000 	.db #0x22	; 34
      000BA6 33                    2001 	.db #0x33	; 51	'3'
      000BA7 43                    2002 	.db #0x43	; 67	'C'
      000BA8 11                    2003 	.db #0x11	; 17
      000BA9 82                    2004 	.db #0x82	; 130
      000BAA 11                    2005 	.db #0x11	; 17
      000BAB 29                    2006 	.db #0x29	; 41
      000BAC 92                    2007 	.db #0x92	; 146
      000BAD 93                    2008 	.db #0x93	; 147
      000BAE AD                    2009 	.db #0xad	; 173
      000BAF CF                    2010 	.db #0xcf	; 207
      000BB0 AC                    2011 	.db #0xac	; 172
      000BB1 9D                    2012 	.db #0x9d	; 157
      000BB2 A8                    2013 	.db #0xa8	; 168
      000BB3 12                    2014 	.db #0x12	; 18
      000BB4 52                    2015 	.db #0x52	; 82	'R'
      000BB5 12                    2016 	.db #0x12	; 18
      000BB6 84                    2017 	.db #0x84	; 132
      000BB7 12                    2018 	.db #0x12	; 18
      000BB8 00                    2019 	.db #0x00	; 0
      000BB9 00                    2020 	.db #0x00	; 0
      000BBA 38                    2021 	.db #0x38	; 56	'8'
      000BBB 2A                    2022 	.db #0x2a	; 42
      000BBC B8                    2023 	.db #0xb8	; 184
      000BBD FB                    2024 	.db #0xfb	; 251
      000BBE BC                    2025 	.db #0xbc	; 188
      000BBF CC                    2026 	.db #0xcc	; 204
      000BC0 9B                    2027 	.db #0x9b	; 155
      000BC1 89                    2028 	.db #0x89	; 137
      000BC2 23                    2029 	.db #0x23	; 35
      000BC3 54                    2030 	.db #0x54	; 84	'T'
      000BC4 31                    2031 	.db #0x31	; 49	'1'
      000BC5 12                    2032 	.db #0x12	; 18
      000BC6 02                    2033 	.db #0x02	; 2
      000BC7 12                    2034 	.db #0x12	; 18
      000BC8 18                    2035 	.db #0x18	; 24
      000BC9 A2                    2036 	.db #0xa2	; 162
      000BCA B5                    2037 	.db #0xb5	; 181
      000BCB A0                    2038 	.db #0xa0	; 160
      000BCC AD                    2039 	.db #0xad	; 173
      000BCD BF                    2040 	.db #0xbf	; 191
      000BCE 47                    2041 	.db #0x47	; 71	'G'
      000BCF E2                    2042 	.db #0xe2	; 226
      000BD0 44                    2043 	.db #0x44	; 68	'D'
      000BD1 AC                    2044 	.db #0xac	; 172
      000BD2 99                    2045 	.db #0x99	; 153
      000BD3 21                    2046 	.db #0x21	; 33
      000BD4 71                    2047 	.db #0x71	; 113	'q'
      000BD5 21                    2048 	.db #0x21	; 33
      000BD6 21                    2049 	.db #0x21	; 33
      000BD7 21                    2050 	.db #0x21	; 33
      000BD8 00                    2051 	.db #0x00	; 0
      000BD9 B3                    2052 	.db #0xb3	; 179
      000BDA 84                    2053 	.db #0x84	; 132
      000BDB 00                    2054 	.db #0x00	; 0
      000BDC A8                    2055 	.db #0xa8	; 168
      000BDD DA                    2056 	.db #0xda	; 218
      000BDE BC                    2057 	.db #0xbc	; 188
      000BDF BE                    2058 	.db #0xbe	; 190
      000BE0 CB                    2059 	.db #0xcb	; 203
      000BE1 98                    2060 	.db #0x98	; 152
      000BE2 11                    2061 	.db #0x11	; 17
      000BE3 52                    2062 	.db #0x52	; 82	'R'
      000BE4 41                    2063 	.db #0x41	; 65	'A'
      000BE5 31                    2064 	.db #0x31	; 49	'1'
      000BE6 12                    2065 	.db #0x12	; 18
      000BE7 12                    2066 	.db #0x12	; 18
      000BE8 20                    2067 	.db #0x20	; 32
      000BE9 5A                    2068 	.db #0x5a	; 90	'Z'
      000BEA 3B                    2069 	.db #0x3b	; 59
      000BEB 8B                    2070 	.db #0x8b	; 139
      000BEC EA                    2071 	.db #0xea	; 234
      000BED CA                    2072 	.db #0xca	; 202
      000BEE EB                    2073 	.db #0xeb	; 235
      000BEF C9                    2074 	.db #0xc9	; 201
      000BF0 A0                    2075 	.db #0xa0	; 160
      000BF1 02                    2076 	.db #0x02	; 2
      000BF2 41                    2077 	.db #0x41	; 65	'A'
      000BF3 40                    2078 	.db #0x40	; 64
      000BF4 21                    2079 	.db #0x21	; 33
      000BF5 32                    2080 	.db #0x32	; 50	'2'
      000BF6 30                    2081 	.db #0x30	; 48	'0'
      000BF7 29                    2082 	.db #0x29	; 41
      000BF8 90                    2083 	.db #0x90	; 144
      000BF9 C3                    2084 	.db #0xc3	; 195
      000BFA 98                    2085 	.db #0x98	; 152
      000BFB AC                    2086 	.db #0xac	; 172
      000BFC CD                    2087 	.db #0xcd	; 205
      000BFD AC                    2088 	.db #0xac	; 172
      000BFE 9D                    2089 	.db #0x9d	; 157
      000BFF 8A                    2090 	.db #0x8a	; 138
      000C00 81                    2091 	.db #0x81	; 129
      000C01 14                    2092 	.db #0x14	; 20
      000C02 24                    2093 	.db #0x24	; 36
      000C03 32                    2094 	.db #0x32	; 50	'2'
      000C04 13                    2095 	.db #0x13	; 19
      000C05 03                    2096 	.db #0x03	; 3
      000C06 01                    2097 	.db #0x01	; 1
      000C07 18                    2098 	.db #0x18	; 24
      000C08 08                    2099 	.db #0x08	; 8
      000C09 B8                    2100 	.db #0xb8	; 184
      000C0A CC                    2101 	.db #0xcc	; 204
      000C0B BE                    2102 	.db #0xbe	; 190
      000C0C CD                    2103 	.db #0xcd	; 205
      000C0D BB                    2104 	.db #0xbb	; 187
      000C0E 9A                    2105 	.db #0x9a	; 154
      000C0F 20                    2106 	.db #0x20	; 32
      000C10 72                    2107 	.db #0x72	; 114	'r'
      000C11 31                    2108 	.db #0x31	; 49	'1'
      000C12 31                    2109 	.db #0x31	; 49	'1'
      000C13 31                    2110 	.db #0x31	; 49	'1'
      000C14 31                    2111 	.db #0x31	; 49	'1'
      000C15 18                    2112 	.db #0x18	; 24
      000C16 81                    2113 	.db #0x81	; 129
      000C17 93                    2114 	.db #0x93	; 147
      000C18 A0                    2115 	.db #0xa0	; 160
      000C19 FB                    2116 	.db #0xfb	; 251
      000C1A EB                    2117 	.db #0xeb	; 235
      000C1B DB                    2118 	.db #0xdb	; 219
      000C1C CA                    2119 	.db #0xca	; 202
      000C1D 89                    2120 	.db #0x89	; 137
      000C1E 4A                    2121 	.db #0x4a	; 74	'J'
      000C1F 20                    2122 	.db #0x20	; 32
      000C20 04                    2123 	.db #0x04	; 4
      000C21 13                    2124 	.db #0x13	; 19
      000C22 22                    2125 	.db #0x22	; 34
      000C23 83                    2126 	.db #0x83	; 131
      000C24 84                    2127 	.db #0x84	; 132
      000C25 21                    2128 	.db #0x21	; 33
      000C26 3A                    2129 	.db #0x3a	; 58
      000C27 A8                    2130 	.db #0xa8	; 168
      000C28 D9                    2131 	.db #0xd9	; 217
      000C29 AC                    2132 	.db #0xac	; 172
      000C2A AE                    2133 	.db #0xae	; 174
      000C2B 9D                    2134 	.db #0x9d	; 157
      000C2C 8C                    2135 	.db #0x8c	; 140
      000C2D 88                    2136 	.db #0x88	; 136
      000C2E 83                    2137 	.db #0x83	; 131
      000C2F 15                    2138 	.db #0x15	; 21
      000C30 31                    2139 	.db #0x31	; 49	'1'
      000C31 30                    2140 	.db #0x30	; 48	'0'
      000C32 12                    2141 	.db #0x12	; 18
      000C33 02                    2142 	.db #0x02	; 2
      000C34 93                    2143 	.db #0x93	; 147
      000C35 83                    2144 	.db #0x83	; 131
      000C36 08                    2145 	.db #0x08	; 8
      000C37 9D                    2146 	.db #0x9d	; 157
      000C38 CC                    2147 	.db #0xcc	; 204
      000C39 CB                    2148 	.db #0xcb	; 203
      000C3A 9E                    2149 	.db #0x9e	; 158
      000C3B 9C                    2150 	.db #0x9c	; 156
      000C3C 99                    2151 	.db #0x99	; 153
      000C3D 93                    2152 	.db #0x93	; 147
      000C3E 06                    2153 	.db #0x06	; 6
      000C3F 22                    2154 	.db #0x22	; 34
      000C40 31                    2155 	.db #0x31	; 49	'1'
      000C41 20                    2156 	.db #0x20	; 32
      000C42 12                    2157 	.db #0x12	; 18
      000C43 48                    2158 	.db #0x48	; 72	'H'
      000C44 29                    2159 	.db #0x29	; 41
      000C45 B0                    2160 	.db #0xb0	; 176
      000C46 D4                    2161 	.db #0xd4	; 212
      000C47 A8                    2162 	.db #0xa8	; 168
      000C48 AB                    2163 	.db #0xab	; 171
      000C49 AE                    2164 	.db #0xae	; 174
      000C4A BC                    2165 	.db #0xbc	; 188
      000C4B 8A                    2166 	.db #0x8a	; 138
      000C4C 29                    2167 	.db #0x29	; 41
      000C4D 42                    2168 	.db #0x42	; 66	'B'
      000C4E 33                    2169 	.db #0x33	; 51	'3'
      000C4F 14                    2170 	.db #0x14	; 20
      000C50 14                    2171 	.db #0x14	; 20
      000C51 22                    2172 	.db #0x22	; 34
      000C52 48                    2173 	.db #0x48	; 72	'H'
      000C53 18                    2174 	.db #0x18	; 24
      000C54 80                    2175 	.db #0x80	; 128
      000C55 A0                    2176 	.db #0xa0	; 160
      000C56 BA                    2177 	.db #0xba	; 186
      000C57 BD                    2178 	.db #0xbd	; 189
      000C58 CD                    2179 	.db #0xcd	; 205
      000C59 BC                    2180 	.db #0xbc	; 188
      000C5A BB                    2181 	.db #0xbb	; 187
      000C5B 88                    2182 	.db #0x88	; 136
      000C5C 42                    2183 	.db #0x42	; 66	'B'
      000C5D 33                    2184 	.db #0x33	; 51	'3'
      000C5E 25                    2185 	.db #0x25	; 37
      000C5F 33                    2186 	.db #0x33	; 51	'3'
      000C60 22                    2187 	.db #0x22	; 34
      000C61 12                    2188 	.db #0x12	; 18
      000C62 03                    2189 	.db #0x03	; 3
      000C63 02                    2190 	.db #0x02	; 2
      000C64 98                    2191 	.db #0x98	; 152
      000C65 CB                    2192 	.db #0xcb	; 203
      000C66 EC                    2193 	.db #0xec	; 236
      000C67 CA                    2194 	.db #0xca	; 202
      000C68 BD                    2195 	.db #0xbd	; 189
      000C69 9D                    2196 	.db #0x9d	; 157
      000C6A 9A                    2197 	.db #0x9a	; 154
      000C6B 10                    2198 	.db #0x10	; 16
      000C6C 33                    2199 	.db #0x33	; 51	'3'
      000C6D 43                    2200 	.db #0x43	; 67	'C'
      000C6E 24                    2201 	.db #0x24	; 36
      000C6F 13                    2202 	.db #0x13	; 19
      000C70 13                    2203 	.db #0x13	; 19
      000C71 21                    2204 	.db #0x21	; 33
      000C72 20                    2205 	.db #0x20	; 32
      000C73 08                    2206 	.db #0x08	; 8
      000C74 AA                    2207 	.db #0xaa	; 170
      000C75 DC                    2208 	.db #0xdc	; 220
      000C76 CB                    2209 	.db #0xcb	; 203
      000C77 CD                    2210 	.db #0xcd	; 205
      000C78 BC                    2211 	.db #0xbc	; 188
      000C79 9B                    2212 	.db #0x9b	; 155
      000C7A 09                    2213 	.db #0x09	; 9
      000C7B 33                    2214 	.db #0x33	; 51	'3'
      000C7C 35                    2215 	.db #0x35	; 53	'5'
      000C7D 33                    2216 	.db #0x33	; 51	'3'
      000C7E 33                    2217 	.db #0x33	; 51	'3'
      000C7F 23                    2218 	.db #0x23	; 35
      000C80 23                    2219 	.db #0x23	; 35
      000C81 03                    2220 	.db #0x03	; 3
      000C82 13                    2221 	.db #0x13	; 19
      000C83 0B                    2222 	.db #0x0b	; 11
      000C84 BE                    2223 	.db #0xbe	; 190
      000C85 DB                    2224 	.db #0xdb	; 219
      000C86 BD                    2225 	.db #0xbd	; 189
      000C87 AF                    2226 	.db #0xaf	; 175
      000C88 AC                    2227 	.db #0xac	; 172
      000C89 89                    2228 	.db #0x89	; 137
      000C8A 20                    2229 	.db #0x20	; 32
      000C8B 23                    2230 	.db #0x23	; 35
      000C8C 15                    2231 	.db #0x15	; 21
      000C8D 23                    2232 	.db #0x23	; 35
      000C8E 32                    2233 	.db #0x32	; 50	'2'
      000C8F 21                    2234 	.db #0x21	; 33
      000C90 12                    2235 	.db #0x12	; 18
      000C91 11                    2236 	.db #0x11	; 17
      000C92 90                    2237 	.db #0x90	; 144
      000C93 C9                    2238 	.db #0xc9	; 201
      000C94 BB                    2239 	.db #0xbb	; 187
      000C95 CE                    2240 	.db #0xce	; 206
      000C96 CD                    2241 	.db #0xcd	; 205
      000C97 AC                    2242 	.db #0xac	; 172
      000C98 8B                    2243 	.db #0x8b	; 139
      000C99 19                    2244 	.db #0x19	; 25
      000C9A 32                    2245 	.db #0x32	; 50	'2'
      000C9B 25                    2246 	.db #0x25	; 37
      000C9C 23                    2247 	.db #0x23	; 35
      000C9D 33                    2248 	.db #0x33	; 51	'3'
      000C9E 32                    2249 	.db #0x32	; 50	'2'
      000C9F 13                    2250 	.db #0x13	; 19
      000CA0 13                    2251 	.db #0x13	; 19
      000CA1 01                    2252 	.db #0x01	; 1
      000CA2 A9                    2253 	.db #0xa9	; 169
      000CA3 AF                    2254 	.db #0xaf	; 175
      000CA4 DB                    2255 	.db #0xdb	; 219
      000CA5 DC                    2256 	.db #0xdc	; 220
      000CA6 BB                    2257 	.db #0xbb	; 187
      000CA7 AC                    2258 	.db #0xac	; 172
      000CA8 19                    2259 	.db #0x19	; 25
      000CA9 21                    2260 	.db #0x21	; 33
      000CAA 24                    2261 	.db #0x24	; 36
      000CAB 24                    2262 	.db #0x24	; 36
      000CAC 32                    2263 	.db #0x32	; 50	'2'
      000CAD 32                    2264 	.db #0x32	; 50	'2'
      000CAE 32                    2265 	.db #0x32	; 50	'2'
      000CAF 12                    2266 	.db #0x12	; 18
      000CB0 03                    2267 	.db #0x03	; 3
      000CB1 88                    2268 	.db #0x88	; 136
      000CB2 CB                    2269 	.db #0xcb	; 203
      000CB3 DC                    2270 	.db #0xdc	; 220
      000CB4 EC                    2271 	.db #0xec	; 236
      000CB5 CB                    2272 	.db #0xcb	; 203
      000CB6 BB                    2273 	.db #0xbb	; 187
      000CB7 89                    2274 	.db #0x89	; 137
      000CB8 30                    2275 	.db #0x30	; 48	'0'
      000CB9 42                    2276 	.db #0x42	; 66	'B'
      000CBA 43                    2277 	.db #0x43	; 67	'C'
      000CBB 33                    2278 	.db #0x33	; 51	'3'
      000CBC 33                    2279 	.db #0x33	; 51	'3'
      000CBD 32                    2280 	.db #0x32	; 50	'2'
      000CBE 31                    2281 	.db #0x31	; 49	'1'
      000CBF 02                    2282 	.db #0x02	; 2
      000CC0 02                    2283 	.db #0x02	; 2
      000CC1 BB                    2284 	.db #0xbb	; 187
      000CC2 DD                    2285 	.db #0xdd	; 221
      000CC3 DC                    2286 	.db #0xdc	; 220
      000CC4 BD                    2287 	.db #0xbd	; 189
      000CC5 CB                    2288 	.db #0xcb	; 203
      000CC6 9A                    2289 	.db #0x9a	; 154
      000CC7 10                    2290 	.db #0x10	; 16
      000CC8 42                    2291 	.db #0x42	; 66	'B'
      000CC9 32                    2292 	.db #0x32	; 50	'2'
      000CCA 24                    2293 	.db #0x24	; 36
      000CCB 33                    2294 	.db #0x33	; 51	'3'
      000CCC 22                    2295 	.db #0x22	; 34
      000CCD AC                    2296 	.db #0xac	; 172
      000CCE 1D                    2297 	.db #0x1d	; 29
      000CCF 3A                    2298 	.db #0x3a	; 58
      000CD0 02                    2299 	.db #0x02	; 2
      000CD1 12                    2300 	.db #0x12	; 18
      000CD2 00                    2301 	.db #0x00	; 0
      000CD3 CB                    2302 	.db #0xcb	; 203
      000CD4 FB                    2303 	.db #0xfb	; 251
      000CD5 DB                    2304 	.db #0xdb	; 219
      000CD6 BC                    2305 	.db #0xbc	; 188
      000CD7 BC                    2306 	.db #0xbc	; 188
      000CD8 8A                    2307 	.db #0x8a	; 138
      000CD9 20                    2308 	.db #0x20	; 32
      000CDA 24                    2309 	.db #0x24	; 36
      000CDB 43                    2310 	.db #0x43	; 67	'C'
      000CDC 23                    2311 	.db #0x23	; 35
      000CDD 23                    2312 	.db #0x23	; 35
      000CDE 22                    2313 	.db #0x22	; 34
      000CDF 02                    2314 	.db #0x02	; 2
      000CE0 12                    2315 	.db #0x12	; 18
      000CE1 01                    2316 	.db #0x01	; 1
      000CE2 A8                    2317 	.db #0xa8	; 168
      000CE3 BE                    2318 	.db #0xbe	; 190
      000CE4 CD                    2319 	.db #0xcd	; 205
      000CE5 DC                    2320 	.db #0xdc	; 220
      000CE6 CA                    2321 	.db #0xca	; 202
      000CE7 AA                    2322 	.db #0xaa	; 170
      000CE8 18                    2323 	.db #0x18	; 24
      000CE9 32                    2324 	.db #0x32	; 50	'2'
      000CEA 43                    2325 	.db #0x43	; 67	'C'
      000CEB 33                    2326 	.db #0x33	; 51	'3'
      000CEC 24                    2327 	.db #0x24	; 36
      000CED 12                    2328 	.db #0x12	; 18
      000CEE 12                    2329 	.db #0x12	; 18
      000CEF 11                    2330 	.db #0x11	; 17
      000CF0 12                    2331 	.db #0x12	; 18
      000CF1 A0                    2332 	.db #0xa0	; 160
      000CF2 EA                    2333 	.db #0xea	; 234
      000CF3 DB                    2334 	.db #0xdb	; 219
      000CF4 DC                    2335 	.db #0xdc	; 220
      000CF5 BB                    2336 	.db #0xbb	; 187
      000CF6 AD                    2337 	.db #0xad	; 173
      000CF7 88                    2338 	.db #0x88	; 136
      000CF8 31                    2339 	.db #0x31	; 49	'1'
      000CF9 43                    2340 	.db #0x43	; 67	'C'
      000CFA 32                    2341 	.db #0x32	; 50	'2'
      000CFB 23                    2342 	.db #0x23	; 35
      000CFC 23                    2343 	.db #0x23	; 35
      000CFD 22                    2344 	.db #0x22	; 34
      000CFE 22                    2345 	.db #0x22	; 34
      000CFF 13                    2346 	.db #0x13	; 19
      000D00 81                    2347 	.db #0x81	; 129
      000D01 CB                    2348 	.db #0xcb	; 203
      000D02 BF                    2349 	.db #0xbf	; 191
      000D03 CD                    2350 	.db #0xcd	; 205
      000D04 BC                    2351 	.db #0xbc	; 188
      000D05 CB                    2352 	.db #0xcb	; 203
      000D06 89                    2353 	.db #0x89	; 137
      000D07 11                    2354 	.db #0x11	; 17
      000D08 43                    2355 	.db #0x43	; 67	'C'
      000D09 43                    2356 	.db #0x43	; 67	'C'
      000D0A 22                    2357 	.db #0x22	; 34
      000D0B 12                    2358 	.db #0x12	; 18
      000D0C 22                    2359 	.db #0x22	; 34
      000D0D 22                    2360 	.db #0x22	; 34
      000D0E 22                    2361 	.db #0x22	; 34
      000D0F 00                    2362 	.db #0x00	; 0
      000D10 C9                    2363 	.db #0xc9	; 201
      000D11 BD                    2364 	.db #0xbd	; 189
      000D12 CD                    2365 	.db #0xcd	; 205
      000D13 BD                    2366 	.db #0xbd	; 189
      000D14 BC                    2367 	.db #0xbc	; 188
      000D15 99                    2368 	.db #0x99	; 153
      000D16 20                    2369 	.db #0x20	; 32
      000D17 43                    2370 	.db #0x43	; 67	'C'
      000D18 43                    2371 	.db #0x43	; 67	'C'
      000D19 22                    2372 	.db #0x22	; 34
      000D1A 22                    2373 	.db #0x22	; 34
      000D1B 22                    2374 	.db #0x22	; 34
      000D1C 31                    2375 	.db #0x31	; 49	'1'
      000D1D 12                    2376 	.db #0x12	; 18
      000D1E 01                    2377 	.db #0x01	; 1
      000D1F B9                    2378 	.db #0xb9	; 185
      000D20 ED                    2379 	.db #0xed	; 237
      000D21 DB                    2380 	.db #0xdb	; 219
      000D22 CC                    2381 	.db #0xcc	; 204
      000D23 BA                    2382 	.db #0xba	; 186
      000D24 9B                    2383 	.db #0x9b	; 155
      000D25 10                    2384 	.db #0x10	; 16
      000D26 34                    2385 	.db #0x34	; 52	'4'
      000D27 34                    2386 	.db #0x34	; 52	'4'
      000D28 22                    2387 	.db #0x22	; 34
      000D29 32                    2388 	.db #0x32	; 50	'2'
      000D2A 22                    2389 	.db #0x22	; 34
      000D2B 33                    2390 	.db #0x33	; 51	'3'
      000D2C 23                    2391 	.db #0x23	; 35
      000D2D 01                    2392 	.db #0x01	; 1
      000D2E C9                    2393 	.db #0xc9	; 201
      000D2F DC                    2394 	.db #0xdc	; 220
      000D30 CC                    2395 	.db #0xcc	; 204
      000D31 CC                    2396 	.db #0xcc	; 204
      000D32 CA                    2397 	.db #0xca	; 202
      000D33 A9                    2398 	.db #0xa9	; 169
      000D34 08                    2399 	.db #0x08	; 8
      000D35 32                    2400 	.db #0x32	; 50	'2'
      000D36 34                    2401 	.db #0x34	; 52	'4'
      000D37 33                    2402 	.db #0x33	; 51	'3'
      000D38 32                    2403 	.db #0x32	; 50	'2'
      000D39 32                    2404 	.db #0x32	; 50	'2'
      000D3A 24                    2405 	.db #0x24	; 36
      000D3B 23                    2406 	.db #0x23	; 35
      000D3C 11                    2407 	.db #0x11	; 17
      000D3D A9                    2408 	.db #0xa9	; 169
      000D3E FB                    2409 	.db #0xfb	; 251
      000D3F DB                    2410 	.db #0xdb	; 219
      000D40 CC                    2411 	.db #0xcc	; 204
      000D41 BB                    2412 	.db #0xbb	; 187
      000D42 BB                    2413 	.db #0xbb	; 187
      000D43 09                    2414 	.db #0x09	; 9
      000D44 31                    2415 	.db #0x31	; 49	'1'
      000D45 45                    2416 	.db #0x45	; 69	'E'
      000D46 23                    2417 	.db #0x23	; 35
      000D47 23                    2418 	.db #0x23	; 35
      000D48 23                    2419 	.db #0x23	; 35
      000D49 43                    2420 	.db #0x43	; 67	'C'
      000D4A 22                    2421 	.db #0x22	; 34
      000D4B 01                    2422 	.db #0x01	; 1
      000D4C 98                    2423 	.db #0x98	; 152
      000D4D DB                    2424 	.db #0xdb	; 219
      000D4E BC                    2425 	.db #0xbc	; 188
      000D4F CE                    2426 	.db #0xce	; 206
      000D50 CB                    2427 	.db #0xcb	; 203
      000D51 AA                    2428 	.db #0xaa	; 170
      000D52 99                    2429 	.db #0x99	; 153
      000D53 11                    2430 	.db #0x11	; 17
      000D54 43                    2431 	.db #0x43	; 67	'C'
      000D55 24                    2432 	.db #0x24	; 36
      000D56 24                    2433 	.db #0x24	; 36
      000D57 22                    2434 	.db #0x22	; 34
      000D58 22                    2435 	.db #0x22	; 34
      000D59 22                    2436 	.db #0x22	; 34
      000D5A 10                    2437 	.db #0x10	; 16
      000D5B 98                    2438 	.db #0x98	; 152
      000D5C BA                    2439 	.db #0xba	; 186
      000D5D CE                    2440 	.db #0xce	; 206
      000D5E BC                    2441 	.db #0xbc	; 188
      000D5F BD                    2442 	.db #0xbd	; 189
      000D60 AB                    2443 	.db #0xab	; 171
      000D61 9A                    2444 	.db #0x9a	; 154
      000D62 08                    2445 	.db #0x08	; 8
      000D63 33                    2446 	.db #0x33	; 51	'3'
      000D64 45                    2447 	.db #0x45	; 69	'E'
      000D65 42                    2448 	.db #0x42	; 66	'B'
      000D66 32                    2449 	.db #0x32	; 50	'2'
      000D67 32                    2450 	.db #0x32	; 50	'2'
      000D68 22                    2451 	.db #0x22	; 34
      000D69 01                    2452 	.db #0x01	; 1
      000D6A 90                    2453 	.db #0x90	; 144
      000D6B B9                    2454 	.db #0xb9	; 185
      000D6C BD                    2455 	.db #0xbd	; 189
      000D6D DD                    2456 	.db #0xdd	; 221
      000D6E BB                    2457 	.db #0xbb	; 187
      000D6F BB                    2458 	.db #0xbb	; 187
      000D70 AB                    2459 	.db #0xab	; 171
      000D71 09                    2460 	.db #0x09	; 9
      000D72 21                    2461 	.db #0x21	; 33
      000D73 35                    2462 	.db #0x35	; 53	'5'
      000D74 34                    2463 	.db #0x34	; 52	'4'
      000D75 53                    2464 	.db #0x53	; 83	'S'
      000D76 33                    2465 	.db #0x33	; 51	'3'
      000D77 22                    2466 	.db #0x22	; 34
      000D78 12                    2467 	.db #0x12	; 18
      000D79 88                    2468 	.db #0x88	; 136
      000D7A A0                    2469 	.db #0xa0	; 160
      000D7B BB                    2470 	.db #0xbb	; 187
      000D7C BE                    2471 	.db #0xbe	; 190
      000D7D BE                    2472 	.db #0xbe	; 190
      000D7E BB                    2473 	.db #0xbb	; 187
      000D7F AA                    2474 	.db #0xaa	; 170
      000D80 9A                    2475 	.db #0x9a	; 154
      000D81 10                    2476 	.db #0x10	; 16
      000D82 21                    2477 	.db #0x21	; 33
      000D83 43                    2478 	.db #0x43	; 67	'C'
      000D84 44                    2479 	.db #0x44	; 68	'D'
      000D85 32                    2480 	.db #0x32	; 50	'2'
      000D86 34                    2481 	.db #0x34	; 52	'4'
      000D87 32                    2482 	.db #0x32	; 50	'2'
      000D88 12                    2483 	.db #0x12	; 18
      000D89 02                    2484 	.db #0x02	; 2
      000D8A BA                    2485 	.db #0xba	; 186
      000D8B CC                    2486 	.db #0xcc	; 204
      000D8C DB                    2487 	.db #0xdb	; 219
      000D8D AC                    2488 	.db #0xac	; 172
      000D8E A9                    2489 	.db #0xa9	; 169
      000D8F 8A                    2490 	.db #0x8a	; 138
      000D90 98                    2491 	.db #0x98	; 152
      000D91 21                    2492 	.db #0x21	; 33
      000D92 11                    2493 	.db #0x11	; 17
      000D93 11                    2494 	.db #0x11	; 17
      000D94 63                    2495 	.db #0x63	; 99	'c'
      000D95 34                    2496 	.db #0x34	; 52	'4'
      000D96 12                    2497 	.db #0x12	; 18
      000D97 33                    2498 	.db #0x33	; 51	'3'
      000D98 01                    2499 	.db #0x01	; 1
      000D99 88                    2500 	.db #0x88	; 136
      000D9A C8                    2501 	.db #0xc8	; 200
      000D9B BF                    2502 	.db #0xbf	; 191
      000D9C AB                    2503 	.db #0xab	; 171
      000D9D AC                    2504 	.db #0xac	; 172
      000D9E 89                    2505 	.db #0x89	; 137
      000D9F 00                    2506 	.db #0x00	; 0
      000DA0 08                    2507 	.db #0x08	; 8
      000DA1 11                    2508 	.db #0x11	; 17
      000DA2 41                    2509 	.db #0x41	; 65	'A'
      000DA3 62                    2510 	.db #0x62	; 98	'b'
      000DA4 22                    2511 	.db #0x22	; 34
      000DA5 32                    2512 	.db #0x32	; 50	'2'
      000DA6 22                    2513 	.db #0x22	; 34
      000DA7 20                    2514 	.db #0x20	; 32
      000DA8 84                    2515 	.db #0x84	; 132
      000DA9 99                    2516 	.db #0x99	; 153
      000DAA D8                    2517 	.db #0xd8	; 216
      000DAB DE                    2518 	.db #0xde	; 222
      000DAC A9                    2519 	.db #0xa9	; 169
      000DAD 09                    2520 	.db #0x09	; 9
      000DAE B8                    2521 	.db #0xb8	; 184
      000DAF CA                    2522 	.db #0xca	; 202
      000DB0 09                    2523 	.db #0x09	; 9
      000DB1 12                    2524 	.db #0x12	; 18
      000DB2 03                    2525 	.db #0x03	; 3
      000DB3 11                    2526 	.db #0x11	; 17
      000DB4 27                    2527 	.db #0x27	; 39
      000DB5 33                    2528 	.db #0x33	; 51	'3'
      000DB6 26                    2529 	.db #0x26	; 38
      000DB7 11                    2530 	.db #0x11	; 17
      000DB8 22                    2531 	.db #0x22	; 34
      000DB9 81                    2532 	.db #0x81	; 129
      000DBA BA                    2533 	.db #0xba	; 186
      000DBB CE                    2534 	.db #0xce	; 206
      000DBC AD                    2535 	.db #0xad	; 173
      000DBD 88                    2536 	.db #0x88	; 136
      000DBE A0                    2537 	.db #0xa0	; 160
      000DBF 98                    2538 	.db #0x98	; 152
      000DC0 10                    2539 	.db #0x10	; 16
      000DC1 44                    2540 	.db #0x44	; 68	'D'
      000DC2 92                    2541 	.db #0x92	; 146
      000DC3 80                    2542 	.db #0x80	; 128
      000DC4 21                    2543 	.db #0x21	; 33
      000DC5 8E                    2544 	.db #0x8e	; 142
      000DC6 21                    2545 	.db #0x21	; 33
      000DC7 C8                    2546 	.db #0xc8	; 200
      000DC8 08                    2547 	.db #0x08	; 8
      000DC9 51                    2548 	.db #0x51	; 81	'Q'
      000DCA A0                    2549 	.db #0xa0	; 160
      000DCB BC                    2550 	.db #0xbc	; 188
      000DCC 85                    2551 	.db #0x85	; 133
      000DCD FD                    2552 	.db #0xfd	; 253
      000DCE 25                    2553 	.db #0x25	; 37
      000DCF 0E                    2554 	.db #0x0e	; 14
      000DD0 91                    2555 	.db #0x91	; 145
      000DD1 AD                    2556 	.db #0xad	; 173
      000DD2 63                    2557 	.db #0x63	; 99	'c'
      000DD3 53                    2558 	.db #0x53	; 83	'S'
      000DD4 71                    2559 	.db #0x71	; 113	'q'
      000DD5 77                    2560 	.db #0x77	; 119	'w'
      000DD6 E8                    2561 	.db #0xe8	; 232
      000DD7 AB                    2562 	.db #0xab	; 171
      000DD8 31                    2563 	.db #0x31	; 49	'1'
      000DD9 14                    2564 	.db #0x14	; 20
      000DDA A9                    2565 	.db #0xa9	; 169
      000DDB 1A                    2566 	.db #0x1a	; 26
      000DDC 22                    2567 	.db #0x22	; 34
      000DDD 80                    2568 	.db #0x80	; 128
      000DDE C9                    2569 	.db #0xc9	; 201
      000DDF AA                    2570 	.db #0xaa	; 170
      000DE0 28                    2571 	.db #0x28	; 40
      000DE1 46                    2572 	.db #0x46	; 70	'F'
      000DE2 82                    2573 	.db #0x82	; 130
      000DE3 AB                    2574 	.db #0xab	; 171
      000DE4 0A                    2575 	.db #0x0a	; 10
      000DE5 11                    2576 	.db #0x11	; 17
      000DE6 B0                    2577 	.db #0xb0	; 176
      000DE7 AC                    2578 	.db #0xac	; 172
      000DE8 20                    2579 	.db #0x20	; 32
      000DE9 14                    2580 	.db #0x14	; 20
      000DEA 81                    2581 	.db #0x81	; 129
      000DEB 88                    2582 	.db #0x88	; 136
      000DEC 89                    2583 	.db #0x89	; 137
      000DED 88                    2584 	.db #0x88	; 136
      000DEE 18                    2585 	.db #0x18	; 24
      000DEF 20                    2586 	.db #0x20	; 32
      000DF0 44                    2587 	.db #0x44	; 68	'D'
      000DF1 A1                    2588 	.db #0xa1	; 161
      000DF2 9A                    2589 	.db #0x9a	; 154
      000DF3 28                    2590 	.db #0x28	; 40
      000DF4 90                    2591 	.db #0x90	; 144
      000DF5 F8                    2592 	.db #0xf8	; 248
      000DF6 FF                    2593 	.db #0xff	; 255
      000DF7 28                    2594 	.db #0x28	; 40
      000DF8 34                    2595 	.db #0x34	; 52	'4'
      000DF9 90                    2596 	.db #0x90	; 144
      000DFA BB                    2597 	.db #0xbb	; 187
      000DFB 0A                    2598 	.db #0x0a	; 10
      000DFC 21                    2599 	.db #0x21	; 33
      000DFD 88                    2600 	.db #0x88	; 136
      000DFE 30                    2601 	.db #0x30	; 48	'0'
      000DFF 35                    2602 	.db #0x35	; 53	'5'
      000E00 92                    2603 	.db #0x92	; 146
      000E01 BD                    2604 	.db #0xbd	; 189
      000E02 18                    2605 	.db #0x18	; 24
      000E03 23                    2606 	.db #0x23	; 35
      000E04 CB                    2607 	.db #0xcb	; 203
      000E05 0D                    2608 	.db #0x0d	; 13
      000E06 21                    2609 	.db #0x21	; 33
      000E07 D0                    2610 	.db #0xd0	; 208
      000E08 BC                    2611 	.db #0xbc	; 188
      000E09 40                    2612 	.db #0x40	; 64
      000E0A 34                    2613 	.db #0x34	; 52	'4'
      000E0B 98                    2614 	.db #0x98	; 152
      000E0C 8B                    2615 	.db #0x8b	; 139
      000E0D 53                    2616 	.db #0x53	; 83	'S'
      000E0E 83                    2617 	.db #0x83	; 131
      000E0F BB                    2618 	.db #0xbb	; 187
      000E10 39                    2619 	.db #0x39	; 57	'9'
      000E11 26                    2620 	.db #0x26	; 38
      000E12 90                    2621 	.db #0x90	; 144
      000E13 CA                    2622 	.db #0xca	; 202
      000E14 CE                    2623 	.db #0xce	; 206
      000E15 8A                    2624 	.db #0x8a	; 138
      000E16 11                    2625 	.db #0x11	; 17
      000E17 01                    2626 	.db #0x01	; 1
      000E18 10                    2627 	.db #0x10	; 16
      000E19 44                    2628 	.db #0x44	; 68	'D'
      000E1A 81                    2629 	.db #0x81	; 129
      000E1B 99                    2630 	.db #0x99	; 153
      000E1C 10                    2631 	.db #0x10	; 16
      000E1D 34                    2632 	.db #0x34	; 52	'4'
      000E1E 01                    2633 	.db #0x01	; 1
      000E1F 98                    2634 	.db #0x98	; 152
      000E20 A8                    2635 	.db #0xa8	; 168
      000E21 FA                    2636 	.db #0xfa	; 250
      000E22 BF                    2637 	.db #0xbf	; 191
      000E23 9B                    2638 	.db #0x9b	; 155
      000E24 28                    2639 	.db #0x28	; 40
      000E25 31                    2640 	.db #0x31	; 49	'1'
      000E26 44                    2641 	.db #0x44	; 68	'D'
      000E27 13                    2642 	.db #0x13	; 19
      000E28 A0                    2643 	.db #0xa0	; 160
      000E29 8A                    2644 	.db #0x8a	; 138
      000E2A 21                    2645 	.db #0x21	; 33
      000E2B 32                    2646 	.db #0x32	; 50	'2'
      000E2C 54                    2647 	.db #0x54	; 84	'T'
      000E2D 01                    2648 	.db #0x01	; 1
      000E2E FA                    2649 	.db #0xfa	; 250
      000E2F CC                    2650 	.db #0xcc	; 204
      000E30 AB                    2651 	.db #0xab	; 171
      000E31 8A                    2652 	.db #0x8a	; 138
      000E32 41                    2653 	.db #0x41	; 65	'A'
      000E33 34                    2654 	.db #0x34	; 52	'4'
      000E34 22                    2655 	.db #0x22	; 34
      000E35 80                    2656 	.db #0x80	; 128
      000E36 99                    2657 	.db #0x99	; 153
      000E37 9A                    2658 	.db #0x9a	; 154
      000E38 41                    2659 	.db #0x41	; 65	'A'
      000E39 35                    2660 	.db #0x35	; 53	'5'
      000E3A 03                    2661 	.db #0x03	; 3
      000E3B A0                    2662 	.db #0xa0	; 160
      000E3C FE                    2663 	.db #0xfe	; 254
      000E3D BC                    2664 	.db #0xbc	; 188
      000E3E 09                    2665 	.db #0x09	; 9
      000E3F 22                    2666 	.db #0x22	; 34
      000E40 23                    2667 	.db #0x23	; 35
      000E41 23                    2668 	.db #0x23	; 35
      000E42 81                    2669 	.db #0x81	; 129
      000E43 BB                    2670 	.db #0xbb	; 187
      000E44 9C                    2671 	.db #0x9c	; 156
      000E45 41                    2672 	.db #0x41	; 65	'A'
      000E46 43                    2673 	.db #0x43	; 67	'C'
      000E47 44                    2674 	.db #0x44	; 68	'D'
      000E48 81                    2675 	.db #0x81	; 129
      000E49 CC                    2676 	.db #0xcc	; 204
      000E4A BD                    2677 	.db #0xbd	; 189
      000E4B AB                    2678 	.db #0xab	; 171
      000E4C 31                    2679 	.db #0x31	; 49	'1'
      000E4D 25                    2680 	.db #0x25	; 37
      000E4E 02                    2681 	.db #0x02	; 2
      000E4F 08                    2682 	.db #0x08	; 8
      000E50 88                    2683 	.db #0x88	; 136
      000E51 BB                    2684 	.db #0xbb	; 187
      000E52 09                    2685 	.db #0x09	; 9
      000E53 64                    2686 	.db #0x64	; 100	'd'
      000E54 23                    2687 	.db #0x23	; 35
      000E55 22                    2688 	.db #0x22	; 34
      000E56 D8                    2689 	.db #0xd8	; 216
      000E57 CD                    2690 	.db #0xcd	; 205
      000E58 AB                    2691 	.db #0xab	; 171
      000E59 1A                    2692 	.db #0x1a	; 26
      000E5A 53                    2693 	.db #0x53	; 83	'S'
      000E5B 13                    2694 	.db #0x13	; 19
      000E5C 80                    2695 	.db #0x80	; 128
      000E5D 99                    2696 	.db #0x99	; 153
      000E5E 99                    2697 	.db #0x99	; 153
      000E5F 89                    2698 	.db #0x89	; 137
      000E60 31                    2699 	.db #0x31	; 49	'1'
      000E61 36                    2700 	.db #0x36	; 54	'6'
      000E62 33                    2701 	.db #0x33	; 51	'3'
      000E63 83                    2702 	.db #0x83	; 131
      000E64 ED                    2703 	.db #0xed	; 237
      000E65 BC                    2704 	.db #0xbc	; 188
      000E66 9B                    2705 	.db #0x9b	; 155
      000E67 48                    2706 	.db #0x48	; 72	'H'
      000E68 25                    2707 	.db #0x25	; 37
      000E69 81                    2708 	.db #0x81	; 129
      000E6A 98                    2709 	.db #0x98	; 152
      000E6B 99                    2710 	.db #0x99	; 153
      000E6C 99                    2711 	.db #0x99	; 153
      000E6D 31                    2712 	.db #0x31	; 49	'1'
      000E6E 42                    2713 	.db #0x42	; 66	'B'
      000E6F 21                    2714 	.db #0x21	; 33
      000E70 32                    2715 	.db #0x32	; 50	'2'
      000E71 A0                    2716 	.db #0xa0	; 160
      000E72 EE                    2717 	.db #0xee	; 238
      000E73 BB                    2718 	.db #0xbb	; 187
      000E74 AB                    2719 	.db #0xab	; 171
      000E75 62                    2720 	.db #0x62	; 98	'b'
      000E76 24                    2721 	.db #0x24	; 36
      000E77 80                    2722 	.db #0x80	; 128
      000E78 9B                    2723 	.db #0x9b	; 155
      000E79 89                    2724 	.db #0x89	; 137
      000E7A 88                    2725 	.db #0x88	; 136
      000E7B 43                    2726 	.db #0x43	; 67	'C'
      000E7C 13                    2727 	.db #0x13	; 19
      000E7D 08                    2728 	.db #0x08	; 8
      000E7E 50                    2729 	.db #0x50	; 80	'P'
      000E7F 81                    2730 	.db #0x81	; 129
      000E80 DC                    2731 	.db #0xdc	; 220
      000E81 BC                    2732 	.db #0xbc	; 188
      000E82 8B                    2733 	.db #0x8b	; 139
      000E83 62                    2734 	.db #0x62	; 98	'b'
      000E84 23                    2735 	.db #0x23	; 35
      000E85 98                    2736 	.db #0x98	; 152
      000E86 AB                    2737 	.db #0xab	; 171
      000E87 89                    2738 	.db #0x89	; 137
      000E88 21                    2739 	.db #0x21	; 33
      000E89 33                    2740 	.db #0x33	; 51	'3'
      000E8A 12                    2741 	.db #0x12	; 18
      000E8B 10                    2742 	.db #0x10	; 16
      000E8C 73                    2743 	.db #0x73	; 115	's'
      000E8D 03                    2744 	.db #0x03	; 3
      000E8E DD                    2745 	.db #0xdd	; 221
      000E8F CC                    2746 	.db #0xcc	; 204
      000E90 8A                    2747 	.db #0x8a	; 138
      000E91 52                    2748 	.db #0x52	; 82	'R'
      000E92 22                    2749 	.db #0x22	; 34
      000E93 A8                    2750 	.db #0xa8	; 168
      000E94 AA                    2751 	.db #0xaa	; 170
      000E95 89                    2752 	.db #0x89	; 137
      000E96 32                    2753 	.db #0x32	; 50	'2'
      000E97 24                    2754 	.db #0x24	; 36
      000E98 81                    2755 	.db #0x81	; 129
      000E99 88                    2756 	.db #0x88	; 136
      000E9A 60                    2757 	.db #0x60	; 96
      000E9B 01                    2758 	.db #0x01	; 1
      000E9C EB                    2759 	.db #0xeb	; 235
      000E9D BC                    2760 	.db #0xbc	; 188
      000E9E 9A                    2761 	.db #0x9a	; 154
      000E9F 44                    2762 	.db #0x44	; 68	'D'
      000EA0 13                    2763 	.db #0x13	; 19
      000EA1 B8                    2764 	.db #0xb8	; 184
      000EA2 9B                    2765 	.db #0x9b	; 155
      000EA3 09                    2766 	.db #0x09	; 9
      000EA4 41                    2767 	.db #0x41	; 65	'A'
      000EA5 24                    2768 	.db #0x24	; 36
      000EA6 80                    2769 	.db #0x80	; 128
      000EA7 89                    2770 	.db #0x89	; 137
      000EA8 31                    2771 	.db #0x31	; 49	'1'
      000EA9 94                    2772 	.db #0x94	; 148
      000EAA E9                    2773 	.db #0xe9	; 233
      000EAB FB                    2774 	.db #0xfb	; 251
      000EAC 9A                    2775 	.db #0x9a	; 154
      000EAD 42                    2776 	.db #0x42	; 66	'B'
      000EAE 13                    2777 	.db #0x13	; 19
      000EAF 98                    2778 	.db #0x98	; 152
      000EB0 AB                    2779 	.db #0xab	; 171
      000EB1 0A                    2780 	.db #0x0a	; 10
      000EB2 31                    2781 	.db #0x31	; 49	'1'
      000EB3 25                    2782 	.db #0x25	; 37
      000EB4 91                    2783 	.db #0x91	; 145
      000EB5 90                    2784 	.db #0x90	; 144
      000EB6 33                    2785 	.db #0x33	; 51	'3'
      000EB7 14                    2786 	.db #0x14	; 20
      000EB8 BC                    2787 	.db #0xbc	; 188
      000EB9 BF                    2788 	.db #0xbf	; 191
      000EBA AC                    2789 	.db #0xac	; 172
      000EBB 48                    2790 	.db #0x48	; 72	'H'
      000EBC 25                    2791 	.db #0x25	; 37
      000EBD 90                    2792 	.db #0x90	; 144
      000EBE 9B                    2793 	.db #0x9b	; 155
      000EBF 89                    2794 	.db #0x89	; 137
      000EC0 38                    2795 	.db #0x38	; 56	'8'
      000EC1 34                    2796 	.db #0x34	; 52	'4'
      000EC2 90                    2797 	.db #0x90	; 144
      000EC3 19                    2798 	.db #0x19	; 25
      000EC4 43                    2799 	.db #0x43	; 67	'C'
      000EC5 82                    2800 	.db #0x82	; 130
      000EC6 DA                    2801 	.db #0xda	; 218
      000EC7 DB                    2802 	.db #0xdb	; 219
      000EC8 AD                    2803 	.db #0xad	; 173
      000EC9 28                    2804 	.db #0x28	; 40
      000ECA 35                    2805 	.db #0x35	; 53	'5'
      000ECB 6C                    2806 	.db #0x6c	; 108	'l'
      000ECC 2A                    2807 	.db #0x2a	; 42
      000ECD 4E                    2808 	.db #0x4e	; 78	'N'
      000ECE A9                    2809 	.db #0xa9	; 169
      000ECF AA                    2810 	.db #0xaa	; 170
      000ED0 08                    2811 	.db #0x08	; 8
      000ED1 52                    2812 	.db #0x52	; 82	'R'
      000ED2 12                    2813 	.db #0x12	; 18
      000ED3 99                    2814 	.db #0x99	; 153
      000ED4 20                    2815 	.db #0x20	; 32
      000ED5 43                    2816 	.db #0x43	; 67	'C'
      000ED6 91                    2817 	.db #0x91	; 145
      000ED7 CD                    2818 	.db #0xcd	; 205
      000ED8 BA                    2819 	.db #0xba	; 186
      000ED9 CB                    2820 	.db #0xcb	; 203
      000EDA 31                    2821 	.db #0x31	; 49	'1'
      000EDB 37                    2822 	.db #0x37	; 55	'7'
      000EDC A8                    2823 	.db #0xa8	; 168
      000EDD AB                    2824 	.db #0xab	; 171
      000EDE 19                    2825 	.db #0x19	; 25
      000EDF 40                    2826 	.db #0x40	; 64
      000EE0 32                    2827 	.db #0x32	; 50	'2'
      000EE1 88                    2828 	.db #0x88	; 136
      000EE2 19                    2829 	.db #0x19	; 25
      000EE3 54                    2830 	.db #0x54	; 84	'T'
      000EE4 81                    2831 	.db #0x81	; 129
      000EE5 AB                    2832 	.db #0xab	; 171
      000EE6 DB                    2833 	.db #0xdb	; 219
      000EE7 BC                    2834 	.db #0xbc	; 188
      000EE8 1A                    2835 	.db #0x1a	; 26
      000EE9 46                    2836 	.db #0x46	; 70	'F'
      000EEA 81                    2837 	.db #0x81	; 129
      000EEB AB                    2838 	.db #0xab	; 171
      000EEC 0A                    2839 	.db #0x0a	; 10
      000EED 21                    2840 	.db #0x21	; 33
      000EEE 22                    2841 	.db #0x22	; 34
      000EEF 02                    2842 	.db #0x02	; 2
      000EF0 80                    2843 	.db #0x80	; 128
      000EF1 41                    2844 	.db #0x41	; 65	'A'
      000EF2 06                    2845 	.db #0x06	; 6
      000EF3 C0                    2846 	.db #0xc0	; 192
      000EF4 B9                    2847 	.db #0xb9	; 185
      000EF5 FB                    2848 	.db #0xfb	; 251
      000EF6 9A                    2849 	.db #0x9a	; 154
      000EF7 42                    2850 	.db #0x42	; 66	'B'
      000EF8 14                    2851 	.db #0x14	; 20
      000EF9 B9                    2852 	.db #0xb9	; 185
      000EFA 9B                    2853 	.db #0x9b	; 155
      000EFB 30                    2854 	.db #0x30	; 48	'0'
      000EFC 31                    2855 	.db #0x31	; 49	'1'
      000EFD 21                    2856 	.db #0x21	; 33
      000EFE 10                    2857 	.db #0x10	; 16
      000EFF 28                    2858 	.db #0x28	; 40
      000F00 64                    2859 	.db #0x64	; 100	'd'
      000F01 A0                    2860 	.db #0xa0	; 160
      000F02 8C                    2861 	.db #0x8c	; 140
      000F03 B9                    2862 	.db #0xb9	; 185
      000F04 CF                    2863 	.db #0xcf	; 207
      000F05 18                    2864 	.db #0x18	; 24
      000F06 25                    2865 	.db #0x25	; 37
      000F07 90                    2866 	.db #0x90	; 144
      000F08 AB                    2867 	.db #0xab	; 171
      000F09 09                    2868 	.db #0x09	; 9
      000F0A 32                    2869 	.db #0x32	; 50	'2'
      000F0B 23                    2870 	.db #0x23	; 35
      000F0C 89                    2871 	.db #0x89	; 137
      000F0D 38                    2872 	.db #0x38	; 56	'8'
      000F0E 35                    2873 	.db #0x35	; 53	'5'
      000F0F 82                    2874 	.db #0x82	; 130
      000F10 DA                    2875 	.db #0xda	; 218
      000F11 BA                    2876 	.db #0xba	; 186
      000F12 CE                    2877 	.db #0xce	; 206
      000F13 0A                    2878 	.db #0x0a	; 10
      000F14 63                    2879 	.db #0x63	; 99	'c'
      000F15 81                    2880 	.db #0x81	; 129
      000F16 B9                    2881 	.db #0xb9	; 185
      000F17 8A                    2882 	.db #0x8a	; 138
      000F18 31                    2883 	.db #0x31	; 49	'1'
      000F19 24                    2884 	.db #0x24	; 36
      000F1A 80                    2885 	.db #0x80	; 128
      000F1B 19                    2886 	.db #0x19	; 25
      000F1C 43                    2887 	.db #0x43	; 67	'C'
      000F1D 13                    2888 	.db #0x13	; 19
      000F1E CA                    2889 	.db #0xca	; 202
      000F1F 9C                    2890 	.db #0x9c	; 156
      000F20 D9                    2891 	.db #0xd9	; 217
      000F21 AD                    2892 	.db #0xad	; 173
      000F22 38                    2893 	.db #0x38	; 56	'8'
      000F23 15                    2894 	.db #0x15	; 21
      000F24 A0                    2895 	.db #0xa0	; 160
      000F25 AB                    2896 	.db #0xab	; 171
      000F26 10                    2897 	.db #0x10	; 16
      000F27 25                    2898 	.db #0x25	; 37
      000F28 81                    2899 	.db #0x81	; 129
      000F29 19                    2900 	.db #0x19	; 25
      000F2A 33                    2901 	.db #0x33	; 51	'3'
      000F2B 03                    2902 	.db #0x03	; 3
      000F2C A0                    2903 	.db #0xa0	; 160
      000F2D CA                    2904 	.db #0xca	; 202
      000F2E EC                    2905 	.db #0xec	; 236
      000F2F CC                    2906 	.db #0xcc	; 204
      000F30 19                    2907 	.db #0x19	; 25
      000F31 34                    2908 	.db #0x34	; 52	'4'
      000F32 90                    2909 	.db #0x90	; 144
      000F33 AA                    2910 	.db #0xaa	; 170
      000F34 08                    2911 	.db #0x08	; 8
      000F35 41                    2912 	.db #0x41	; 65	'A'
      000F36 22                    2913 	.db #0x22	; 34
      000F37 00                    2914 	.db #0x00	; 0
      000F38 40                    2915 	.db #0x40	; 64
      000F39 34                    2916 	.db #0x34	; 52	'4'
      000F3A B0                    2917 	.db #0xb0	; 176
      000F3B AA                    2918 	.db #0xaa	; 170
      000F3C D1                    2919 	.db #0xd1	; 209
      000F3D CF                    2920 	.db #0xcf	; 207
      000F3E 8B                    2921 	.db #0x8b	; 139
      000F3F 43                    2922 	.db #0x43	; 67	'C'
      000F40 81                    2923 	.db #0x81	; 129
      000F41 A9                    2924 	.db #0xa9	; 169
      000F42 88                    2925 	.db #0x88	; 136
      000F43 20                    2926 	.db #0x20	; 32
      000F44 32                    2927 	.db #0x32	; 50	'2'
      000F45 12                    2928 	.db #0x12	; 18
      000F46 30                    2929 	.db #0x30	; 48	'0'
      000F47 55                    2930 	.db #0x55	; 85	'U'
      000F48 00                    2931 	.db #0x00	; 0
      000F49 9A                    2932 	.db #0x9a	; 154
      000F4A A8                    2933 	.db #0xa8	; 168
      000F4B DE                    2934 	.db #0xde	; 222
      000F4C 9C                    2935 	.db #0x9c	; 156
      000F4D 38                    2936 	.db #0x38	; 56	'8'
      000F4E 23                    2937 	.db #0x23	; 35
      000F4F A9                    2938 	.db #0xa9	; 169
      000F50 9B                    2939 	.db #0x9b	; 155
      000F51 10                    2940 	.db #0x10	; 16
      000F52 53                    2941 	.db #0x53	; 83	'S'
      000F53 13                    2942 	.db #0x13	; 19
      000F54 09                    2943 	.db #0x09	; 9
      000F55 73                    2944 	.db #0x73	; 115	's'
      000F56 04                    2945 	.db #0x04	; 4
      000F57 A9                    2946 	.db #0xa9	; 169
      000F58 08                    2947 	.db #0x08	; 8
      000F59 D9                    2948 	.db #0xd9	; 217
      000F5A BD                    2949 	.db #0xbd	; 189
      000F5B 09                    2950 	.db #0x09	; 9
      000F5C 22                    2951 	.db #0x22	; 34
      000F5D 92                    2952 	.db #0x92	; 146
      000F5E AA                    2953 	.db #0xaa	; 170
      000F5F 88                    2954 	.db #0x88	; 136
      000F60 43                    2955 	.db #0x43	; 67	'C'
      000F61 33                    2956 	.db #0x33	; 51	'3'
      000F62 28                    2957 	.db #0x28	; 40
      000F63 71                    2958 	.db #0x71	; 113	'q'
      000F64 53                    2959 	.db #0x53	; 83	'S'
      000F65 90                    2960 	.db #0x90	; 144
      000F66 0A                    2961 	.db #0x0a	; 10
      000F67 A9                    2962 	.db #0xa9	; 169
      000F68 CF                    2963 	.db #0xcf	; 207
      000F69 9B                    2964 	.db #0x9b	; 155
      000F6A 31                    2965 	.db #0x31	; 49	'1'
      000F6B 02                    2966 	.db #0x02	; 2
      000F6C A9                    2967 	.db #0xa9	; 169
      000F6D 8B                    2968 	.db #0x8b	; 139
      000F6E 33                    2969 	.db #0x33	; 51	'3'
      000F6F 15                    2970 	.db #0x15	; 21
      000F70 82                    2971 	.db #0x82	; 130
      000F71 02                    2972 	.db #0x02	; 2
      000F72 27                    2973 	.db #0x27	; 39
      000F73 04                    2974 	.db #0x04	; 4
      000F74 B8                    2975 	.db #0xb8	; 184
      000F75 89                    2976 	.db #0x89	; 137
      000F76 FA                    2977 	.db #0xfa	; 250
      000F77 BC                    2978 	.db #0xbc	; 188
      000F78 18                    2979 	.db #0x18	; 24
      000F79 13                    2980 	.db #0x13	; 19
      000F7A 90                    2981 	.db #0x90	; 144
      000F7B 9A                    2982 	.db #0x9a	; 154
      000F7C 29                    2983 	.db #0x29	; 41
      000F7D 53                    2984 	.db #0x53	; 83	'S'
      000F7E 11                    2985 	.db #0x11	; 17
      000F7F 20                    2986 	.db #0x20	; 32
      000F80 43                    2987 	.db #0x43	; 67	'C'
      000F81 16                    2988 	.db #0x16	; 22
      000F82 91                    2989 	.db #0x91	; 145
      000F83 A9                    2990 	.db #0xa9	; 169
      000F84 B8                    2991 	.db #0xb8	; 184
      000F85 DF                    2992 	.db #0xdf	; 223
      000F86 9A                    2993 	.db #0x9a	; 154
      000F87 20                    2994 	.db #0x20	; 32
      000F88 02                    2995 	.db #0x02	; 2
      000F89 A9                    2996 	.db #0xa9	; 169
      000F8A 89                    2997 	.db #0x89	; 137
      000F8B 30                    2998 	.db #0x30	; 48	'0'
      000F8C 26                    2999 	.db #0x26	; 38
      000F8D 81                    3000 	.db #0x81	; 129
      000F8E 40                    3001 	.db #0x40	; 64
      000F8F 33                    3002 	.db #0x33	; 51	'3'
      000F90 13                    3003 	.db #0x13	; 19
      000F91 B8                    3004 	.db #0xb8	; 184
      000F92 CA                    3005 	.db #0xca	; 202
      000F93 FA                    3006 	.db #0xfa	; 250
      000F94 BE                    3007 	.db #0xbe	; 190
      000F95 08                    3008 	.db #0x08	; 8
      000F96 02                    3009 	.db #0x02	; 2
      000F97 90                    3010 	.db #0x90	; 144
      000F98 89                    3011 	.db #0x89	; 137
      000F99 00                    3012 	.db #0x00	; 0
      000F9A 62                    3013 	.db #0x62	; 98	'b'
      000F9B 12                    3014 	.db #0x12	; 18
      000F9C 18                    3015 	.db #0x18	; 24
      000F9D 52                    3016 	.db #0x52	; 82	'R'
      000F9E 32                    3017 	.db #0x32	; 50	'2'
      000F9F 80                    3018 	.db #0x80	; 128
      000FA0 9B                    3019 	.db #0x9b	; 155
      000FA1 A9                    3020 	.db #0xa9	; 169
      000FA2 FF                    3021 	.db #0xff	; 255
      000FA3 0B                    3022 	.db #0x0b	; 11
      000FA4 10                    3023 	.db #0x10	; 16
      000FA5 81                    3024 	.db #0x81	; 129
      000FA6 A9                    3025 	.db #0xa9	; 169
      000FA7 88                    3026 	.db #0x88	; 136
      000FA8 22                    3027 	.db #0x22	; 34
      000FA9 24                    3028 	.db #0x24	; 36
      000FAA 82                    3029 	.db #0x82	; 130
      000FAB 31                    3030 	.db #0x31	; 49	'1'
      000FAC 36                    3031 	.db #0x36	; 54	'6'
      000FAD 13                    3032 	.db #0x13	; 19
      000FAE 98                    3033 	.db #0x98	; 152
      000FAF CA                    3034 	.db #0xca	; 202
      000FB0 FA                    3035 	.db #0xfa	; 250
      000FB1 9F                    3036 	.db #0x9f	; 159
      000FB2 00                    3037 	.db #0x00	; 0
      000FB3 81                    3038 	.db #0x81	; 129
      000FB4 88                    3039 	.db #0x88	; 136
      000FB5 89                    3040 	.db #0x89	; 137
      000FB6 10                    3041 	.db #0x10	; 16
      000FB7 23                    3042 	.db #0x23	; 35
      000FB8 21                    3043 	.db #0x21	; 33
      000FB9 20                    3044 	.db #0x20	; 32
      000FBA 73                    3045 	.db #0x73	; 115	's'
      000FBB 32                    3046 	.db #0x32	; 50	'2'
      000FBC 91                    3047 	.db #0x91	; 145
      000FBD 8A                    3048 	.db #0x8a	; 138
      000FBE FB                    3049 	.db #0xfb	; 251
      000FBF AF                    3050 	.db #0xaf	; 175
      000FC0 18                    3051 	.db #0x18	; 24
      000FC1 00                    3052 	.db #0x00	; 0
      000FC2 08                    3053 	.db #0x08	; 8
      000FC3 99                    3054 	.db #0x99	; 153
      000FC4 09                    3055 	.db #0x09	; 9
      000FC5 42                    3056 	.db #0x42	; 66	'B'
      000FC6 03                    3057 	.db #0x03	; 3
      000FC7 11                    3058 	.db #0x11	; 17
      000FC8 34                    3059 	.db #0x34	; 52	'4'
      000FC9 33                    3060 	.db #0x33	; 51	'3'
      000FCA CE                    3061 	.db #0xce	; 206
      000FCB 3B                    3062 	.db #0x3b	; 59
      000FCC 3D                    3063 	.db #0x3d	; 61
      000FCD B0                    3064 	.db #0xb0	; 176
      000FCE BA                    3065 	.db #0xba	; 186
      000FCF FF                    3066 	.db #0xff	; 255
      000FD0 9B                    3067 	.db #0x9b	; 155
      000FD1 18                    3068 	.db #0x18	; 24
      000FD2 00                    3069 	.db #0x00	; 0
      000FD3 88                    3070 	.db #0x88	; 136
      000FD4 9A                    3071 	.db #0x9a	; 154
      000FD5 38                    3072 	.db #0x38	; 56	'8'
      000FD6 14                    3073 	.db #0x14	; 20
      000FD7 32                    3074 	.db #0x32	; 50	'2'
      000FD8 34                    3075 	.db #0x34	; 52	'4'
      000FD9 52                    3076 	.db #0x52	; 82	'R'
      000FDA 53                    3077 	.db #0x53	; 83	'S'
      000FDB 90                    3078 	.db #0x90	; 144
      000FDC 9A                    3079 	.db #0x9a	; 154
      000FDD F9                    3080 	.db #0xf9	; 249
      000FDE AD                    3081 	.db #0xad	; 173
      000FDF 08                    3082 	.db #0x08	; 8
      000FE0 80                    3083 	.db #0x80	; 128
      000FE1 80                    3084 	.db #0x80	; 128
      000FE2 A0                    3085 	.db #0xa0	; 160
      000FE3 18                    3086 	.db #0x18	; 24
      000FE4 33                    3087 	.db #0x33	; 51	'3'
      000FE5 30                    3088 	.db #0x30	; 48	'0'
      000FE6 73                    3089 	.db #0x73	; 115	's'
      000FE7 22                    3090 	.db #0x22	; 34
      000FE8 52                    3091 	.db #0x52	; 82	'R'
      000FE9 92                    3092 	.db #0x92	; 146
      000FEA 9A                    3093 	.db #0x9a	; 154
      000FEB F0                    3094 	.db #0xf0	; 240
      000FEC EB                    3095 	.db #0xeb	; 235
      000FED 88                    3096 	.db #0x88	; 136
      000FEE 08                    3097 	.db #0x08	; 8
      000FEF 10                    3098 	.db #0x10	; 16
      000FF0 88                    3099 	.db #0x88	; 136
      000FF1 8B                    3100 	.db #0x8b	; 139
      000FF2 31                    3101 	.db #0x31	; 49	'1'
      000FF3 23                    3102 	.db #0x23	; 35
      000FF4 34                    3103 	.db #0x34	; 52	'4'
      000FF5 24                    3104 	.db #0x24	; 36
      000FF6 52                    3105 	.db #0x52	; 82	'R'
      000FF7 02                    3106 	.db #0x02	; 2
      000FF8 AB                    3107 	.db #0xab	; 171
      000FF9 A9                    3108 	.db #0xa9	; 169
      000FFA EF                    3109 	.db #0xef	; 239
      000FFB 99                    3110 	.db #0x99	; 153
      000FFC 90                    3111 	.db #0x90	; 144
      000FFD 01                    3112 	.db #0x01	; 1
      000FFE A2                    3113 	.db #0xa2	; 162
      000FFF 99                    3114 	.db #0x99	; 153
      001000 10                    3115 	.db #0x10	; 16
      001001 52                    3116 	.db #0x52	; 82	'R'
      001002 23                    3117 	.db #0x23	; 35
      001003 42                    3118 	.db #0x42	; 66	'B'
      001004 33                    3119 	.db #0x33	; 51	'3'
      001005 04                    3120 	.db #0x04	; 4
      001006 90                    3121 	.db #0x90	; 144
      001007 D9                    3122 	.db #0xd9	; 217
      001008 AF                    3123 	.db #0xaf	; 175
      001009 8B                    3124 	.db #0x8b	; 139
      00100A 89                    3125 	.db #0x89	; 137
      00100B 00                    3126 	.db #0x00	; 0
      00100C 90                    3127 	.db #0x90	; 144
      00100D A8                    3128 	.db #0xa8	; 168
      00100E 11                    3129 	.db #0x11	; 17
      00100F 14                    3130 	.db #0x14	; 20
      001010 63                    3131 	.db #0x63	; 99	'c'
      001011 33                    3132 	.db #0x33	; 51	'3'
      001012 62                    3133 	.db #0x62	; 98	'b'
      001013 21                    3134 	.db #0x21	; 33
      001014 A8                    3135 	.db #0xa8	; 168
      001015 89                    3136 	.db #0x89	; 137
      001016 ED                    3137 	.db #0xed	; 237
      001017 AA                    3138 	.db #0xaa	; 170
      001018 88                    3139 	.db #0x88	; 136
      001019 80                    3140 	.db #0x80	; 128
      00101A 81                    3141 	.db #0x81	; 129
      00101B A9                    3142 	.db #0xa9	; 169
      00101C 09                    3143 	.db #0x09	; 9
      00101D 32                    3144 	.db #0x32	; 50	'2'
      00101E 62                    3145 	.db #0x62	; 98	'b'
      00101F 53                    3146 	.db #0x53	; 83	'S'
      001020 23                    3147 	.db #0x23	; 35
      001021 44                    3148 	.db #0x44	; 68	'D'
      001022 90                    3149 	.db #0x90	; 144
      001023 99                    3150 	.db #0x99	; 153
      001024 FA                    3151 	.db #0xfa	; 250
      001025 AA                    3152 	.db #0xaa	; 170
      001026 89                    3153 	.db #0x89	; 137
      001027 89                    3154 	.db #0x89	; 137
      001028 08                    3155 	.db #0x08	; 8
      001029 98                    3156 	.db #0x98	; 152
      00102A 0A                    3157 	.db #0x0a	; 10
      00102B 11                    3158 	.db #0x11	; 17
      00102C 42                    3159 	.db #0x42	; 66	'B'
      00102D 26                    3160 	.db #0x26	; 38
      00102E 24                    3161 	.db #0x24	; 36
      00102F 25                    3162 	.db #0x25	; 37
      001030 13                    3163 	.db #0x13	; 19
      001031 9A                    3164 	.db #0x9a	; 154
      001032 D9                    3165 	.db #0xd9	; 217
      001033 CC                    3166 	.db #0xcc	; 204
      001034 99                    3167 	.db #0x99	; 153
      001035 99                    3168 	.db #0x99	; 153
      001036 19                    3169 	.db #0x19	; 25
      001037 88                    3170 	.db #0x88	; 136
      001038 09                    3171 	.db #0x09	; 9
      001039 18                    3172 	.db #0x18	; 24
      00103A 22                    3173 	.db #0x22	; 34
      00103B 54                    3174 	.db #0x54	; 84	'T'
      00103C 34                    3175 	.db #0x34	; 52	'4'
      00103D 44                    3176 	.db #0x44	; 68	'D'
      00103E 23                    3177 	.db #0x23	; 35
      00103F A8                    3178 	.db #0xa8	; 168
      001040 99                    3179 	.db #0x99	; 153
      001041 DC                    3180 	.db #0xdc	; 220
      001042 BB                    3181 	.db #0xbb	; 187
      001043 AA                    3182 	.db #0xaa	; 170
      001044 9A                    3183 	.db #0x9a	; 154
      001045 80                    3184 	.db #0x80	; 128
      001046 19                    3185 	.db #0x19	; 25
      001047 08                    3186 	.db #0x08	; 8
      001048 02                    3187 	.db #0x02	; 2
      001049 25                    3188 	.db #0x25	; 37
      00104A 27                    3189 	.db #0x27	; 39
      00104B 44                    3190 	.db #0x44	; 68	'D'
      00104C 32                    3191 	.db #0x32	; 50	'2'
      00104D 01                    3192 	.db #0x01	; 1
      00104E B2                    3193 	.db #0xb2	; 178
      00104F EA                    3194 	.db #0xea	; 234
      001050 CB                    3195 	.db #0xcb	; 203
      001051 AB                    3196 	.db #0xab	; 171
      001052 8B                    3197 	.db #0x8b	; 139
      001053 8A                    3198 	.db #0x8a	; 138
      001054 00                    3199 	.db #0x00	; 0
      001055 20                    3200 	.db #0x20	; 32
      001056 81                    3201 	.db #0x81	; 129
      001057 33                    3202 	.db #0x33	; 51	'3'
      001058 37                    3203 	.db #0x37	; 55	'7'
      001059 63                    3204 	.db #0x63	; 99	'c'
      00105A 43                    3205 	.db #0x43	; 67	'C'
      00105B 02                    3206 	.db #0x02	; 2
      00105C 82                    3207 	.db #0x82	; 130
      00105D D0                    3208 	.db #0xd0	; 208
      00105E DB                    3209 	.db #0xdb	; 219
      00105F BB                    3210 	.db #0xbb	; 187
      001060 BA                    3211 	.db #0xba	; 186
      001061 89                    3212 	.db #0x89	; 137
      001062 08                    3213 	.db #0x08	; 8
      001063 30                    3214 	.db #0x30	; 48	'0'
      001064 30                    3215 	.db #0x30	; 48	'0'
      001065 20                    3216 	.db #0x20	; 32
      001066 44                    3217 	.db #0x44	; 68	'D'
      001067 24                    3218 	.db #0x24	; 36
      001068 45                    3219 	.db #0x45	; 69	'E'
      001069 23                    3220 	.db #0x23	; 35
      00106A 83                    3221 	.db #0x83	; 131
      00106B 92                    3222 	.db #0x92	; 146
      00106C FB                    3223 	.db #0xfb	; 251
      00106D CB                    3224 	.db #0xcb	; 203
      00106E BB                    3225 	.db #0xbb	; 187
      00106F AB                    3226 	.db #0xab	; 171
      001070 89                    3227 	.db #0x89	; 137
      001071 10                    3228 	.db #0x10	; 16
      001072 40                    3229 	.db #0x40	; 64
      001073 31                    3230 	.db #0x31	; 49	'1'
      001074 12                    3231 	.db #0x12	; 18
      001075 23                    3232 	.db #0x23	; 35
      001076 37                    3233 	.db #0x37	; 55	'7'
      001077 53                    3234 	.db #0x53	; 83	'S'
      001078 04                    3235 	.db #0x04	; 4
      001079 02                    3236 	.db #0x02	; 2
      00107A 98                    3237 	.db #0x98	; 152
      00107B AE                    3238 	.db #0xae	; 174
      00107C BC                    3239 	.db #0xbc	; 188
      00107D BA                    3240 	.db #0xba	; 186
      00107E BA                    3241 	.db #0xba	; 186
      00107F 91                    3242 	.db #0x91	; 145
      001080 02                    3243 	.db #0x02	; 2
      001081 33                    3244 	.db #0x33	; 51	'3'
      001082 62                    3245 	.db #0x62	; 98	'b'
      001083 21                    3246 	.db #0x21	; 33
      001084 22                    3247 	.db #0x22	; 34
      001085 44                    3248 	.db #0x44	; 68	'D'
      001086 33                    3249 	.db #0x33	; 51	'3'
      001087 04                    3250 	.db #0x04	; 4
      001088 93                    3251 	.db #0x93	; 147
      001089 D9                    3252 	.db #0xd9	; 217
      00108A DC                    3253 	.db #0xdc	; 220
      00108B AB                    3254 	.db #0xab	; 171
      00108C AC                    3255 	.db #0xac	; 172
      00108D 09                    3256 	.db #0x09	; 9
      00108E 19                    3257 	.db #0x19	; 25
      00108F 20                    3258 	.db #0x20	; 32
      001090 84                    3259 	.db #0x84	; 132
      001091 23                    3260 	.db #0x23	; 35
      001092 40                    3261 	.db #0x40	; 64
      001093 42                    3262 	.db #0x42	; 66	'B'
      001094 52                    3263 	.db #0x52	; 82	'R'
      001095 22                    3264 	.db #0x22	; 34
      001096 83                    3265 	.db #0x83	; 131
      001097 B2                    3266 	.db #0xb2	; 178
      001098 DB                    3267 	.db #0xdb	; 219
      001099 BE                    3268 	.db #0xbe	; 190
      00109A CB                    3269 	.db #0xcb	; 203
      00109B 9A                    3270 	.db #0x9a	; 154
      00109C 09                    3271 	.db #0x09	; 9
      00109D 18                    3272 	.db #0x18	; 24
      00109E 31                    3273 	.db #0x31	; 49	'1'
      00109F 23                    3274 	.db #0x23	; 35
      0010A0 41                    3275 	.db #0x41	; 65	'A'
      0010A1 31                    3276 	.db #0x31	; 49	'1'
      0010A2 17                    3277 	.db #0x17	; 23
      0010A3 53                    3278 	.db #0x53	; 83	'S'
      0010A4 20                    3279 	.db #0x20	; 32
      0010A5 92                    3280 	.db #0x92	; 146
      0010A6 B1                    3281 	.db #0xb1	; 177
      0010A7 BC                    3282 	.db #0xbc	; 188
      0010A8 CD                    3283 	.db #0xcd	; 205
      0010A9 9C                    3284 	.db #0x9c	; 156
      0010AA 8A                    3285 	.db #0x8a	; 138
      0010AB 09                    3286 	.db #0x09	; 9
      0010AC 18                    3287 	.db #0x18	; 24
      0010AD 03                    3288 	.db #0x03	; 3
      0010AE 03                    3289 	.db #0x03	; 3
      0010AF 05                    3290 	.db #0x05	; 5
      0010B0 31                    3291 	.db #0x31	; 49	'1'
      0010B1 43                    3292 	.db #0x43	; 67	'C'
      0010B2 44                    3293 	.db #0x44	; 68	'D'
      0010B3 50                    3294 	.db #0x50	; 80	'P'
      0010B4 08                    3295 	.db #0x08	; 8
      0010B5 B0                    3296 	.db #0xb0	; 176
      0010B6 CA                    3297 	.db #0xca	; 202
      0010B7 CB                    3298 	.db #0xcb	; 203
      0010B8 9D                    3299 	.db #0x9d	; 157
      0010B9 0B                    3300 	.db #0x0b	; 11
      0010BA 99                    3301 	.db #0x99	; 153
      0010BB 02                    3302 	.db #0x02	; 2
      0010BC 11                    3303 	.db #0x11	; 17
      0010BD 32                    3304 	.db #0x32	; 50	'2'
      0010BE 42                    3305 	.db #0x42	; 66	'B'
      0010BF 31                    3306 	.db #0x31	; 49	'1'
      0010C0 54                    3307 	.db #0x54	; 84	'T'
      0010C1 51                    3308 	.db #0x51	; 81	'Q'
      0010C2 01                    3309 	.db #0x01	; 1
      0010C3 93                    3310 	.db #0x93	; 147
      0010C4 A1                    3311 	.db #0xa1	; 161
      0010C5 DB                    3312 	.db #0xdb	; 219
      0010C6 DB                    3313 	.db #0xdb	; 219
      0010C7 AC                    3314 	.db #0xac	; 172
      0010C8 8B                    3315 	.db #0x8b	; 139
      0010C9 41                    3316 	.db #0x41	; 65	'A'
      0010CA CA                    3317 	.db #0xca	; 202
      0010CB 42                    3318 	.db #0x42	; 66	'B'
      0010CC 18                    3319 	.db #0x18	; 24
      0010CD 28                    3320 	.db #0x28	; 40
      0010CE 21                    3321 	.db #0x21	; 33
      0010CF 33                    3322 	.db #0x33	; 51	'3'
      0010D0 32                    3323 	.db #0x32	; 50	'2'
      0010D1 43                    3324 	.db #0x43	; 67	'C'
      0010D2 73                    3325 	.db #0x73	; 115	's'
      0010D3 32                    3326 	.db #0x32	; 50	'2'
      0010D4 13                    3327 	.db #0x13	; 19
      0010D5 12                    3328 	.db #0x12	; 18
      0010D6 AA                    3329 	.db #0xaa	; 170
      0010D7 BE                    3330 	.db #0xbe	; 190
      0010D8 BE                    3331 	.db #0xbe	; 190
      0010D9 CB                    3332 	.db #0xcb	; 203
      0010DA AA                    3333 	.db #0xaa	; 170
      0010DB 88                    3334 	.db #0x88	; 136
      0010DC 48                    3335 	.db #0x48	; 72	'H'
      0010DD 48                    3336 	.db #0x48	; 72	'H'
      0010DE 38                    3337 	.db #0x38	; 56	'8'
      0010DF 01                    3338 	.db #0x01	; 1
      0010E0 83                    3339 	.db #0x83	; 131
      0010E1 24                    3340 	.db #0x24	; 36
      0010E2 62                    3341 	.db #0x62	; 98	'b'
      0010E3 31                    3342 	.db #0x31	; 49	'1'
      0010E4 12                    3343 	.db #0x12	; 18
      0010E5 80                    3344 	.db #0x80	; 128
      0010E6 AA                    3345 	.db #0xaa	; 170
      0010E7 BF                    3346 	.db #0xbf	; 191
      0010E8 AD                    3347 	.db #0xad	; 173
      0010E9 BB                    3348 	.db #0xbb	; 187
      0010EA 98                    3349 	.db #0x98	; 152
      0010EB 08                    3350 	.db #0x08	; 8
      0010EC 31                    3351 	.db #0x31	; 49	'1'
      0010ED 31                    3352 	.db #0x31	; 49	'1'
      0010EE 43                    3353 	.db #0x43	; 67	'C'
      0010EF 20                    3354 	.db #0x20	; 32
      0010F0 94                    3355 	.db #0x94	; 148
      0010F1 15                    3356 	.db #0x15	; 21
      0010F2 32                    3357 	.db #0x32	; 50	'2'
      0010F3 33                    3358 	.db #0x33	; 51	'3'
      0010F4 05                    3359 	.db #0x05	; 5
      0010F5 2A                    3360 	.db #0x2a	; 42
      0010F6 F0                    3361 	.db #0xf0	; 240
      0010F7 AA                    3362 	.db #0xaa	; 170
      0010F8 AD                    3363 	.db #0xad	; 173
      0010F9 AB                    3364 	.db #0xab	; 171
      0010FA 8A                    3365 	.db #0x8a	; 138
      0010FB A8                    3366 	.db #0xa8	; 168
      0010FC 03                    3367 	.db #0x03	; 3
      0010FD 13                    3368 	.db #0x13	; 19
      0010FE 15                    3369 	.db #0x15	; 21
      0010FF 23                    3370 	.db #0x23	; 35
      001100 23                    3371 	.db #0x23	; 35
      001101 15                    3372 	.db #0x15	; 21
      001102 73                    3373 	.db #0x73	; 115	's'
      001103 18                    3374 	.db #0x18	; 24
      001104 94                    3375 	.db #0x94	; 148
      001105 08                    3376 	.db #0x08	; 8
      001106 D9                    3377 	.db #0xd9	; 217
      001107 C9                    3378 	.db #0xc9	; 201
      001108 C9                    3379 	.db #0xc9	; 201
      001109 AA                    3380 	.db #0xaa	; 170
      00110A 99                    3381 	.db #0x99	; 153
      00110B 18                    3382 	.db #0x18	; 24
      00110C 82                    3383 	.db #0x82	; 130
      00110D 16                    3384 	.db #0x16	; 22
      00110E 10                    3385 	.db #0x10	; 16
      00110F 83                    3386 	.db #0x83	; 131
      001110 48                    3387 	.db #0x48	; 72	'H'
      001111 82                    3388 	.db #0x82	; 130
      001112 27                    3389 	.db #0x27	; 39
      001113 32                    3390 	.db #0x32	; 50	'2'
      001114 B3                    3391 	.db #0xb3	; 179
      001115 02                    3392 	.db #0x02	; 2
      001116 CF                    3393 	.db #0xcf	; 207
      001117 C9                    3394 	.db #0xc9	; 201
      001118 AB                    3395 	.db #0xab	; 171
      001119 A9                    3396 	.db #0xa9	; 169
      00111A 10                    3397 	.db #0x10	; 16
      00111B 40                    3398 	.db #0x40	; 64
      00111C 03                    3399 	.db #0x03	; 3
      00111D 23                    3400 	.db #0x23	; 35
      00111E 88                    3401 	.db #0x88	; 136
      00111F B4                    3402 	.db #0xb4	; 180
      001120 4A                    3403 	.db #0x4a	; 74	'J'
      001121 80                    3404 	.db #0x80	; 128
      001122 46                    3405 	.db #0x46	; 70	'F'
      001123 50                    3406 	.db #0x50	; 80	'P'
      001124 82                    3407 	.db #0x82	; 130
      001125 00                    3408 	.db #0x00	; 0
      001126 BC                    3409 	.db #0xbc	; 188
      001127 DB                    3410 	.db #0xdb	; 219
      001128 AC                    3411 	.db #0xac	; 172
      001129 A8                    3412 	.db #0xa8	; 168
      00112A 20                    3413 	.db #0x20	; 32
      00112B 20                    3414 	.db #0x20	; 32
      00112C 14                    3415 	.db #0x14	; 20
      00112D 12                    3416 	.db #0x12	; 18
      00112E 81                    3417 	.db #0x81	; 129
      00112F 88                    3418 	.db #0x88	; 136
      001130 8A                    3419 	.db #0x8a	; 138
      001131 29                    3420 	.db #0x29	; 41
      001132 72                    3421 	.db #0x72	; 114	'r'
      001133 34                    3422 	.db #0x34	; 52	'4'
      001134 85                    3423 	.db #0x85	; 133
      001135 03                    3424 	.db #0x03	; 3
      001136 9C                    3425 	.db #0x9c	; 156
      001137 DB                    3426 	.db #0xdb	; 219
      001138 BB                    3427 	.db #0xbb	; 187
      001139 BB                    3428 	.db #0xbb	; 187
      00113A 88                    3429 	.db #0x88	; 136
      00113B 30                    3430 	.db #0x30	; 48	'0'
      00113C 34                    3431 	.db #0x34	; 52	'4'
      00113D 33                    3432 	.db #0x33	; 51	'3'
      00113E 31                    3433 	.db #0x31	; 49	'1'
      00113F B1                    3434 	.db #0xb1	; 177
      001140 90                    3435 	.db #0x90	; 144
      001141 9B                    3436 	.db #0x9b	; 155
      001142 59                    3437 	.db #0x59	; 89	'Y'
      001143 73                    3438 	.db #0x73	; 115	's'
      001144 73                    3439 	.db #0x73	; 115	's'
      001145 01                    3440 	.db #0x01	; 1
      001146 B3                    3441 	.db #0xb3	; 179
      001147 09                    3442 	.db #0x09	; 9
      001148 AF                    3443 	.db #0xaf	; 175
      001149 DA                    3444 	.db #0xda	; 218
      00114A 89                    3445 	.db #0x89	; 137
      00114B 09                    3446 	.db #0x09	; 9
      00114C 01                    3447 	.db #0x01	; 1
      00114D 32                    3448 	.db #0x32	; 50	'2'
      00114E 21                    3449 	.db #0x21	; 33
      00114F 02                    3450 	.db #0x02	; 2
      001150 00                    3451 	.db #0x00	; 0
      001151 8A                    3452 	.db #0x8a	; 138
      001152 98                    3453 	.db #0x98	; 152
      001153 32                    3454 	.db #0x32	; 50	'2'
      001154 54                    3455 	.db #0x54	; 84	'T'
      001155 54                    3456 	.db #0x54	; 84	'T'
      001156 02                    3457 	.db #0x02	; 2
      001157 A3                    3458 	.db #0xa3	; 163
      001158 B9                    3459 	.db #0xb9	; 185
      001159 AF                    3460 	.db #0xaf	; 175
      00115A AD                    3461 	.db #0xad	; 173
      00115B AA                    3462 	.db #0xaa	; 170
      00115C 99                    3463 	.db #0x99	; 153
      00115D 11                    3464 	.db #0x11	; 17
      00115E 41                    3465 	.db #0x41	; 65	'A'
      00115F 23                    3466 	.db #0x23	; 35
      001160 33                    3467 	.db #0x33	; 51	'3'
      001161 38                    3468 	.db #0x38	; 56	'8'
      001162 99                    3469 	.db #0x99	; 153
      001163 99                    3470 	.db #0x99	; 153
      001164 B0                    3471 	.db #0xb0	; 176
      001165 34                    3472 	.db #0x34	; 52	'4'
      001166 71                    3473 	.db #0x71	; 113	'q'
      001167 26                    3474 	.db #0x26	; 38
      001168 30                    3475 	.db #0x30	; 48	'0'
      001169 09                    3476 	.db #0x09	; 9
      00116A EB                    3477 	.db #0xeb	; 235
      00116B CA                    3478 	.db #0xca	; 202
      00116C 9C                    3479 	.db #0x9c	; 156
      00116D 9C                    3480 	.db #0x9c	; 156
      00116E 88                    3481 	.db #0x88	; 136
      00116F 11                    3482 	.db #0x11	; 17
      001170 32                    3483 	.db #0x32	; 50	'2'
      001171 23                    3484 	.db #0x23	; 35
      001172 24                    3485 	.db #0x24	; 36
      001173 28                    3486 	.db #0x28	; 40
      001174 B0                    3487 	.db #0xb0	; 176
      001175 98                    3488 	.db #0x98	; 152
      001176 1B                    3489 	.db #0x1b	; 27
      001177 20                    3490 	.db #0x20	; 32
      001178 36                    3491 	.db #0x36	; 54	'6'
      001179 35                    3492 	.db #0x35	; 53	'5'
      00117A 21                    3493 	.db #0x21	; 33
      00117B B2                    3494 	.db #0xb2	; 178
      00117C CA                    3495 	.db #0xca	; 202
      00117D DE                    3496 	.db #0xde	; 222
      00117E BA                    3497 	.db #0xba	; 186
      00117F BB                    3498 	.db #0xbb	; 187
      001180 89                    3499 	.db #0x89	; 137
      001181 20                    3500 	.db #0x20	; 32
      001182 42                    3501 	.db #0x42	; 66	'B'
      001183 15                    3502 	.db #0x15	; 21
      001184 23                    3503 	.db #0x23	; 35
      001185 00                    3504 	.db #0x00	; 0
      001186 B1                    3505 	.db #0xb1	; 177
      001187 A8                    3506 	.db #0xa8	; 168
      001188 0A                    3507 	.db #0x0a	; 10
      001189 30                    3508 	.db #0x30	; 48	'0'
      00118A 72                    3509 	.db #0x72	; 114	'r'
      00118B 34                    3510 	.db #0x34	; 52	'4'
      00118C 85                    3511 	.db #0x85	; 133
      00118D 94                    3512 	.db #0x94	; 148
      00118E 80                    3513 	.db #0x80	; 128
      00118F CA                    3514 	.db #0xca	; 202
      001190 AC                    3515 	.db #0xac	; 172
      001191 9E                    3516 	.db #0x9e	; 158
      001192 AA                    3517 	.db #0xaa	; 170
      001193 98                    3518 	.db #0x98	; 152
      001194 11                    3519 	.db #0x11	; 17
      001195 41                    3520 	.db #0x41	; 65	'A'
      001196 23                    3521 	.db #0x23	; 35
      001197 14                    3522 	.db #0x14	; 20
      001198 11                    3523 	.db #0x11	; 17
      001199 8A                    3524 	.db #0x8a	; 138
      00119A D8                    3525 	.db #0xd8	; 216
      00119B 80                    3526 	.db #0x80	; 128
      00119C 29                    3527 	.db #0x29	; 41
      00119D 41                    3528 	.db #0x41	; 65	'A'
      00119E 34                    3529 	.db #0x34	; 52	'4'
      00119F 52                    3530 	.db #0x52	; 82	'R'
      0011A0 10                    3531 	.db #0x10	; 16
      0011A1 A1                    3532 	.db #0xa1	; 161
      0011A2 B9                    3533 	.db #0xb9	; 185
      0011A3 BF                    3534 	.db #0xbf	; 191
      0011A4 EB                    3535 	.db #0xeb	; 235
      0011A5 AA                    3536 	.db #0xaa	; 170
      0011A6 89                    3537 	.db #0x89	; 137
      0011A7 29                    3538 	.db #0x29	; 41
      0011A8 30                    3539 	.db #0x30	; 48	'0'
      0011A9 44                    3540 	.db #0x44	; 68	'D'
      0011AA 21                    3541 	.db #0x21	; 33
      0011AB 02                    3542 	.db #0x02	; 2
      0011AC 90                    3543 	.db #0x90	; 144
      0011AD C0                    3544 	.db #0xc0	; 192
      0011AE 88                    3545 	.db #0x88	; 136
      0011AF 4B                    3546 	.db #0x4b	; 75	'K'
      0011B0 28                    3547 	.db #0x28	; 40
      0011B1 24                    3548 	.db #0x24	; 36
      0011B2 35                    3549 	.db #0x35	; 53	'5'
      0011B3 41                    3550 	.db #0x41	; 65	'A'
      0011B4 80                    3551 	.db #0x80	; 128
      0011B5 B1                    3552 	.db #0xb1	; 177
      0011B6 CA                    3553 	.db #0xca	; 202
      0011B7 9F                    3554 	.db #0x9f	; 159
      0011B8 9E                    3555 	.db #0x9e	; 158
      0011B9 99                    3556 	.db #0x99	; 153
      0011BA 89                    3557 	.db #0x89	; 137
      0011BB 28                    3558 	.db #0x28	; 40
      0011BC 21                    3559 	.db #0x21	; 33
      0011BD 14                    3560 	.db #0x14	; 20
      0011BE 23                    3561 	.db #0x23	; 35
      0011BF 10                    3562 	.db #0x10	; 16
      0011C0 B1                    3563 	.db #0xb1	; 177
      0011C1 A0                    3564 	.db #0xa0	; 160
      0011C2 0D                    3565 	.db #0x0d	; 13
      0011C3 0A                    3566 	.db #0x0a	; 10
      0011C4 12                    3567 	.db #0x12	; 18
      0011C5 26                    3568 	.db #0x26	; 38
      0011C6 25                    3569 	.db #0x25	; 37
      0011C7 22                    3570 	.db #0x22	; 34
      0011C8 0F                    3571 	.db #0x0f	; 15
      0011C9 2B                    3572 	.db #0x2b	; 43
      0011CA 3C                    3573 	.db #0x3c	; 60
      0011CB 81                    3574 	.db #0x81	; 129
      0011CC 9B                    3575 	.db #0x9b	; 155
      0011CD BE                    3576 	.db #0xbe	; 190
      0011CE CC                    3577 	.db #0xcc	; 204
      0011CF AB                    3578 	.db #0xab	; 171
      0011D0 9C                    3579 	.db #0x9c	; 156
      0011D1 98                    3580 	.db #0x98	; 152
      0011D2 02                    3581 	.db #0x02	; 2
      0011D3 24                    3582 	.db #0x24	; 36
      0011D4 43                    3583 	.db #0x43	; 67	'C'
      0011D5 22                    3584 	.db #0x22	; 34
      0011D6 12                    3585 	.db #0x12	; 18
      0011D7 88                    3586 	.db #0x88	; 136
      0011D8 CA                    3587 	.db #0xca	; 202
      0011D9 B0                    3588 	.db #0xb0	; 176
      0011DA 89                    3589 	.db #0x89	; 137
      0011DB 28                    3590 	.db #0x28	; 40
      0011DC 26                    3591 	.db #0x26	; 38
      0011DD 45                    3592 	.db #0x45	; 69	'E'
      0011DE 51                    3593 	.db #0x51	; 81	'Q'
      0011DF 28                    3594 	.db #0x28	; 40
      0011E0 98                    3595 	.db #0x98	; 152
      0011E1 E1                    3596 	.db #0xe1	; 225
      0011E2 B9                    3597 	.db #0xb9	; 185
      0011E3 DB                    3598 	.db #0xdb	; 219
      0011E4 BA                    3599 	.db #0xba	; 186
      0011E5 99                    3600 	.db #0x99	; 153
      0011E6 2A                    3601 	.db #0x2a	; 42
      0011E7 38                    3602 	.db #0x38	; 56	'8'
      0011E8 15                    3603 	.db #0x15	; 21
      0011E9 15                    3604 	.db #0x15	; 21
      0011EA 31                    3605 	.db #0x31	; 49	'1'
      0011EB 10                    3606 	.db #0x10	; 16
      0011EC 98                    3607 	.db #0x98	; 152
      0011ED 88                    3608 	.db #0x88	; 136
      0011EE 0C                    3609 	.db #0x0c	; 12
      0011EF 8A                    3610 	.db #0x8a	; 138
      0011F0 A1                    3611 	.db #0xa1	; 161
      0011F1 05                    3612 	.db #0x05	; 5
      0011F2 44                    3613 	.db #0x44	; 68	'D'
      0011F3 60                    3614 	.db #0x60	; 96
      0011F4 10                    3615 	.db #0x10	; 16
      0011F5 80                    3616 	.db #0x80	; 128
      0011F6 A0                    3617 	.db #0xa0	; 160
      0011F7 DB                    3618 	.db #0xdb	; 219
      0011F8 BC                    3619 	.db #0xbc	; 188
      0011F9 9D                    3620 	.db #0x9d	; 157
      0011FA 9B                    3621 	.db #0x9b	; 155
      0011FB 88                    3622 	.db #0x88	; 136
      0011FC 20                    3623 	.db #0x20	; 32
      0011FD 43                    3624 	.db #0x43	; 67	'C'
      0011FE 24                    3625 	.db #0x24	; 36
      0011FF 14                    3626 	.db #0x14	; 20
      001200 01                    3627 	.db #0x01	; 1
      001201 90                    3628 	.db #0x90	; 144
      001202 99                    3629 	.db #0x99	; 153
      001203 AA                    3630 	.db #0xaa	; 170
      001204 A9                    3631 	.db #0xa9	; 169
      001205 18                    3632 	.db #0x18	; 24
      001206 61                    3633 	.db #0x61	; 97	'a'
      001207 53                    3634 	.db #0x53	; 83	'S'
      001208 24                    3635 	.db #0x24	; 36
      001209 13                    3636 	.db #0x13	; 19
      00120A 10                    3637 	.db #0x10	; 16
      00120B AB                    3638 	.db #0xab	; 171
      00120C F9                    3639 	.db #0xf9	; 249
      00120D DC                    3640 	.db #0xdc	; 220
      00120E 9B                    3641 	.db #0x9b	; 155
      00120F 9C                    3642 	.db #0x9c	; 156
      001210 88                    3643 	.db #0x88	; 136
      001211 20                    3644 	.db #0x20	; 32
      001212 51                    3645 	.db #0x51	; 81	'Q'
      001213 22                    3646 	.db #0x22	; 34
      001214 13                    3647 	.db #0x13	; 19
      001215 82                    3648 	.db #0x82	; 130
      001216 88                    3649 	.db #0x88	; 136
      001217 9B                    3650 	.db #0x9b	; 155
      001218 BB                    3651 	.db #0xbb	; 187
      001219 99                    3652 	.db #0x99	; 153
      00121A 39                    3653 	.db #0x39	; 57	'9'
      00121B 70                    3654 	.db #0x70	; 112	'p'
      00121C 53                    3655 	.db #0x53	; 83	'S'
      00121D 33                    3656 	.db #0x33	; 51	'3'
      00121E 14                    3657 	.db #0x14	; 20
      00121F 22                    3658 	.db #0x22	; 34
      001220 09                    3659 	.db #0x09	; 9
      001221 DB                    3660 	.db #0xdb	; 219
      001222 FB                    3661 	.db #0xfb	; 251
      001223 CA                    3662 	.db #0xca	; 202
      001224 9C                    3663 	.db #0x9c	; 156
      001225 9A                    3664 	.db #0x9a	; 154
      001226 09                    3665 	.db #0x09	; 9
      001227 30                    3666 	.db #0x30	; 48	'0'
      001228 52                    3667 	.db #0x52	; 82	'R'
      001229 33                    3668 	.db #0x33	; 51	'3'
      00122A 23                    3669 	.db #0x23	; 35
      00122B 81                    3670 	.db #0x81	; 129
      00122C C0                    3671 	.db #0xc0	; 192
      00122D C8                    3672 	.db #0xc8	; 200
      00122E 99                    3673 	.db #0x99	; 153
      00122F 0A                    3674 	.db #0x0a	; 10
      001230 29                    3675 	.db #0x29	; 41
      001231 33                    3676 	.db #0x33	; 51	'3'
      001232 27                    3677 	.db #0x27	; 39
      001233 43                    3678 	.db #0x43	; 67	'C'
      001234 22                    3679 	.db #0x22	; 34
      001235 11                    3680 	.db #0x11	; 17
      001236 80                    3681 	.db #0x80	; 128
      001237 BA                    3682 	.db #0xba	; 186
      001238 DE                    3683 	.db #0xde	; 222
      001239 EB                    3684 	.db #0xeb	; 235
      00123A CA                    3685 	.db #0xca	; 202
      00123B A9                    3686 	.db #0xa9	; 169
      00123C 09                    3687 	.db #0x09	; 9
      00123D 10                    3688 	.db #0x10	; 16
      00123E 43                    3689 	.db #0x43	; 67	'C'
      00123F 43                    3690 	.db #0x43	; 67	'C'
      001240 22                    3691 	.db #0x22	; 34
      001241 02                    3692 	.db #0x02	; 2
      001242 A1                    3693 	.db #0xa1	; 161
      001243 B9                    3694 	.db #0xb9	; 185
      001244 8C                    3695 	.db #0x8c	; 140
      001245 8C                    3696 	.db #0x8c	; 140
      001246 80                    3697 	.db #0x80	; 128
      001247 32                    3698 	.db #0x32	; 50	'2'
      001248 44                    3699 	.db #0x44	; 68	'D'
      001249 33                    3700 	.db #0x33	; 51	'3'
      00124A 15                    3701 	.db #0x15	; 21
      00124B 22                    3702 	.db #0x22	; 34
      00124C 1A                    3703 	.db #0x1a	; 26
      00124D AA                    3704 	.db #0xaa	; 170
      00124E FA                    3705 	.db #0xfa	; 250
      00124F CC                    3706 	.db #0xcc	; 204
      001250 AC                    3707 	.db #0xac	; 172
      001251 9C                    3708 	.db #0x9c	; 156
      001252 8A                    3709 	.db #0x8a	; 138
      001253 00                    3710 	.db #0x00	; 0
      001254 32                    3711 	.db #0x32	; 50	'2'
      001255 44                    3712 	.db #0x44	; 68	'D'
      001256 23                    3713 	.db #0x23	; 35
      001257 12                    3714 	.db #0x12	; 18
      001258 80                    3715 	.db #0x80	; 128
      001259 A8                    3716 	.db #0xa8	; 168
      00125A D9                    3717 	.db #0xd9	; 217
      00125B B8                    3718 	.db #0xb8	; 184
      00125C 18                    3719 	.db #0x18	; 24
      00125D 58                    3720 	.db #0x58	; 88	'X'
      00125E 31                    3721 	.db #0x31	; 49	'1'
      00125F 14                    3722 	.db #0x14	; 20
      001260 24                    3723 	.db #0x24	; 36
      001261 22                    3724 	.db #0x22	; 34
      001262 80                    3725 	.db #0x80	; 128
      001263 C2                    3726 	.db #0xc2	; 194
      001264 B0                    3727 	.db #0xb0	; 176
      001265 BE                    3728 	.db #0xbe	; 190
      001266 BF                    3729 	.db #0xbf	; 191
      001267 DB                    3730 	.db #0xdb	; 219
      001268 A9                    3731 	.db #0xa9	; 169
      001269 88                    3732 	.db #0x88	; 136
      00126A 11                    3733 	.db #0x11	; 17
      00126B 52                    3734 	.db #0x52	; 82	'R'
      00126C 33                    3735 	.db #0x33	; 51	'3'
      00126D 42                    3736 	.db #0x42	; 66	'B'
      00126E 10                    3737 	.db #0x10	; 16
      00126F 98                    3738 	.db #0x98	; 152
      001270 A8                    3739 	.db #0xa8	; 168
      001271 9B                    3740 	.db #0x9b	; 155
      001272 8B                    3741 	.db #0x8b	; 139
      001273 00                    3742 	.db #0x00	; 0
      001274 63                    3743 	.db #0x63	; 99	'c'
      001275 61                    3744 	.db #0x61	; 97	'a'
      001276 21                    3745 	.db #0x21	; 33
      001277 03                    3746 	.db #0x03	; 3
      001278 02                    3747 	.db #0x02	; 2
      001279 00                    3748 	.db #0x00	; 0
      00127A A9                    3749 	.db #0xa9	; 169
      00127B F8                    3750 	.db #0xf8	; 248
      00127C AD                    3751 	.db #0xad	; 173
      00127D AE                    3752 	.db #0xae	; 174
      00127E CA                    3753 	.db #0xca	; 202
      00127F A8                    3754 	.db #0xa8	; 168
      001280 18                    3755 	.db #0x18	; 24
      001281 30                    3756 	.db #0x30	; 48	'0'
      001282 43                    3757 	.db #0x43	; 67	'C'
      001283 25                    3758 	.db #0x25	; 37
      001284 21                    3759 	.db #0x21	; 33
      001285 00                    3760 	.db #0x00	; 0
      001286 A8                    3761 	.db #0xa8	; 168
      001287 B8                    3762 	.db #0xb8	; 184
      001288 AA                    3763 	.db #0xaa	; 170
      001289 9A                    3764 	.db #0x9a	; 154
      00128A 02                    3765 	.db #0x02	; 2
      00128B 45                    3766 	.db #0x45	; 69	'E'
      00128C 51                    3767 	.db #0x51	; 81	'Q'
      00128D 21                    3768 	.db #0x21	; 33
      00128E 12                    3769 	.db #0x12	; 18
      00128F 01                    3770 	.db #0x01	; 1
      001290 B1                    3771 	.db #0xb1	; 177
      001291 D2                    3772 	.db #0xd2	; 210
      001292 D8                    3773 	.db #0xd8	; 216
      001293 AD                    3774 	.db #0xad	; 173
      001294 9F                    3775 	.db #0x9f	; 159
      001295 AA                    3776 	.db #0xaa	; 170
      001296 A8                    3777 	.db #0xa8	; 168
      001297 00                    3778 	.db #0x00	; 0
      001298 31                    3779 	.db #0x31	; 49	'1'
      001299 34                    3780 	.db #0x34	; 52	'4'
      00129A 15                    3781 	.db #0x15	; 21
      00129B 13                    3782 	.db #0x13	; 19
      00129C 00                    3783 	.db #0x00	; 0
      00129D A8                    3784 	.db #0xa8	; 168
      00129E B9                    3785 	.db #0xb9	; 185
      00129F AA                    3786 	.db #0xaa	; 170
      0012A0 8B                    3787 	.db #0x8b	; 139
      0012A1 11                    3788 	.db #0x11	; 17
      0012A2 26                    3789 	.db #0x26	; 38
      0012A3 53                    3790 	.db #0x53	; 83	'S'
      0012A4 32                    3791 	.db #0x32	; 50	'2'
      0012A5 12                    3792 	.db #0x12	; 18
      0012A6 83                    3793 	.db #0x83	; 131
      0012A7 80                    3794 	.db #0x80	; 128
      0012A8 B8                    3795 	.db #0xb8	; 184
      0012A9 FB                    3796 	.db #0xfb	; 251
      0012AA CF                    3797 	.db #0xcf	; 207
      0012AB 9C                    3798 	.db #0x9c	; 156
      0012AC AB                    3799 	.db #0xab	; 171
      0012AD 99                    3800 	.db #0x99	; 153
      0012AE 00                    3801 	.db #0x00	; 0
      0012AF 52                    3802 	.db #0x52	; 82	'R'
      0012B0 42                    3803 	.db #0x42	; 66	'B'
      0012B1 13                    3804 	.db #0x13	; 19
      0012B2 04                    3805 	.db #0x04	; 4
      0012B3 00                    3806 	.db #0x00	; 0
      0012B4 0A                    3807 	.db #0x0a	; 10
      0012B5 BA                    3808 	.db #0xba	; 186
      0012B6 B8                    3809 	.db #0xb8	; 184
      0012B7 88                    3810 	.db #0x88	; 136
      0012B8 28                    3811 	.db #0x28	; 40
      0012B9 24                    3812 	.db #0x24	; 36
      0012BA 16                    3813 	.db #0x16	; 22
      0012BB 32                    3814 	.db #0x32	; 50	'2'
      0012BC 22                    3815 	.db #0x22	; 34
      0012BD 03                    3816 	.db #0x03	; 3
      0012BE 12                    3817 	.db #0x12	; 18
      0012BF 2A                    3818 	.db #0x2a	; 42
      0012C0 BF                    3819 	.db #0xbf	; 191
      0012C1 CF                    3820 	.db #0xcf	; 207
      0012C2 AC                    3821 	.db #0xac	; 172
      0012C3 BB                    3822 	.db #0xbb	; 187
      0012C4 A9                    3823 	.db #0xa9	; 169
      0012C5 00                    3824 	.db #0x00	; 0
      0012C6 43                    3825 	.db #0x43	; 67	'C'
      0012C7 B8                    3826 	.db #0xb8	; 184
      0012C8 E1                    3827 	.db #0xe1	; 225
      0012C9 3D                    3828 	.db #0x3d	; 61
      0012CA 25                    3829 	.db #0x25	; 37
      0012CB 23                    3830 	.db #0x23	; 35
      0012CC 01                    3831 	.db #0x01	; 1
      0012CD 90                    3832 	.db #0x90	; 144
      0012CE A9                    3833 	.db #0xa9	; 169
      0012CF AB                    3834 	.db #0xab	; 171
      0012D0 BB                    3835 	.db #0xbb	; 187
      0012D1 09                    3836 	.db #0x09	; 9
      0012D2 43                    3837 	.db #0x43	; 67	'C'
      0012D3 54                    3838 	.db #0x54	; 84	'T'
      0012D4 33                    3839 	.db #0x33	; 51	'3'
      0012D5 25                    3840 	.db #0x25	; 37
      0012D6 22                    3841 	.db #0x22	; 34
      0012D7 11                    3842 	.db #0x11	; 17
      0012D8 90                    3843 	.db #0x90	; 144
      0012D9 A8                    3844 	.db #0xa8	; 168
      0012DA EF                    3845 	.db #0xef	; 239
      0012DB CC                    3846 	.db #0xcc	; 204
      0012DC BA                    3847 	.db #0xba	; 186
      0012DD 9A                    3848 	.db #0x9a	; 154
      0012DE 0A                    3849 	.db #0x0a	; 10
      0012DF 21                    3850 	.db #0x21	; 33
      0012E0 44                    3851 	.db #0x44	; 68	'D'
      0012E1 33                    3852 	.db #0x33	; 51	'3'
      0012E2 33                    3853 	.db #0x33	; 51	'3'
      0012E3 21                    3854 	.db #0x21	; 33
      0012E4 89                    3855 	.db #0x89	; 137
      0012E5 BA                    3856 	.db #0xba	; 186
      0012E6 DB                    3857 	.db #0xdb	; 219
      0012E7 A9                    3858 	.db #0xa9	; 169
      0012E8 08                    3859 	.db #0x08	; 8
      0012E9 31                    3860 	.db #0x31	; 49	'1'
      0012EA 35                    3861 	.db #0x35	; 53	'5'
      0012EB 34                    3862 	.db #0x34	; 52	'4'
      0012EC 62                    3863 	.db #0x62	; 98	'b'
      0012ED 10                    3864 	.db #0x10	; 16
      0012EE 80                    3865 	.db #0x80	; 128
      0012EF 81                    3866 	.db #0x81	; 129
      0012F0 00                    3867 	.db #0x00	; 0
      0012F1 DB                    3868 	.db #0xdb	; 219
      0012F2 CF                    3869 	.db #0xcf	; 207
      0012F3 CB                    3870 	.db #0xcb	; 203
      0012F4 BA                    3871 	.db #0xba	; 186
      0012F5 99                    3872 	.db #0x99	; 153
      0012F6 28                    3873 	.db #0x28	; 40
      0012F7 41                    3874 	.db #0x41	; 65	'A'
      0012F8 53                    3875 	.db #0x53	; 83	'S'
      0012F9 32                    3876 	.db #0x32	; 50	'2'
      0012FA 12                    3877 	.db #0x12	; 18
      0012FB 82                    3878 	.db #0x82	; 130
      0012FC 88                    3879 	.db #0x88	; 136
      0012FD 9B                    3880 	.db #0x9b	; 155
      0012FE DB                    3881 	.db #0xdb	; 219
      0012FF A8                    3882 	.db #0xa8	; 168
      001300 28                    3883 	.db #0x28	; 40
      001301 42                    3884 	.db #0x42	; 66	'B'
      001302 34                    3885 	.db #0x34	; 52	'4'
      001303 43                    3886 	.db #0x43	; 67	'C'
      001304 22                    3887 	.db #0x22	; 34
      001305 11                    3888 	.db #0x11	; 17
      001306 00                    3889 	.db #0x00	; 0
      001307 08                    3890 	.db #0x08	; 8
      001308 09                    3891 	.db #0x09	; 9
      001309 FF                    3892 	.db #0xff	; 255
      00130A CD                    3893 	.db #0xcd	; 205
      00130B C9                    3894 	.db #0xc9	; 201
      00130C 99                    3895 	.db #0x99	; 153
      00130D 09                    3896 	.db #0x09	; 9
      00130E 28                    3897 	.db #0x28	; 40
      00130F 33                    3898 	.db #0x33	; 51	'3'
      001310 25                    3899 	.db #0x25	; 37
      001311 23                    3900 	.db #0x23	; 35
      001312 13                    3901 	.db #0x13	; 19
      001313 91                    3902 	.db #0x91	; 145
      001314 B8                    3903 	.db #0xb8	; 184
      001315 8C                    3904 	.db #0x8c	; 140
      001316 8D                    3905 	.db #0x8d	; 141
      001317 89                    3906 	.db #0x89	; 137
      001318 00                    3907 	.db #0x00	; 0
      001319 32                    3908 	.db #0x32	; 50	'2'
      00131A 43                    3909 	.db #0x43	; 67	'C'
      00131B 33                    3910 	.db #0x33	; 51	'3'
      00131C 32                    3911 	.db #0x32	; 50	'2'
      00131D 21                    3912 	.db #0x21	; 33
      00131E 02                    3913 	.db #0x02	; 2
      00131F C4                    3914 	.db #0xc4	; 196
      001320 DB                    3915 	.db #0xdb	; 219
      001321 DF                    3916 	.db #0xdf	; 223
      001322 BB                    3917 	.db #0xbb	; 187
      001323 BA                    3918 	.db #0xba	; 186
      001324 9A                    3919 	.db #0x9a	; 154
      001325 19                    3920 	.db #0x19	; 25
      001326 43                    3921 	.db #0x43	; 67	'C'
      001327 35                    3922 	.db #0x35	; 53	'5'
      001328 42                    3923 	.db #0x42	; 66	'B'
      001329 23                    3924 	.db #0x23	; 35
      00132A 01                    3925 	.db #0x01	; 1
      00132B 90                    3926 	.db #0x90	; 144
      00132C BA                    3927 	.db #0xba	; 186
      00132D AC                    3928 	.db #0xac	; 172
      00132E 9B                    3929 	.db #0x9b	; 155
      00132F 88                    3930 	.db #0x88	; 136
      001330 42                    3931 	.db #0x42	; 66	'B'
      001331 53                    3932 	.db #0x53	; 83	'S'
      001332 14                    3933 	.db #0x14	; 20
      001333 13                    3934 	.db #0x13	; 19
      001334 21                    3935 	.db #0x21	; 33
      001335 21                    3936 	.db #0x21	; 33
      001336 20                    3937 	.db #0x20	; 32
      001337 D9                    3938 	.db #0xd9	; 217
      001338 FD                    3939 	.db #0xfd	; 253
      001339 CB                    3940 	.db #0xcb	; 203
      00133A BB                    3941 	.db #0xbb	; 187
      00133B BA                    3942 	.db #0xba	; 186
      00133C 99                    3943 	.db #0x99	; 153
      00133D 31                    3944 	.db #0x31	; 49	'1'
      00133E 54                    3945 	.db #0x54	; 84	'T'
      00133F 42                    3946 	.db #0x42	; 66	'B'
      001340 32                    3947 	.db #0x32	; 50	'2'
      001341 12                    3948 	.db #0x12	; 18
      001342 81                    3949 	.db #0x81	; 129
      001343 B0                    3950 	.db #0xb0	; 176
      001344 C9                    3951 	.db #0xc9	; 201
      001345 AA                    3952 	.db #0xaa	; 170
      001346 9B                    3953 	.db #0x9b	; 155
      001347 0A                    3954 	.db #0x0a	; 10
      001348 42                    3955 	.db #0x42	; 66	'B'
      001349 44                    3956 	.db #0x44	; 68	'D'
      00134A 43                    3957 	.db #0x43	; 67	'C'
      00134B 21                    3958 	.db #0x21	; 33
      00134C 13                    3959 	.db #0x13	; 19
      00134D 33                    3960 	.db #0x33	; 51	'3'
      00134E 90                    3961 	.db #0x90	; 144
      00134F FC                    3962 	.db #0xfc	; 252
      001350 EC                    3963 	.db #0xec	; 236
      001351 BA                    3964 	.db #0xba	; 186
      001352 9B                    3965 	.db #0x9b	; 155
      001353 8B                    3966 	.db #0x8b	; 139
      001354 09                    3967 	.db #0x09	; 9
      001355 23                    3968 	.db #0x23	; 35
      001356 26                    3969 	.db #0x26	; 38
      001357 24                    3970 	.db #0x24	; 36
      001358 12                    3971 	.db #0x12	; 18
      001359 12                    3972 	.db #0x12	; 18
      00135A 10                    3973 	.db #0x10	; 16
      00135B 8A                    3974 	.db #0x8a	; 138
      00135C DA                    3975 	.db #0xda	; 218
      00135D AA                    3976 	.db #0xaa	; 170
      00135E 99                    3977 	.db #0x99	; 153
      00135F 08                    3978 	.db #0x08	; 8
      001360 42                    3979 	.db #0x42	; 66	'B'
      001361 53                    3980 	.db #0x53	; 83	'S'
      001362 32                    3981 	.db #0x32	; 50	'2'
      001363 43                    3982 	.db #0x43	; 67	'C'
      001364 41                    3983 	.db #0x41	; 65	'A'
      001365 80                    3984 	.db #0x80	; 128
      001366 D3                    3985 	.db #0xd3	; 211
      001367 E8                    3986 	.db #0xe8	; 232
      001368 AD                    3987 	.db #0xad	; 173
      001369 AC                    3988 	.db #0xac	; 172
      00136A 9A                    3989 	.db #0x9a	; 154
      00136B 8A                    3990 	.db #0x8a	; 138
      00136C 00                    3991 	.db #0x00	; 0
      00136D 33                    3992 	.db #0x33	; 51	'3'
      00136E 35                    3993 	.db #0x35	; 53	'5'
      00136F 43                    3994 	.db #0x43	; 67	'C'
      001370 21                    3995 	.db #0x21	; 33
      001371 11                    3996 	.db #0x11	; 17
      001372 A1                    3997 	.db #0xa1	; 161
      001373 C0                    3998 	.db #0xc0	; 192
      001374 A9                    3999 	.db #0xa9	; 169
      001375 AB                    4000 	.db #0xab	; 171
      001376 0C                    4001 	.db #0x0c	; 12
      001377 29                    4002 	.db #0x29	; 41
      001378 51                    4003 	.db #0x51	; 81	'Q'
      001379 33                    4004 	.db #0x33	; 51	'3'
      00137A 15                    4005 	.db #0x15	; 21
      00137B 23                    4006 	.db #0x23	; 35
      00137C 52                    4007 	.db #0x52	; 82	'R'
      00137D 10                    4008 	.db #0x10	; 16
      00137E B8                    4009 	.db #0xb8	; 184
      00137F FD                    4010 	.db #0xfd	; 253
      001380 CB                    4011 	.db #0xcb	; 203
      001381 AA                    4012 	.db #0xaa	; 170
      001382 9A                    4013 	.db #0x9a	; 154
      001383 89                    4014 	.db #0x89	; 137
      001384 28                    4015 	.db #0x28	; 40
      001385 33                    4016 	.db #0x33	; 51	'3'
      001386 26                    4017 	.db #0x26	; 38
      001387 33                    4018 	.db #0x33	; 51	'3'
      001388 22                    4019 	.db #0x22	; 34
      001389 12                    4020 	.db #0x12	; 18
      00138A 00                    4021 	.db #0x00	; 0
      00138B AA                    4022 	.db #0xaa	; 170
      00138C BC                    4023 	.db #0xbc	; 188
      00138D DA                    4024 	.db #0xda	; 218
      00138E 99                    4025 	.db #0x99	; 153
      00138F 11                    4026 	.db #0x11	; 17
      001390 52                    4027 	.db #0x52	; 82	'R'
      001391 42                    4028 	.db #0x42	; 66	'B'
      001392 23                    4029 	.db #0x23	; 35
      001393 33                    4030 	.db #0x33	; 51	'3'
      001394 32                    4031 	.db #0x32	; 50	'2'
      001395 84                    4032 	.db #0x84	; 132
      001396 FA                    4033 	.db #0xfa	; 250
      001397 BD                    4034 	.db #0xbd	; 189
      001398 BD                    4035 	.db #0xbd	; 189
      001399 AB                    4036 	.db #0xab	; 171
      00139A AA                    4037 	.db #0xaa	; 170
      00139B 89                    4038 	.db #0x89	; 137
      00139C 21                    4039 	.db #0x21	; 33
      00139D 44                    4040 	.db #0x44	; 68	'D'
      00139E 43                    4041 	.db #0x43	; 67	'C'
      00139F 32                    4042 	.db #0x32	; 50	'2'
      0013A0 13                    4043 	.db #0x13	; 19
      0013A1 02                    4044 	.db #0x02	; 2
      0013A2 A1                    4045 	.db #0xa1	; 161
      0013A3 99                    4046 	.db #0x99	; 153
      0013A4 9E                    4047 	.db #0x9e	; 158
      0013A5 9A                    4048 	.db #0x9a	; 154
      0013A6 88                    4049 	.db #0x88	; 136
      0013A7 12                    4050 	.db #0x12	; 18
      0013A8 34                    4051 	.db #0x34	; 52	'4'
      0013A9 63                    4052 	.db #0x63	; 99	'c'
      0013AA 32                    4053 	.db #0x32	; 50	'2'
      0013AB 34                    4054 	.db #0x34	; 52	'4'
      0013AC 12                    4055 	.db #0x12	; 18
      0013AD DA                    4056 	.db #0xda	; 218
      0013AE DD                    4057 	.db #0xdd	; 221
      0013AF DA                    4058 	.db #0xda	; 218
      0013B0 B9                    4059 	.db #0xb9	; 185
      0013B1 A9                    4060 	.db #0xa9	; 169
      0013B2 89                    4061 	.db #0x89	; 137
      0013B3 28                    4062 	.db #0x28	; 40
      0013B4 43                    4063 	.db #0x43	; 67	'C'
      0013B5 43                    4064 	.db #0x43	; 67	'C'
      0013B6 23                    4065 	.db #0x23	; 35
      0013B7 23                    4066 	.db #0x23	; 35
      0013B8 12                    4067 	.db #0x12	; 18
      0013B9 80                    4068 	.db #0x80	; 128
      0013BA AB                    4069 	.db #0xab	; 171
      0013BB BA                    4070 	.db #0xba	; 186
      0013BC CA                    4071 	.db #0xca	; 202
      0013BD A9                    4072 	.db #0xa9	; 169
      0013BE 32                    4073 	.db #0x32	; 50	'2'
      0013BF 35                    4074 	.db #0x35	; 53	'5'
      0013C0 52                    4075 	.db #0x52	; 82	'R'
      0013C1 34                    4076 	.db #0x34	; 52	'4'
      0013C2 34                    4077 	.db #0x34	; 52	'4'
      0013C3 02                    4078 	.db #0x02	; 2
      0013C4 E1                    4079 	.db #0xe1	; 225
      0013C5 AC                    4080 	.db #0xac	; 172
      0013C6 B7                    4081 	.db #0xb7	; 183
      0013C7 04                    4082 	.db #0x04	; 4
      0013C8 39                    4083 	.db #0x39	; 57	'9'
      0013C9 DC                    4084 	.db #0xdc	; 220
      0013CA AB                    4085 	.db #0xab	; 171
      0013CB 8B                    4086 	.db #0x8b	; 139
      0013CC 19                    4087 	.db #0x19	; 25
      0013CD 20                    4088 	.db #0x20	; 32
      0013CE 34                    4089 	.db #0x34	; 52	'4'
      0013CF 25                    4090 	.db #0x25	; 37
      0013D0 14                    4091 	.db #0x14	; 20
      0013D1 21                    4092 	.db #0x21	; 33
      0013D2 10                    4093 	.db #0x10	; 16
      0013D3 08                    4094 	.db #0x08	; 8
      0013D4 B9                    4095 	.db #0xb9	; 185
      0013D5 C9                    4096 	.db #0xc9	; 201
      0013D6 A8                    4097 	.db #0xa8	; 168
      0013D7 10                    4098 	.db #0x10	; 16
      0013D8 41                    4099 	.db #0x41	; 65	'A'
      0013D9 53                    4100 	.db #0x53	; 83	'S'
      0013DA 43                    4101 	.db #0x43	; 67	'C'
      0013DB 22                    4102 	.db #0x22	; 34
      0013DC 12                    4103 	.db #0x12	; 18
      0013DD C1                    4104 	.db #0xc1	; 193
      0013DE DD                    4105 	.db #0xdd	; 221
      0013DF CC                    4106 	.db #0xcc	; 204
      0013E0 CA                    4107 	.db #0xca	; 202
      0013E1 AA                    4108 	.db #0xaa	; 170
      0013E2 89                    4109 	.db #0x89	; 137
      0013E3 10                    4110 	.db #0x10	; 16
      0013E4 22                    4111 	.db #0x22	; 34
      0013E5 35                    4112 	.db #0x35	; 53	'5'
      0013E6 33                    4113 	.db #0x33	; 51	'3'
      0013E7 22                    4114 	.db #0x22	; 34
      0013E8 22                    4115 	.db #0x22	; 34
      0013E9 80                    4116 	.db #0x80	; 128
      0013EA A8                    4117 	.db #0xa8	; 168
      0013EB BA                    4118 	.db #0xba	; 186
      0013EC 9C                    4119 	.db #0x9c	; 156
      0013ED 88                    4120 	.db #0x88	; 136
      0013EE 02                    4121 	.db #0x02	; 2
      0013EF 53                    4122 	.db #0x53	; 83	'S'
      0013F0 44                    4123 	.db #0x44	; 68	'D'
      0013F1 43                    4124 	.db #0x43	; 67	'C'
      0013F2 32                    4125 	.db #0x32	; 50	'2'
      0013F3 81                    4126 	.db #0x81	; 129
      0013F4 FB                    4127 	.db #0xfb	; 251
      0013F5 CC                    4128 	.db #0xcc	; 204
      0013F6 BC                    4129 	.db #0xbc	; 188
      0013F7 CB                    4130 	.db #0xcb	; 203
      0013F8 AA                    4131 	.db #0xaa	; 170
      0013F9 80                    4132 	.db #0x80	; 128
      0013FA 22                    4133 	.db #0x22	; 34
      0013FB 53                    4134 	.db #0x53	; 83	'S'
      0013FC 43                    4135 	.db #0x43	; 67	'C'
      0013FD 22                    4136 	.db #0x22	; 34
      0013FE 11                    4137 	.db #0x11	; 17
      0013FF 00                    4138 	.db #0x00	; 0
      001400 00                    4139 	.db #0x00	; 0
      001401 98                    4140 	.db #0x98	; 152
      001402 AA                    4141 	.db #0xaa	; 170
      001403 8B                    4142 	.db #0x8b	; 139
      001404 18                    4143 	.db #0x18	; 24
      001405 33                    4144 	.db #0x33	; 51	'3'
      001406 73                    4145 	.db #0x73	; 115	's'
      001407 54                    4146 	.db #0x54	; 84	'T'
      001408 23                    4147 	.db #0x23	; 35
      001409 08                    4148 	.db #0x08	; 8
      00140A A8                    4149 	.db #0xa8	; 168
      00140B FC                    4150 	.db #0xfc	; 252
      00140C CC                    4151 	.db #0xcc	; 204
      00140D BB                    4152 	.db #0xbb	; 187
      00140E AB                    4153 	.db #0xab	; 171
      00140F 08                    4154 	.db #0x08	; 8
      001410 10                    4155 	.db #0x10	; 16
      001411 43                    4156 	.db #0x43	; 67	'C'
      001412 25                    4157 	.db #0x25	; 37
      001413 23                    4158 	.db #0x23	; 35
      001414 22                    4159 	.db #0x22	; 34
      001415 11                    4160 	.db #0x11	; 17
      001416 08                    4161 	.db #0x08	; 8
      001417 99                    4162 	.db #0x99	; 153
      001418 B9                    4163 	.db #0xb9	; 185
      001419 9B                    4164 	.db #0x9b	; 155
      00141A 28                    4165 	.db #0x28	; 40
      00141B 43                    4166 	.db #0x43	; 67	'C'
      00141C 44                    4167 	.db #0x44	; 68	'D'
      00141D 54                    4168 	.db #0x54	; 84	'T'
      00141E 22                    4169 	.db #0x22	; 34
      00141F 02                    4170 	.db #0x02	; 2
      001420 B8                    4171 	.db #0xb8	; 184
      001421 DF                    4172 	.db #0xdf	; 223
      001422 CB                    4173 	.db #0xcb	; 203
      001423 BB                    4174 	.db #0xbb	; 187
      001424 BB                    4175 	.db #0xbb	; 187
      001425 09                    4176 	.db #0x09	; 9
      001426 21                    4177 	.db #0x21	; 33
      001427 43                    4178 	.db #0x43	; 67	'C'
      001428 35                    4179 	.db #0x35	; 53	'5'
      001429 23                    4180 	.db #0x23	; 35
      00142A 22                    4181 	.db #0x22	; 34
      00142B 01                    4182 	.db #0x01	; 1
      00142C 80                    4183 	.db #0x80	; 128
      00142D 89                    4184 	.db #0x89	; 137
      00142E A9                    4185 	.db #0xa9	; 169
      00142F 99                    4186 	.db #0x99	; 153
      001430 20                    4187 	.db #0x20	; 32
      001431 62                    4188 	.db #0x62	; 98	'b'
      001432 53                    4189 	.db #0x53	; 83	'S'
      001433 43                    4190 	.db #0x43	; 67	'C'
      001434 23                    4191 	.db #0x23	; 35
      001435 12                    4192 	.db #0x12	; 18
      001436 C0                    4193 	.db #0xc0	; 192
      001437 CF                    4194 	.db #0xcf	; 207
      001438 CC                    4195 	.db #0xcc	; 204
      001439 AB                    4196 	.db #0xab	; 171
      00143A AB                    4197 	.db #0xab	; 171
      00143B 89                    4198 	.db #0x89	; 137
      00143C 10                    4199 	.db #0x10	; 16
      00143D 42                    4200 	.db #0x42	; 66	'B'
      00143E 43                    4201 	.db #0x43	; 67	'C'
      00143F 33                    4202 	.db #0x33	; 51	'3'
      001440 24                    4203 	.db #0x24	; 36
      001441 11                    4204 	.db #0x11	; 17
      001442 81                    4205 	.db #0x81	; 129
      001443 98                    4206 	.db #0x98	; 152
      001444 99                    4207 	.db #0x99	; 153
      001445 89                    4208 	.db #0x89	; 137
      001446 19                    4209 	.db #0x19	; 25
      001447 44                    4210 	.db #0x44	; 68	'D'
      001448 25                    4211 	.db #0x25	; 37
      001449 21                    4212 	.db #0x21	; 33
      00144A 15                    4213 	.db #0x15	; 21
      00144B 91                    4214 	.db #0x91	; 145
      00144C BC                    4215 	.db #0xbc	; 188
      00144D DD                    4216 	.db #0xdd	; 221
      00144E CB                    4217 	.db #0xcb	; 203
      00144F AB                    4218 	.db #0xab	; 171
      001450 AA                    4219 	.db #0xaa	; 170
      001451 89                    4220 	.db #0x89	; 137
      001452 21                    4221 	.db #0x21	; 33
      001453 33                    4222 	.db #0x33	; 51	'3'
      001454 35                    4223 	.db #0x35	; 53	'5'
      001455 25                    4224 	.db #0x25	; 37
      001456 12                    4225 	.db #0x12	; 18
      001457 12                    4226 	.db #0x12	; 18
      001458 81                    4227 	.db #0x81	; 129
      001459 88                    4228 	.db #0x88	; 136
      00145A 99                    4229 	.db #0x99	; 153
      00145B 89                    4230 	.db #0x89	; 137
      00145C 42                    4231 	.db #0x42	; 66	'B'
      00145D 54                    4232 	.db #0x54	; 84	'T'
      00145E 43                    4233 	.db #0x43	; 67	'C'
      00145F 11                    4234 	.db #0x11	; 17
      001460 90                    4235 	.db #0x90	; 144
      001461 B0                    4236 	.db #0xb0	; 176
      001462 CF                    4237 	.db #0xcf	; 207
      001463 CC                    4238 	.db #0xcc	; 204
      001464 AB                    4239 	.db #0xab	; 171
      001465 9B                    4240 	.db #0x9b	; 155
      001466 9A                    4241 	.db #0x9a	; 154
      001467 88                    4242 	.db #0x88	; 136
      001468 42                    4243 	.db #0x42	; 66	'B'
      001469 44                    4244 	.db #0x44	; 68	'D'
      00146A 23                    4245 	.db #0x23	; 35
      00146B 23                    4246 	.db #0x23	; 35
      00146C 12                    4247 	.db #0x12	; 18
      00146D 00                    4248 	.db #0x00	; 0
      00146E 00                    4249 	.db #0x00	; 0
      00146F A8                    4250 	.db #0xa8	; 168
      001470 9A                    4251 	.db #0x9a	; 154
      001471 18                    4252 	.db #0x18	; 24
      001472 72                    4253 	.db #0x72	; 114	'r'
      001473 22                    4254 	.db #0x22	; 34
      001474 03                    4255 	.db #0x03	; 3
      001475 42                    4256 	.db #0x42	; 66	'B'
      001476 81                    4257 	.db #0x81	; 129
      001477 F8                    4258 	.db #0xf8	; 248
      001478 BE                    4259 	.db #0xbe	; 190
      001479 DB                    4260 	.db #0xdb	; 219
      00147A AB                    4261 	.db #0xab	; 171
      00147B AB                    4262 	.db #0xab	; 171
      00147C 98                    4263 	.db #0x98	; 152
      00147D 28                    4264 	.db #0x28	; 40
      00147E 53                    4265 	.db #0x53	; 83	'S'
      00147F 34                    4266 	.db #0x34	; 52	'4'
      001480 24                    4267 	.db #0x24	; 36
      001481 23                    4268 	.db #0x23	; 35
      001482 11                    4269 	.db #0x11	; 17
      001483 80                    4270 	.db #0x80	; 128
      001484 A8                    4271 	.db #0xa8	; 168
      001485 AA                    4272 	.db #0xaa	; 170
      001486 9A                    4273 	.db #0x9a	; 154
      001487 08                    4274 	.db #0x08	; 8
      001488 21                    4275 	.db #0x21	; 33
      001489 26                    4276 	.db #0x26	; 38
      00148A 21                    4277 	.db #0x21	; 33
      00148B 42                    4278 	.db #0x42	; 66	'B'
      00148C 93                    4279 	.db #0x93	; 147
      00148D EB                    4280 	.db #0xeb	; 235
      00148E CD                    4281 	.db #0xcd	; 205
      00148F DB                    4282 	.db #0xdb	; 219
      001490 AB                    4283 	.db #0xab	; 171
      001491 9A                    4284 	.db #0x9a	; 154
      001492 89                    4285 	.db #0x89	; 137
      001493 00                    4286 	.db #0x00	; 0
      001494 52                    4287 	.db #0x52	; 82	'R'
      001495 43                    4288 	.db #0x43	; 67	'C'
      001496 33                    4289 	.db #0x33	; 51	'3'
      001497 34                    4290 	.db #0x34	; 52	'4'
      001498 32                    4291 	.db #0x32	; 50	'2'
      001499 12                    4292 	.db #0x12	; 18
      00149A 98                    4293 	.db #0x98	; 152
      00149B CA                    4294 	.db #0xca	; 202
      00149C AC                    4295 	.db #0xac	; 172
      00149D AA                    4296 	.db #0xaa	; 170
      00149E 88                    4297 	.db #0x88	; 136
      00149F 20                    4298 	.db #0x20	; 32
      0014A0 22                    4299 	.db #0x22	; 34
      0014A1 80                    4300 	.db #0x80	; 128
      0014A2 10                    4301 	.db #0x10	; 16
      0014A3 DB                    4302 	.db #0xdb	; 219
      0014A4 AD                    4303 	.db #0xad	; 173
      0014A5 EB                    4304 	.db #0xeb	; 235
      0014A6 CB                    4305 	.db #0xcb	; 203
      0014A7 9A                    4306 	.db #0x9a	; 154
      0014A8 01                    4307 	.db #0x01	; 1
      0014A9 00                    4308 	.db #0x00	; 0
      0014AA 12                    4309 	.db #0x12	; 18
      0014AB 52                    4310 	.db #0x52	; 82	'R'
      0014AC 34                    4311 	.db #0x34	; 52	'4'
      0014AD 34                    4312 	.db #0x34	; 52	'4'
      0014AE 31                    4313 	.db #0x31	; 49	'1'
      0014AF 23                    4314 	.db #0x23	; 35
      0014B0 82                    4315 	.db #0x82	; 130
      0014B1 AA                    4316 	.db #0xaa	; 170
      0014B2 BA                    4317 	.db #0xba	; 186
      0014B3 BF                    4318 	.db #0xbf	; 191
      0014B4 99                    4319 	.db #0x99	; 153
      0014B5 98                    4320 	.db #0x98	; 152
      0014B6 89                    4321 	.db #0x89	; 137
      0014B7 09                    4322 	.db #0x09	; 9
      0014B8 B1                    4323 	.db #0xb1	; 177
      0014B9 E9                    4324 	.db #0xe9	; 233
      0014BA CB                    4325 	.db #0xcb	; 203
      0014BB CA                    4326 	.db #0xca	; 202
      0014BC 98                    4327 	.db #0x98	; 152
      0014BD 89                    4328 	.db #0x89	; 137
      0014BE 11                    4329 	.db #0x11	; 17
      0014BF 64                    4330 	.db #0x64	; 100	'd'
      0014C0 44                    4331 	.db #0x44	; 68	'D'
      0014C1 22                    4332 	.db #0x22	; 34
      0014C2 13                    4333 	.db #0x13	; 19
      0014C3 12                    4334 	.db #0x12	; 18
      0014C4 91                    4335 	.db #0x91	; 145
      0014C5 DC                    4336 	.db #0xdc	; 220
      0014C6 03                    4337 	.db #0x03	; 3
      0014C7 20                    4338 	.db #0x20	; 32
      0014C8 CA                    4339 	.db #0xca	; 202
      0014C9 CA                    4340 	.db #0xca	; 202
      0014CA AD                    4341 	.db #0xad	; 173
      0014CB AA                    4342 	.db #0xaa	; 170
      0014CC BB                    4343 	.db #0xbb	; 187
      0014CD 0A                    4344 	.db #0x0a	; 10
      0014CE 10                    4345 	.db #0x10	; 16
      0014CF 32                    4346 	.db #0x32	; 50	'2'
      0014D0 46                    4347 	.db #0x46	; 70	'F'
      0014D1 33                    4348 	.db #0x33	; 51	'3'
      0014D2 33                    4349 	.db #0x33	; 51	'3'
      0014D3 14                    4350 	.db #0x14	; 20
      0014D4 AA                    4351 	.db #0xaa	; 170
      0014D5 BC                    4352 	.db #0xbc	; 188
      0014D6 CB                    4353 	.db #0xcb	; 203
      0014D7 AF                    4354 	.db #0xaf	; 175
      0014D8 5A                    4355 	.db #0x5a	; 90	'Z'
      0014D9 82                    4356 	.db #0x82	; 130
      0014DA 00                    4357 	.db #0x00	; 0
      0014DB 01                    4358 	.db #0x01	; 1
      0014DC 81                    4359 	.db #0x81	; 129
      0014DD 00                    4360 	.db #0x00	; 0
      0014DE 98                    4361 	.db #0x98	; 152
      0014DF A1                    4362 	.db #0xa1	; 161
      0014E0 88                    4363 	.db #0x88	; 136
      0014E1 B8                    4364 	.db #0xb8	; 184
      0014E2 81                    4365 	.db #0x81	; 129
      0014E3 00                    4366 	.db #0x00	; 0
      0014E4 A0                    4367 	.db #0xa0	; 160
      0014E5 92                    4368 	.db #0x92	; 146
      0014E6 80                    4369 	.db #0x80	; 128
      0014E7 02                    4370 	.db #0x02	; 2
      0014E8 62                    4371 	.db #0x62	; 98	'b'
      0014E9 82                    4372 	.db #0x82	; 130
      0014EA 01                    4373 	.db #0x01	; 1
      0014EB BD                    4374 	.db #0xbd	; 189
      0014EC A5                    4375 	.db #0xa5	; 165
      0014ED 8A                    4376 	.db #0x8a	; 138
      0014EE 98                    4377 	.db #0x98	; 152
      0014EF 80                    4378 	.db #0x80	; 128
      0014F0 A1                    4379 	.db #0xa1	; 161
      0014F1 08                    4380 	.db #0x08	; 8
      0014F2 0B                    4381 	.db #0x0b	; 11
      0014F3 FF                    4382 	.db #0xff	; 255
      0014F4 80                    4383 	.db #0x80	; 128
      0014F5 88                    4384 	.db #0x88	; 136
      0014F6 80                    4385 	.db #0x80	; 128
      0014F7 98                    4386 	.db #0x98	; 152
      0014F8 B0                    4387 	.db #0xb0	; 176
      0014F9 92                    4388 	.db #0x92	; 146
      0014FA 62                    4389 	.db #0x62	; 98	'b'
      0014FB 80                    4390 	.db #0x80	; 128
      0014FC 34                    4391 	.db #0x34	; 52	'4'
      0014FD 94                    4392 	.db #0x94	; 148
      0014FE 12                    4393 	.db #0x12	; 18
      0014FF 42                    4394 	.db #0x42	; 66	'B'
      001500 24                    4395 	.db #0x24	; 36
      001501 32                    4396 	.db #0x32	; 50	'2'
      001502 22                    4397 	.db #0x22	; 34
      001503 8C                    4398 	.db #0x8c	; 140
      001504 C9                    4399 	.db #0xc9	; 201
      001505 AE                    4400 	.db #0xae	; 174
      001506 BC                    4401 	.db #0xbc	; 188
      001507 DB                    4402 	.db #0xdb	; 219
      001508 9B                    4403 	.db #0x9b	; 155
      001509 20                    4404 	.db #0x20	; 32
      00150A 59                    4405 	.db #0x59	; 89	'Y'
      00150B 92                    4406 	.db #0x92	; 146
      00150C 31                    4407 	.db #0x31	; 49	'1'
      00150D 01                    4408 	.db #0x01	; 1
      00150E 23                    4409 	.db #0x23	; 35
      00150F B3                    4410 	.db #0xb3	; 179
      001510 9A                    4411 	.db #0x9a	; 154
      001511 1C                    4412 	.db #0x1c	; 28
      001512 86                    4413 	.db #0x86	; 134
      001513 32                    4414 	.db #0x32	; 50	'2'
      001514 3B                    4415 	.db #0x3b	; 59
      001515 17                    4416 	.db #0x17	; 23
      001516 43                    4417 	.db #0x43	; 67	'C'
      001517 11                    4418 	.db #0x11	; 17
      001518 B0                    4419 	.db #0xb0	; 176
      001519 D1                    4420 	.db #0xd1	; 209
      00151A DB                    4421 	.db #0xdb	; 219
      00151B CA                    4422 	.db #0xca	; 202
      00151C 9D                    4423 	.db #0x9d	; 157
      00151D 8A                    4424 	.db #0x8a	; 138
      00151E 80                    4425 	.db #0x80	; 128
      00151F 11                    4426 	.db #0x11	; 17
      001520 41                    4427 	.db #0x41	; 65	'A'
      001521 41                    4428 	.db #0x41	; 65	'A'
      001522 31                    4429 	.db #0x31	; 49	'1'
      001523 03                    4430 	.db #0x03	; 3
      001524 92                    4431 	.db #0x92	; 146
      001525 98                    4432 	.db #0x98	; 152
      001526 AD                    4433 	.db #0xad	; 173
      001527 BC                    4434 	.db #0xbc	; 188
      001528 99                    4435 	.db #0x99	; 153
      001529 00                    4436 	.db #0x00	; 0
      00152A 41                    4437 	.db #0x41	; 65	'A'
      00152B 60                    4438 	.db #0x60	; 96
      00152C 32                    4439 	.db #0x32	; 50	'2'
      00152D 25                    4440 	.db #0x25	; 37
      00152E 22                    4441 	.db #0x22	; 34
      00152F A1                    4442 	.db #0xa1	; 161
      001530 C9                    4443 	.db #0xc9	; 201
      001531 AD                    4444 	.db #0xad	; 173
      001532 BC                    4445 	.db #0xbc	; 188
      001533 BA                    4446 	.db #0xba	; 186
      001534 99                    4447 	.db #0x99	; 153
      001535 92                    4448 	.db #0x92	; 146
      001536 33                    4449 	.db #0x33	; 51	'3'
      001537 41                    4450 	.db #0x41	; 65	'A'
      001538 42                    4451 	.db #0x42	; 66	'B'
      001539 23                    4452 	.db #0x23	; 35
      00153A 92                    4453 	.db #0x92	; 146
      00153B B9                    4454 	.db #0xb9	; 185
      00153C 9E                    4455 	.db #0x9e	; 158
      00153D BB                    4456 	.db #0xbb	; 187
      00153E DA                    4457 	.db #0xda	; 218
      00153F 90                    4458 	.db #0x90	; 144
      001540 12                    4459 	.db #0x12	; 18
      001541 52                    4460 	.db #0x52	; 82	'R'
      001542 43                    4461 	.db #0x43	; 67	'C'
      001543 23                    4462 	.db #0x23	; 35
      001544 16                    4463 	.db #0x16	; 22
      001545 22                    4464 	.db #0x22	; 34
      001546 9A                    4465 	.db #0x9a	; 154
      001547 AA                    4466 	.db #0xaa	; 170
      001548 AE                    4467 	.db #0xae	; 174
      001549 B9                    4468 	.db #0xb9	; 185
      00154A AB                    4469 	.db #0xab	; 171
      00154B 0A                    4470 	.db #0x0a	; 10
      00154C 90                    4471 	.db #0x90	; 144
      00154D 06                    4472 	.db #0x06	; 6
      00154E 19                    4473 	.db #0x19	; 25
      00154F 88                    4474 	.db #0x88	; 136
      001550 04                    4475 	.db #0x04	; 4
      001551 00                    4476 	.db #0x00	; 0
      001552 BA                    4477 	.db #0xba	; 186
      001553 98                    4478 	.db #0x98	; 152
      001554 A0                    4479 	.db #0xa0	; 160
      001555 30                    4480 	.db #0x30	; 48	'0'
      001556 E3                    4481 	.db #0xe3	; 227
      001557 25                    4482 	.db #0x25	; 37
      001558 62                    4483 	.db #0x62	; 98	'b'
      001559 23                    4484 	.db #0x23	; 35
      00155A 81                    4485 	.db #0x81	; 129
      00155B 80                    4486 	.db #0x80	; 128
      00155C 9A                    4487 	.db #0x9a	; 154
      00155D AC                    4488 	.db #0xac	; 172
      00155E BA                    4489 	.db #0xba	; 186
      00155F AC                    4490 	.db #0xac	; 172
      001560 9A                    4491 	.db #0x9a	; 154
      001561 A9                    4492 	.db #0xa9	; 169
      001562 00                    4493 	.db #0x00	; 0
      001563 19                    4494 	.db #0x19	; 25
      001564 B9                    4495 	.db #0xb9	; 185
      001565 30                    4496 	.db #0x30	; 48	'0'
      001566 04                    4497 	.db #0x04	; 4
      001567 31                    4498 	.db #0x31	; 49	'1'
      001568 73                    4499 	.db #0x73	; 115	's'
      001569 82                    4500 	.db #0x82	; 130
      00156A 81                    4501 	.db #0x81	; 129
      00156B 01                    4502 	.db #0x01	; 1
      00156C A2                    4503 	.db #0xa2	; 162
      00156D 11                    4504 	.db #0x11	; 17
      00156E B2                    4505 	.db #0xb2	; 178
      00156F F0                    4506 	.db #0xf0	; 240
      001570 08                    4507 	.db #0x08	; 8
      001571 08                    4508 	.db #0x08	; 8
      001572 08                    4509 	.db #0x08	; 8
      001573 08                    4510 	.db #0x08	; 8
      001574 09                    4511 	.db #0x09	; 9
      001575 00                    4512 	.db #0x00	; 0
      001576 00                    4513 	.db #0x00	; 0
      001577 00                    4514 	.db #0x00	; 0
      001578 00                    4515 	.db #0x00	; 0
      001579 00                    4516 	.db #0x00	; 0
      00157A 00                    4517 	.db #0x00	; 0
                                   4518 	.area XINIT   (CODE)
                                   4519 	.area CABS    (ABS,CODE)
