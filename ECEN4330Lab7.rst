                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.9 #12669 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module ECEN4330Lab7
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _RAMwrite_PARM_2
                                     12 	.globl _setAddress_PARM_4
                                     13 	.globl _setAddress_PARM_3
                                     14 	.globl _setAddress_PARM_2
                                     15 	.globl _setTextColor_PARM_2
                                     16 	.globl _setCursor_PARM_2
                                     17 	.globl _rtcCmd_PARM_2
                                     18 	.globl _writeRegister16_PARM_2
                                     19 	.globl _writeRegister8_PARM_2
                                     20 	.globl _keypad
                                     21 	.globl _main
                                     22 	.globl _LCD_mainMenu
                                     23 	.globl _FIND
                                     24 	.globl _EDIT
                                     25 	.globl _EDIT_display
                                     26 	.globl _DUMP
                                     27 	.globl _DUMP_display
                                     28 	.globl _COUNT
                                     29 	.globl _MOVE
                                     30 	.globl _RAM_CHECK
                                     31 	.globl _inputDataSize
                                     32 	.globl _inputDataType
                                     33 	.globl _inputRead8
                                     34 	.globl _inputRead16
                                     35 	.globl _invalidInput
                                     36 	.globl _resetLCD
                                     37 	.globl _RAMread
                                     38 	.globl _RAMwrite
                                     39 	.globl _HEXtoASCII_16write
                                     40 	.globl _HEXtoASCII
                                     41 	.globl _ASCIItoHEX
                                     42 	.globl _drawChar
                                     43 	.globl _setRotation
                                     44 	.globl _UART_transmit
                                     45 	.globl _UART_Init
                                     46 	.globl _ISR_receive
                                     47 	.globl _CY
                                     48 	.globl _AC
                                     49 	.globl _F0
                                     50 	.globl _RS1
                                     51 	.globl _RS0
                                     52 	.globl _OV
                                     53 	.globl _FL
                                     54 	.globl _P
                                     55 	.globl _TF2
                                     56 	.globl _EXF2
                                     57 	.globl _RCLK
                                     58 	.globl _TCLK
                                     59 	.globl _EXEN2
                                     60 	.globl _TR2
                                     61 	.globl _C_T2
                                     62 	.globl _CP_RL2
                                     63 	.globl _T2CON_7
                                     64 	.globl _T2CON_6
                                     65 	.globl _T2CON_5
                                     66 	.globl _T2CON_4
                                     67 	.globl _T2CON_3
                                     68 	.globl _T2CON_2
                                     69 	.globl _T2CON_1
                                     70 	.globl _T2CON_0
                                     71 	.globl _PT2
                                     72 	.globl _PS
                                     73 	.globl _PT1
                                     74 	.globl _PX1
                                     75 	.globl _PT0
                                     76 	.globl _PX0
                                     77 	.globl _RD
                                     78 	.globl _WR
                                     79 	.globl _T1
                                     80 	.globl _T0
                                     81 	.globl _INT1
                                     82 	.globl _INT0
                                     83 	.globl _TXD
                                     84 	.globl _RXD
                                     85 	.globl _P3_7
                                     86 	.globl _P3_6
                                     87 	.globl _P3_5
                                     88 	.globl _P3_4
                                     89 	.globl _P3_3
                                     90 	.globl _P3_2
                                     91 	.globl _P3_1
                                     92 	.globl _P3_0
                                     93 	.globl _EA
                                     94 	.globl _ET2
                                     95 	.globl _ES
                                     96 	.globl _ET1
                                     97 	.globl _EX1
                                     98 	.globl _ET0
                                     99 	.globl _EX0
                                    100 	.globl _P2_7
                                    101 	.globl _P2_6
                                    102 	.globl _P2_5
                                    103 	.globl _P2_4
                                    104 	.globl _P2_3
                                    105 	.globl _P2_2
                                    106 	.globl _P2_1
                                    107 	.globl _P2_0
                                    108 	.globl _SM0
                                    109 	.globl _SM1
                                    110 	.globl _SM2
                                    111 	.globl _REN
                                    112 	.globl _TB8
                                    113 	.globl _RB8
                                    114 	.globl _TI
                                    115 	.globl _RI
                                    116 	.globl _T2EX
                                    117 	.globl _T2
                                    118 	.globl _P1_7
                                    119 	.globl _P1_6
                                    120 	.globl _P1_5
                                    121 	.globl _P1_4
                                    122 	.globl _P1_3
                                    123 	.globl _P1_2
                                    124 	.globl _P1_1
                                    125 	.globl _P1_0
                                    126 	.globl _TF1
                                    127 	.globl _TR1
                                    128 	.globl _TF0
                                    129 	.globl _TR0
                                    130 	.globl _IE1
                                    131 	.globl _IT1
                                    132 	.globl _IE0
                                    133 	.globl _IT0
                                    134 	.globl _P0_7
                                    135 	.globl _P0_6
                                    136 	.globl _P0_5
                                    137 	.globl _P0_4
                                    138 	.globl _P0_3
                                    139 	.globl _P0_2
                                    140 	.globl _P0_1
                                    141 	.globl _P0_0
                                    142 	.globl _B
                                    143 	.globl _A
                                    144 	.globl _ACC
                                    145 	.globl _PSW
                                    146 	.globl _TH2
                                    147 	.globl _TL2
                                    148 	.globl _RCAP2H
                                    149 	.globl _RCAP2L
                                    150 	.globl _T2MOD
                                    151 	.globl _T2CON
                                    152 	.globl _IP
                                    153 	.globl _P3
                                    154 	.globl _IE
                                    155 	.globl _P2
                                    156 	.globl _SBUF
                                    157 	.globl _SCON
                                    158 	.globl _P1
                                    159 	.globl _TH1
                                    160 	.globl _TH0
                                    161 	.globl _TL1
                                    162 	.globl _TL0
                                    163 	.globl _TMOD
                                    164 	.globl _TCON
                                    165 	.globl _PCON
                                    166 	.globl _DPH
                                    167 	.globl _DPL
                                    168 	.globl _SP
                                    169 	.globl _P0
                                    170 	.globl _drawChar_PARM_6
                                    171 	.globl _drawChar_PARM_5
                                    172 	.globl _drawChar_PARM_4
                                    173 	.globl _drawChar_PARM_3
                                    174 	.globl _drawChar_PARM_2
                                    175 	.globl _fillRect_PARM_5
                                    176 	.globl _fillRect_PARM_4
                                    177 	.globl _fillRect_PARM_3
                                    178 	.globl _fillRect_PARM_2
                                    179 	.globl _drawPixel_PARM_3
                                    180 	.globl _drawPixel_PARM_2
                                    181 	.globl _rtcWrite_PARM_2
                                    182 	.globl _received_flag
                                    183 	.globl _received_byte
                                    184 	.globl _ts
                                    185 	.globl _y
                                    186 	.globl _x
                                    187 	.globl _textSizeHold
                                    188 	.globl _yCursorHold
                                    189 	.globl _xCursorHold
                                    190 	.globl _endAddrCalc
                                    191 	.globl _count
                                    192 	.globl _ASCII
                                    193 	.globl _byte1
                                    194 	.globl _byte
                                    195 	.globl _currAddr1
                                    196 	.globl _currAddr0
                                    197 	.globl _addr3
                                    198 	.globl _addr2
                                    199 	.globl _addr1
                                    200 	.globl _addr0
                                    201 	.globl _data
                                    202 	.globl _scrollEnd
                                    203 	.globl _dataEnd
                                    204 	.globl _validInput
                                    205 	.globl _dataSize
                                    206 	.globl _dataType
                                    207 	.globl _input8
                                    208 	.globl _input16
                                    209 	.globl _key
                                    210 	.globl __height
                                    211 	.globl __width
                                    212 	.globl _textbgcolor
                                    213 	.globl _textcolor
                                    214 	.globl _rotation
                                    215 	.globl _textsize
                                    216 	.globl _cursor_y
                                    217 	.globl _cursor_x
                                    218 	.globl _read_ram_address
                                    219 	.globl _seg7_address
                                    220 	.globl _lcd_address
                                    221 	.globl _rowloc
                                    222 	.globl _colloc
                                    223 	.globl _delay
                                    224 	.globl _writeRegister8
                                    225 	.globl _writeRegister16
                                    226 	.globl _rtcInit
                                    227 	.globl _rtcBusy
                                    228 	.globl _rtcCmd
                                    229 	.globl _rtcWrite
                                    230 	.globl _rtcRead
                                    231 	.globl _rtcPrint
                                    232 	.globl _setCursor
                                    233 	.globl _setTextColor
                                    234 	.globl _setTextSize
                                    235 	.globl _setAddress
                                    236 	.globl _TFT_LCD_INIT
                                    237 	.globl _drawPixel
                                    238 	.globl _fillRect
                                    239 	.globl _fillScreen
                                    240 	.globl _write
                                    241 	.globl _LCD_string_write
                                    242 	.globl _keyDetect
                                    243 	.globl _HEXtoASCII_8write
                                    244 	.globl _testRAM
                                    245 	.globl _FIND_display
                                    246 ;--------------------------------------------------------
                                    247 ; special function registers
                                    248 ;--------------------------------------------------------
                                    249 	.area RSEG    (ABS,DATA)
      000000                        250 	.org 0x0000
                           000080   251 _P0	=	0x0080
                           000081   252 _SP	=	0x0081
                           000082   253 _DPL	=	0x0082
                           000083   254 _DPH	=	0x0083
                           000087   255 _PCON	=	0x0087
                           000088   256 _TCON	=	0x0088
                           000089   257 _TMOD	=	0x0089
                           00008A   258 _TL0	=	0x008a
                           00008B   259 _TL1	=	0x008b
                           00008C   260 _TH0	=	0x008c
                           00008D   261 _TH1	=	0x008d
                           000090   262 _P1	=	0x0090
                           000098   263 _SCON	=	0x0098
                           000099   264 _SBUF	=	0x0099
                           0000A0   265 _P2	=	0x00a0
                           0000A8   266 _IE	=	0x00a8
                           0000B0   267 _P3	=	0x00b0
                           0000B8   268 _IP	=	0x00b8
                           0000C8   269 _T2CON	=	0x00c8
                           0000C9   270 _T2MOD	=	0x00c9
                           0000CA   271 _RCAP2L	=	0x00ca
                           0000CB   272 _RCAP2H	=	0x00cb
                           0000CC   273 _TL2	=	0x00cc
                           0000CD   274 _TH2	=	0x00cd
                           0000D0   275 _PSW	=	0x00d0
                           0000E0   276 _ACC	=	0x00e0
                           0000E0   277 _A	=	0x00e0
                           0000F0   278 _B	=	0x00f0
                                    279 ;--------------------------------------------------------
                                    280 ; special function bits
                                    281 ;--------------------------------------------------------
                                    282 	.area RSEG    (ABS,DATA)
      000000                        283 	.org 0x0000
                           000080   284 _P0_0	=	0x0080
                           000081   285 _P0_1	=	0x0081
                           000082   286 _P0_2	=	0x0082
                           000083   287 _P0_3	=	0x0083
                           000084   288 _P0_4	=	0x0084
                           000085   289 _P0_5	=	0x0085
                           000086   290 _P0_6	=	0x0086
                           000087   291 _P0_7	=	0x0087
                           000088   292 _IT0	=	0x0088
                           000089   293 _IE0	=	0x0089
                           00008A   294 _IT1	=	0x008a
                           00008B   295 _IE1	=	0x008b
                           00008C   296 _TR0	=	0x008c
                           00008D   297 _TF0	=	0x008d
                           00008E   298 _TR1	=	0x008e
                           00008F   299 _TF1	=	0x008f
                           000090   300 _P1_0	=	0x0090
                           000091   301 _P1_1	=	0x0091
                           000092   302 _P1_2	=	0x0092
                           000093   303 _P1_3	=	0x0093
                           000094   304 _P1_4	=	0x0094
                           000095   305 _P1_5	=	0x0095
                           000096   306 _P1_6	=	0x0096
                           000097   307 _P1_7	=	0x0097
                           000090   308 _T2	=	0x0090
                           000091   309 _T2EX	=	0x0091
                           000098   310 _RI	=	0x0098
                           000099   311 _TI	=	0x0099
                           00009A   312 _RB8	=	0x009a
                           00009B   313 _TB8	=	0x009b
                           00009C   314 _REN	=	0x009c
                           00009D   315 _SM2	=	0x009d
                           00009E   316 _SM1	=	0x009e
                           00009F   317 _SM0	=	0x009f
                           0000A0   318 _P2_0	=	0x00a0
                           0000A1   319 _P2_1	=	0x00a1
                           0000A2   320 _P2_2	=	0x00a2
                           0000A3   321 _P2_3	=	0x00a3
                           0000A4   322 _P2_4	=	0x00a4
                           0000A5   323 _P2_5	=	0x00a5
                           0000A6   324 _P2_6	=	0x00a6
                           0000A7   325 _P2_7	=	0x00a7
                           0000A8   326 _EX0	=	0x00a8
                           0000A9   327 _ET0	=	0x00a9
                           0000AA   328 _EX1	=	0x00aa
                           0000AB   329 _ET1	=	0x00ab
                           0000AC   330 _ES	=	0x00ac
                           0000AD   331 _ET2	=	0x00ad
                           0000AF   332 _EA	=	0x00af
                           0000B0   333 _P3_0	=	0x00b0
                           0000B1   334 _P3_1	=	0x00b1
                           0000B2   335 _P3_2	=	0x00b2
                           0000B3   336 _P3_3	=	0x00b3
                           0000B4   337 _P3_4	=	0x00b4
                           0000B5   338 _P3_5	=	0x00b5
                           0000B6   339 _P3_6	=	0x00b6
                           0000B7   340 _P3_7	=	0x00b7
                           0000B0   341 _RXD	=	0x00b0
                           0000B1   342 _TXD	=	0x00b1
                           0000B2   343 _INT0	=	0x00b2
                           0000B3   344 _INT1	=	0x00b3
                           0000B4   345 _T0	=	0x00b4
                           0000B5   346 _T1	=	0x00b5
                           0000B6   347 _WR	=	0x00b6
                           0000B7   348 _RD	=	0x00b7
                           0000B8   349 _PX0	=	0x00b8
                           0000B9   350 _PT0	=	0x00b9
                           0000BA   351 _PX1	=	0x00ba
                           0000BB   352 _PT1	=	0x00bb
                           0000BC   353 _PS	=	0x00bc
                           0000BD   354 _PT2	=	0x00bd
                           0000C8   355 _T2CON_0	=	0x00c8
                           0000C9   356 _T2CON_1	=	0x00c9
                           0000CA   357 _T2CON_2	=	0x00ca
                           0000CB   358 _T2CON_3	=	0x00cb
                           0000CC   359 _T2CON_4	=	0x00cc
                           0000CD   360 _T2CON_5	=	0x00cd
                           0000CE   361 _T2CON_6	=	0x00ce
                           0000CF   362 _T2CON_7	=	0x00cf
                           0000C8   363 _CP_RL2	=	0x00c8
                           0000C9   364 _C_T2	=	0x00c9
                           0000CA   365 _TR2	=	0x00ca
                           0000CB   366 _EXEN2	=	0x00cb
                           0000CC   367 _TCLK	=	0x00cc
                           0000CD   368 _RCLK	=	0x00cd
                           0000CE   369 _EXF2	=	0x00ce
                           0000CF   370 _TF2	=	0x00cf
                           0000D0   371 _P	=	0x00d0
                           0000D1   372 _FL	=	0x00d1
                           0000D2   373 _OV	=	0x00d2
                           0000D3   374 _RS0	=	0x00d3
                           0000D4   375 _RS1	=	0x00d4
                           0000D5   376 _F0	=	0x00d5
                           0000D6   377 _AC	=	0x00d6
                           0000D7   378 _CY	=	0x00d7
                                    379 ;--------------------------------------------------------
                                    380 ; overlayable register banks
                                    381 ;--------------------------------------------------------
                                    382 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        383 	.ds 8
                                    384 ;--------------------------------------------------------
                                    385 ; internal ram data
                                    386 ;--------------------------------------------------------
                                    387 	.area DSEG    (DATA)
      000021                        388 _colloc::
      000021                        389 	.ds 1
      000022                        390 _rowloc::
      000022                        391 	.ds 1
      000023                        392 _lcd_address::
      000023                        393 	.ds 2
      000025                        394 _seg7_address::
      000025                        395 	.ds 2
      000027                        396 _read_ram_address::
      000027                        397 	.ds 2
      000029                        398 _cursor_x::
      000029                        399 	.ds 2
      00002B                        400 _cursor_y::
      00002B                        401 	.ds 2
      00002D                        402 _textsize::
      00002D                        403 	.ds 1
      00002E                        404 _rotation::
      00002E                        405 	.ds 1
      00002F                        406 _textcolor::
      00002F                        407 	.ds 2
      000031                        408 _textbgcolor::
      000031                        409 	.ds 2
      000033                        410 __width::
      000033                        411 	.ds 2
      000035                        412 __height::
      000035                        413 	.ds 2
      000037                        414 _key::
      000037                        415 	.ds 1
      000038                        416 _input16::
      000038                        417 	.ds 2
      00003A                        418 _input8::
      00003A                        419 	.ds 1
      00003B                        420 _dataType::
      00003B                        421 	.ds 1
      00003C                        422 _dataSize::
      00003C                        423 	.ds 2
      00003E                        424 _validInput::
      00003E                        425 	.ds 1
      00003F                        426 _dataEnd::
      00003F                        427 	.ds 1
      000040                        428 _scrollEnd::
      000040                        429 	.ds 1
      000041                        430 _data::
      000041                        431 	.ds 1
      000042                        432 _addr0::
      000042                        433 	.ds 2
      000044                        434 _addr1::
      000044                        435 	.ds 2
      000046                        436 _addr2::
      000046                        437 	.ds 2
      000048                        438 _addr3::
      000048                        439 	.ds 2
      00004A                        440 _currAddr0::
      00004A                        441 	.ds 2
      00004C                        442 _currAddr1::
      00004C                        443 	.ds 2
      00004E                        444 _byte::
      00004E                        445 	.ds 2
      000050                        446 _byte1::
      000050                        447 	.ds 2
      000052                        448 _ASCII::
      000052                        449 	.ds 1
      000053                        450 _count::
      000053                        451 	.ds 2
      000055                        452 _endAddrCalc::
      000055                        453 	.ds 4
      000059                        454 _xCursorHold::
      000059                        455 	.ds 1
      00005A                        456 _yCursorHold::
      00005A                        457 	.ds 1
      00005B                        458 _textSizeHold::
      00005B                        459 	.ds 1
      00005C                        460 _x::
      00005C                        461 	.ds 1
      00005D                        462 _y::
      00005D                        463 	.ds 1
      00005E                        464 _ts::
      00005E                        465 	.ds 1
      00005F                        466 _received_byte::
      00005F                        467 	.ds 1
      000060                        468 _received_flag::
      000060                        469 	.ds 1
      000061                        470 _rtcWrite_PARM_2:
      000061                        471 	.ds 1
      000062                        472 _drawPixel_PARM_2:
      000062                        473 	.ds 2
      000064                        474 _drawPixel_PARM_3:
      000064                        475 	.ds 2
      000066                        476 _fillRect_PARM_2:
      000066                        477 	.ds 2
      000068                        478 _fillRect_PARM_3:
      000068                        479 	.ds 2
      00006A                        480 _fillRect_PARM_4:
      00006A                        481 	.ds 2
      00006C                        482 _fillRect_PARM_5:
      00006C                        483 	.ds 2
      00006E                        484 _drawChar_PARM_2:
      00006E                        485 	.ds 2
      000070                        486 _drawChar_PARM_3:
      000070                        487 	.ds 1
      000071                        488 _drawChar_PARM_4:
      000071                        489 	.ds 2
      000073                        490 _drawChar_PARM_5:
      000073                        491 	.ds 2
      000075                        492 _drawChar_PARM_6:
      000075                        493 	.ds 1
      000076                        494 _drawChar_x_65536_311:
      000076                        495 	.ds 2
      000078                        496 _drawChar_line_196608_315:
      000078                        497 	.ds 1
      000079                        498 _drawChar_sloc1_1_0:
      000079                        499 	.ds 2
                                    500 ;--------------------------------------------------------
                                    501 ; overlayable items in internal ram 
                                    502 ;--------------------------------------------------------
                                    503 	.area	OSEG    (OVR,DATA)
                                    504 	.area	OSEG    (OVR,DATA)
      000008                        505 _writeRegister8_PARM_2:
      000008                        506 	.ds 1
                                    507 	.area	OSEG    (OVR,DATA)
      000008                        508 _writeRegister16_PARM_2:
      000008                        509 	.ds 2
                                    510 	.area	OSEG    (OVR,DATA)
                                    511 	.area	OSEG    (OVR,DATA)
      000008                        512 _rtcCmd_PARM_2:
      000008                        513 	.ds 1
                                    514 	.area	OSEG    (OVR,DATA)
      000008                        515 _setCursor_PARM_2:
      000008                        516 	.ds 2
                                    517 	.area	OSEG    (OVR,DATA)
      000008                        518 _setTextColor_PARM_2:
      000008                        519 	.ds 2
                                    520 	.area	OSEG    (OVR,DATA)
                                    521 	.area	OSEG    (OVR,DATA)
      000008                        522 _setAddress_PARM_2:
      000008                        523 	.ds 2
      00000A                        524 _setAddress_PARM_3:
      00000A                        525 	.ds 2
      00000C                        526 _setAddress_PARM_4:
      00000C                        527 	.ds 2
                                    528 	.area	OSEG    (OVR,DATA)
                                    529 	.area	OSEG    (OVR,DATA)
                                    530 	.area	OSEG    (OVR,DATA)
      000008                        531 _RAMwrite_PARM_2:
      000008                        532 	.ds 1
                                    533 	.area	OSEG    (OVR,DATA)
                                    534 	.area	OSEG    (OVR,DATA)
                                    535 ;--------------------------------------------------------
                                    536 ; Stack segment in internal ram 
                                    537 ;--------------------------------------------------------
                                    538 	.area	SSEG
      00007B                        539 __start__stack:
      00007B                        540 	.ds	1
                                    541 
                                    542 ;--------------------------------------------------------
                                    543 ; indirectly addressable internal ram data
                                    544 ;--------------------------------------------------------
                                    545 	.area ISEG    (DATA)
                                    546 ;--------------------------------------------------------
                                    547 ; absolute internal ram data
                                    548 ;--------------------------------------------------------
                                    549 	.area IABS    (ABS,DATA)
                                    550 	.area IABS    (ABS,DATA)
                                    551 ;--------------------------------------------------------
                                    552 ; bit data
                                    553 ;--------------------------------------------------------
                                    554 	.area BSEG    (BIT)
      000000                        555 _drawChar_sloc0_1_0:
      000000                        556 	.ds 1
                                    557 ;--------------------------------------------------------
                                    558 ; paged external ram data
                                    559 ;--------------------------------------------------------
                                    560 	.area PSEG    (PAG,XDATA)
                                    561 ;--------------------------------------------------------
                                    562 ; external ram data
                                    563 ;--------------------------------------------------------
                                    564 	.area XSEG    (XDATA)
                                    565 ;--------------------------------------------------------
                                    566 ; absolute external ram data
                                    567 ;--------------------------------------------------------
                                    568 	.area XABS    (ABS,XDATA)
                                    569 ;--------------------------------------------------------
                                    570 ; external initialized ram data
                                    571 ;--------------------------------------------------------
                                    572 	.area XISEG   (XDATA)
                                    573 	.area HOME    (CODE)
                                    574 	.area GSINIT0 (CODE)
                                    575 	.area GSINIT1 (CODE)
                                    576 	.area GSINIT2 (CODE)
                                    577 	.area GSINIT3 (CODE)
                                    578 	.area GSINIT4 (CODE)
                                    579 	.area GSINIT5 (CODE)
                                    580 	.area GSINIT  (CODE)
                                    581 	.area GSFINAL (CODE)
                                    582 	.area CSEG    (CODE)
                                    583 ;--------------------------------------------------------
                                    584 ; interrupt vector 
                                    585 ;--------------------------------------------------------
                                    586 	.area HOME    (CODE)
      000000                        587 __interrupt_vect:
      000000 02 00 29         [24]  588 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  589 	reti
      000004                        590 	.ds	7
      00000B 32               [24]  591 	reti
      00000C                        592 	.ds	7
      000013 32               [24]  593 	reti
      000014                        594 	.ds	7
      00001B 32               [24]  595 	reti
      00001C                        596 	.ds	7
      000023 02 00 9A         [24]  597 	ljmp	_ISR_receive
                                    598 ;--------------------------------------------------------
                                    599 ; global & static initialisations
                                    600 ;--------------------------------------------------------
                                    601 	.area HOME    (CODE)
                                    602 	.area GSINIT  (CODE)
                                    603 	.area GSFINAL (CODE)
                                    604 	.area GSINIT  (CODE)
                                    605 	.globl __sdcc_gsinit_startup
                                    606 	.globl __sdcc_program_startup
                                    607 	.globl __start__stack
                                    608 	.globl __mcs51_genXINIT
                                    609 	.globl __mcs51_genXRAMCLEAR
                                    610 	.globl __mcs51_genRAMCLEAR
                                    611 ;	ECEN4330Lab7.c:39: __xdata unsigned char* lcd_address = (unsigned char __xdata*) __LCD_ADDRESS__;
      000082 75 23 00         [24]  612 	mov	_lcd_address,#0x00
      000085 75 24 40         [24]  613 	mov	(_lcd_address + 1),#0x40
                                    614 ;	ECEN4330Lab7.c:40: __xdata unsigned char* seg7_address = (unsigned char __xdata*) __SEG_7_ADDRESS__;
      000088 75 25 00         [24]  615 	mov	_seg7_address,#0x00
      00008B 75 26 80         [24]  616 	mov	(_seg7_address + 1),#0x80
                                    617 ;	ECEN4330Lab7.c:95: unsigned int count = 0;
      00008E E4               [12]  618 	clr	a
      00008F F5 53            [12]  619 	mov	_count,a
      000091 F5 54            [12]  620 	mov	(_count + 1),a
                                    621 ;	ECEN4330Lab7.c:100: volatile unsigned char received_byte = 0;
                                    622 ;	1-genFromRTrack replaced	mov	_received_byte,#0x00
      000093 F5 5F            [12]  623 	mov	_received_byte,a
                                    624 ;	ECEN4330Lab7.c:101: volatile unsigned char received_flag = 0;
                                    625 ;	1-genFromRTrack replaced	mov	_received_flag,#0x00
      000095 F5 60            [12]  626 	mov	_received_flag,a
                                    627 	.area GSFINAL (CODE)
      000097 02 00 26         [24]  628 	ljmp	__sdcc_program_startup
                                    629 ;--------------------------------------------------------
                                    630 ; Home
                                    631 ;--------------------------------------------------------
                                    632 	.area HOME    (CODE)
                                    633 	.area HOME    (CODE)
      000026                        634 __sdcc_program_startup:
      000026 02 22 56         [24]  635 	ljmp	_main
                                    636 ;	return from main will return to caller
                                    637 ;--------------------------------------------------------
                                    638 ; code
                                    639 ;--------------------------------------------------------
                                    640 	.area CSEG    (CODE)
                                    641 ;------------------------------------------------------------
                                    642 ;Allocation info for local variables in function 'ISR_receive'
                                    643 ;------------------------------------------------------------
                                    644 ;	ECEN4330Lab7.c:124: void ISR_receive() __interrupt (4) {
                                    645 ;	-----------------------------------------
                                    646 ;	 function ISR_receive
                                    647 ;	-----------------------------------------
      00009A                        648 _ISR_receive:
                           000007   649 	ar7 = 0x07
                           000006   650 	ar6 = 0x06
                           000005   651 	ar5 = 0x05
                           000004   652 	ar4 = 0x04
                           000003   653 	ar3 = 0x03
                           000002   654 	ar2 = 0x02
                           000001   655 	ar1 = 0x01
                           000000   656 	ar0 = 0x00
                                    657 ;	ECEN4330Lab7.c:125: if (RI == 1){
      00009A 30 98 08         [24]  658 	jnb	_RI,00103$
                                    659 ;	ECEN4330Lab7.c:126: received_byte = SBUF;
      00009D 85 99 5F         [24]  660 	mov	_received_byte,_SBUF
                                    661 ;	ECEN4330Lab7.c:127: RI = 0;
                                    662 ;	assignBit
      0000A0 C2 98            [12]  663 	clr	_RI
                                    664 ;	ECEN4330Lab7.c:128: received_flag = 1;
      0000A2 75 60 01         [24]  665 	mov	_received_flag,#0x01
      0000A5                        666 00103$:
                                    667 ;	ECEN4330Lab7.c:130: }
      0000A5 32               [24]  668 	reti
                                    669 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    670 ;	eliminated unneeded push/pop not_psw
                                    671 ;	eliminated unneeded push/pop dpl
                                    672 ;	eliminated unneeded push/pop dph
                                    673 ;	eliminated unneeded push/pop b
                                    674 ;	eliminated unneeded push/pop acc
                                    675 ;------------------------------------------------------------
                                    676 ;Allocation info for local variables in function 'UART_Init'
                                    677 ;------------------------------------------------------------
                                    678 ;	ECEN4330Lab7.c:138: void UART_Init(){
                                    679 ;	-----------------------------------------
                                    680 ;	 function UART_Init
                                    681 ;	-----------------------------------------
      0000A6                        682 _UART_Init:
                                    683 ;	ECEN4330Lab7.c:139: SCON = 0x50;  // Asynchronous mode, 8-bit data and 1-stop bit
      0000A6 75 98 50         [24]  684 	mov	_SCON,#0x50
                                    685 ;	ECEN4330Lab7.c:140: TMOD = 0x20;  // Timer1 in Mode2. in 8 bit auto reload
      0000A9 75 89 20         [24]  686 	mov	_TMOD,#0x20
                                    687 ;	ECEN4330Lab7.c:141: TH1 =  0xFD;  // Load timer value for 9600 baudrate
      0000AC 75 8D FD         [24]  688 	mov	_TH1,#0xfd
                                    689 ;	ECEN4330Lab7.c:142: TR1 = 1;      // Turn ON the timer for Baud rate generation
                                    690 ;	assignBit
      0000AF D2 8E            [12]  691 	setb	_TR1
                                    692 ;	ECEN4330Lab7.c:143: ES  = 1;      // Enable Serial Interrupt
                                    693 ;	assignBit
      0000B1 D2 AC            [12]  694 	setb	_ES
                                    695 ;	ECEN4330Lab7.c:144: EA  = 1;      // Enable Global Interrupt bit
                                    696 ;	assignBit
      0000B3 D2 AF            [12]  697 	setb	_EA
                                    698 ;	ECEN4330Lab7.c:145: }
      0000B5 22               [24]  699 	ret
                                    700 ;------------------------------------------------------------
                                    701 ;Allocation info for local variables in function 'UART_transmit'
                                    702 ;------------------------------------------------------------
                                    703 ;	ECEN4330Lab7.c:153: void UART_transmit(){
                                    704 ;	-----------------------------------------
                                    705 ;	 function UART_transmit
                                    706 ;	-----------------------------------------
      0000B6                        707 _UART_transmit:
                                    708 ;	ECEN4330Lab7.c:154: SBUF = byte;
      0000B6 85 4E 99         [24]  709 	mov	_SBUF,_byte
                                    710 ;	ECEN4330Lab7.c:155: while(TI == 1);
      0000B9                        711 00101$:
      0000B9 20 99 FD         [24]  712 	jb	_TI,00101$
                                    713 ;	ECEN4330Lab7.c:156: TI = 0;
                                    714 ;	assignBit
      0000BC C2 99            [12]  715 	clr	_TI
                                    716 ;	ECEN4330Lab7.c:157: }
      0000BE 22               [24]  717 	ret
                                    718 ;------------------------------------------------------------
                                    719 ;Allocation info for local variables in function 'delay'
                                    720 ;------------------------------------------------------------
                                    721 ;d                         Allocated to registers r6 r7 
                                    722 ;i                         Allocated to registers r4 r5 
                                    723 ;j                         Allocated to registers r2 r3 
                                    724 ;------------------------------------------------------------
                                    725 ;	ECEN4330Lab7.c:191: void delay (int d) /// x 1ms
                                    726 ;	-----------------------------------------
                                    727 ;	 function delay
                                    728 ;	-----------------------------------------
      0000BF                        729 _delay:
      0000BF AE 82            [24]  730 	mov	r6,dpl
      0000C1 AF 83            [24]  731 	mov	r7,dph
                                    732 ;	ECEN4330Lab7.c:194: for (i=0;i<d;i++)
      0000C3 7C 00            [12]  733 	mov	r4,#0x00
      0000C5 7D 00            [12]  734 	mov	r5,#0x00
      0000C7                        735 00107$:
      0000C7 C3               [12]  736 	clr	c
      0000C8 EC               [12]  737 	mov	a,r4
      0000C9 9E               [12]  738 	subb	a,r6
      0000CA ED               [12]  739 	mov	a,r5
      0000CB 64 80            [12]  740 	xrl	a,#0x80
      0000CD 8F F0            [24]  741 	mov	b,r7
      0000CF 63 F0 80         [24]  742 	xrl	b,#0x80
      0000D2 95 F0            [12]  743 	subb	a,b
      0000D4 50 14            [24]  744 	jnc	00109$
                                    745 ;	ECEN4330Lab7.c:196: for (j=0;j<1000;j++);
      0000D6 7A E8            [12]  746 	mov	r2,#0xe8
      0000D8 7B 03            [12]  747 	mov	r3,#0x03
      0000DA                        748 00105$:
      0000DA 1A               [12]  749 	dec	r2
      0000DB BA FF 01         [24]  750 	cjne	r2,#0xff,00130$
      0000DE 1B               [12]  751 	dec	r3
      0000DF                        752 00130$:
      0000DF EA               [12]  753 	mov	a,r2
      0000E0 4B               [12]  754 	orl	a,r3
      0000E1 70 F7            [24]  755 	jnz	00105$
                                    756 ;	ECEN4330Lab7.c:194: for (i=0;i<d;i++)
      0000E3 0C               [12]  757 	inc	r4
      0000E4 BC 00 E0         [24]  758 	cjne	r4,#0x00,00107$
      0000E7 0D               [12]  759 	inc	r5
      0000E8 80 DD            [24]  760 	sjmp	00107$
      0000EA                        761 00109$:
                                    762 ;	ECEN4330Lab7.c:198: }
      0000EA 22               [24]  763 	ret
                                    764 ;------------------------------------------------------------
                                    765 ;Allocation info for local variables in function 'writeRegister8'
                                    766 ;------------------------------------------------------------
                                    767 ;d                         Allocated with name '_writeRegister8_PARM_2'
                                    768 ;a                         Allocated to registers r7 
                                    769 ;------------------------------------------------------------
                                    770 ;	ECEN4330Lab7.c:206: void writeRegister8(u8 a, u8 d) {
                                    771 ;	-----------------------------------------
                                    772 ;	 function writeRegister8
                                    773 ;	-----------------------------------------
      0000EB                        774 _writeRegister8:
      0000EB AF 82            [24]  775 	mov	r7,dpl
                                    776 ;	ECEN4330Lab7.c:207: CD = __CMD__;
                                    777 ;	assignBit
      0000ED C2 B5            [12]  778 	clr	_P3_5
                                    779 ;	ECEN4330Lab7.c:208: write8(a);
                                    780 ;	assignBit
      0000EF D2 B4            [12]  781 	setb	_P3_4
      0000F1 85 23 82         [24]  782 	mov	dpl,_lcd_address
      0000F4 85 24 83         [24]  783 	mov	dph,(_lcd_address + 1)
      0000F7 EF               [12]  784 	mov	a,r7
      0000F8 F0               [24]  785 	movx	@dptr,a
                                    786 ;	assignBit
      0000F9 C2 B4            [12]  787 	clr	_P3_4
                                    788 ;	ECEN4330Lab7.c:209: CD = __DATA__;
                                    789 ;	assignBit
      0000FB D2 B5            [12]  790 	setb	_P3_5
                                    791 ;	ECEN4330Lab7.c:210: write8(d);
                                    792 ;	assignBit
      0000FD D2 B4            [12]  793 	setb	_P3_4
      0000FF 85 23 82         [24]  794 	mov	dpl,_lcd_address
      000102 85 24 83         [24]  795 	mov	dph,(_lcd_address + 1)
      000105 E5 08            [12]  796 	mov	a,_writeRegister8_PARM_2
      000107 F0               [24]  797 	movx	@dptr,a
                                    798 ;	assignBit
      000108 C2 B4            [12]  799 	clr	_P3_4
                                    800 ;	ECEN4330Lab7.c:211: }
      00010A 22               [24]  801 	ret
                                    802 ;------------------------------------------------------------
                                    803 ;Allocation info for local variables in function 'writeRegister16'
                                    804 ;------------------------------------------------------------
                                    805 ;d                         Allocated with name '_writeRegister16_PARM_2'
                                    806 ;a                         Allocated to registers r6 r7 
                                    807 ;hi                        Allocated to registers r6 r7 
                                    808 ;lo                        Allocated to registers r4 r5 
                                    809 ;------------------------------------------------------------
                                    810 ;	ECEN4330Lab7.c:219: void writeRegister16(u16 a, u16 d){
                                    811 ;	-----------------------------------------
                                    812 ;	 function writeRegister16
                                    813 ;	-----------------------------------------
      00010B                        814 _writeRegister16:
      00010B AE 82            [24]  815 	mov	r6,dpl
      00010D AF 83            [24]  816 	mov	r7,dph
                                    817 ;	ECEN4330Lab7.c:221: hi = (a) >> 8;
      00010F 8F 04            [24]  818 	mov	ar4,r7
                                    819 ;	ECEN4330Lab7.c:222: lo = (a);
                                    820 ;	ECEN4330Lab7.c:223: write8Reg(hi);
                                    821 ;	assignBit
      000111 C2 B5            [12]  822 	clr	_P3_5
                                    823 ;	assignBit
      000113 D2 B4            [12]  824 	setb	_P3_4
      000115 85 23 82         [24]  825 	mov	dpl,_lcd_address
      000118 85 24 83         [24]  826 	mov	dph,(_lcd_address + 1)
      00011B EC               [12]  827 	mov	a,r4
      00011C F0               [24]  828 	movx	@dptr,a
                                    829 ;	assignBit
      00011D C2 B4            [12]  830 	clr	_P3_4
                                    831 ;	ECEN4330Lab7.c:224: write8Reg(lo);
                                    832 ;	assignBit
      00011F C2 B5            [12]  833 	clr	_P3_5
                                    834 ;	assignBit
      000121 D2 B4            [12]  835 	setb	_P3_4
      000123 85 23 82         [24]  836 	mov	dpl,_lcd_address
      000126 85 24 83         [24]  837 	mov	dph,(_lcd_address + 1)
      000129 EE               [12]  838 	mov	a,r6
      00012A F0               [24]  839 	movx	@dptr,a
                                    840 ;	assignBit
      00012B C2 B4            [12]  841 	clr	_P3_4
                                    842 ;	ECEN4330Lab7.c:225: hi = (d) >> 8;
      00012D AE 09            [24]  843 	mov	r6,(_writeRegister16_PARM_2 + 1)
                                    844 ;	ECEN4330Lab7.c:226: lo = (d);
      00012F AC 08            [24]  845 	mov	r4,_writeRegister16_PARM_2
                                    846 ;	ECEN4330Lab7.c:227: CD = 1 ;
                                    847 ;	assignBit
      000131 D2 B5            [12]  848 	setb	_P3_5
                                    849 ;	ECEN4330Lab7.c:228: write8Data(hi);
                                    850 ;	assignBit
      000133 D2 B5            [12]  851 	setb	_P3_5
                                    852 ;	assignBit
      000135 D2 B4            [12]  853 	setb	_P3_4
      000137 85 23 82         [24]  854 	mov	dpl,_lcd_address
      00013A 85 24 83         [24]  855 	mov	dph,(_lcd_address + 1)
      00013D EE               [12]  856 	mov	a,r6
      00013E F0               [24]  857 	movx	@dptr,a
                                    858 ;	assignBit
      00013F C2 B4            [12]  859 	clr	_P3_4
                                    860 ;	ECEN4330Lab7.c:229: write8Data(lo);
                                    861 ;	assignBit
      000141 D2 B5            [12]  862 	setb	_P3_5
                                    863 ;	assignBit
      000143 D2 B4            [12]  864 	setb	_P3_4
      000145 85 23 82         [24]  865 	mov	dpl,_lcd_address
      000148 85 24 83         [24]  866 	mov	dph,(_lcd_address + 1)
      00014B EC               [12]  867 	mov	a,r4
      00014C F0               [24]  868 	movx	@dptr,a
                                    869 ;	assignBit
      00014D C2 B4            [12]  870 	clr	_P3_4
                                    871 ;	ECEN4330Lab7.c:230: }
      00014F 22               [24]  872 	ret
                                    873 ;------------------------------------------------------------
                                    874 ;Allocation info for local variables in function 'rtcInit'
                                    875 ;------------------------------------------------------------
                                    876 ;i                         Allocated with name '_rtcInit_i_65536_63'
                                    877 ;------------------------------------------------------------
                                    878 ;	ECEN4330Lab7.c:252: void rtcInit(void) {
                                    879 ;	-----------------------------------------
                                    880 ;	 function rtcInit
                                    881 ;	-----------------------------------------
      000150                        882 _rtcInit:
                                    883 ;	ECEN4330Lab7.c:255: rtcCmd(__REG_F__, __HR_24__|__STOP__|__RESET__);  // stop and reset
      000150 75 08 07         [24]  884 	mov	_rtcCmd_PARM_2,#0x07
      000153 90 00 0F         [24]  885 	mov	dptr,#0x000f
      000156 12 01 96         [24]  886 	lcall	_rtcCmd
                                    887 ;	ECEN4330Lab7.c:258: for (i = __S1_REG__; i < __REG_D__;i++) {
      000159 7E 00            [12]  888 	mov	r6,#0x00
      00015B 7F 00            [12]  889 	mov	r7,#0x00
      00015D                        890 00102$:
                                    891 ;	ECEN4330Lab7.c:259: rtcWrite(i, 0x00);
      00015D 75 61 00         [24]  892 	mov	_rtcWrite_PARM_2,#0x00
      000160 8E 82            [24]  893 	mov	dpl,r6
      000162 8F 83            [24]  894 	mov	dph,r7
      000164 C0 07            [24]  895 	push	ar7
      000166 C0 06            [24]  896 	push	ar6
      000168 12 01 9F         [24]  897 	lcall	_rtcWrite
      00016B D0 06            [24]  898 	pop	ar6
      00016D D0 07            [24]  899 	pop	ar7
                                    900 ;	ECEN4330Lab7.c:258: for (i = __S1_REG__; i < __REG_D__;i++) {
      00016F 0E               [12]  901 	inc	r6
      000170 BE 00 01         [24]  902 	cjne	r6,#0x00,00115$
      000173 0F               [12]  903 	inc	r7
      000174                        904 00115$:
      000174 C3               [12]  905 	clr	c
      000175 EE               [12]  906 	mov	a,r6
      000176 94 0D            [12]  907 	subb	a,#0x0d
      000178 EF               [12]  908 	mov	a,r7
      000179 94 00            [12]  909 	subb	a,#0x00
      00017B 40 E0            [24]  910 	jc	00102$
                                    911 ;	ECEN4330Lab7.c:262: rtcCmd(__REG_F__, __HR_24__);
      00017D 75 08 04         [24]  912 	mov	_rtcCmd_PARM_2,#0x04
      000180 90 00 0F         [24]  913 	mov	dptr,#0x000f
                                    914 ;	ECEN4330Lab7.c:263: }
      000183 02 01 96         [24]  915 	ljmp	_rtcCmd
                                    916 ;------------------------------------------------------------
                                    917 ;Allocation info for local variables in function 'rtcBusy'
                                    918 ;------------------------------------------------------------
                                    919 ;__1310720001              Allocated to registers 
                                    920 ;map_address               Allocated to registers 
                                    921 ;__1310720002              Allocated to registers 
                                    922 ;map_address               Allocated to registers 
                                    923 ;------------------------------------------------------------
                                    924 ;	ECEN4330Lab7.c:271: void rtcBusy(void) {
                                    925 ;	-----------------------------------------
                                    926 ;	 function rtcBusy
                                    927 ;	-----------------------------------------
      000186                        928 _rtcBusy:
                                    929 ;	ECEN4330Lab7.c:273: while((ioread8(map_address) & 0x02));
      000186                        930 00101$:
                                    931 ;	ECEN4330Lab7.c:179: IOM = 1;                            
                                    932 ;	assignBit
      000186 D2 B4            [12]  933 	setb	_P3_4
                                    934 ;	ECEN4330Lab7.c:180: data = *map_address;
      000188 90 00 0D         [24]  935 	mov	dptr,#0x000d
      00018B E0               [24]  936 	movx	a,@dptr
      00018C F5 41            [12]  937 	mov	_data,a
                                    938 ;	ECEN4330Lab7.c:181: IOM = 0;    
                                    939 ;	assignBit
      00018E C2 B4            [12]  940 	clr	_P3_4
                                    941 ;	ECEN4330Lab7.c:182: return data;   
      000190 E5 41            [12]  942 	mov	a,_data
                                    943 ;	ECEN4330Lab7.c:273: while((ioread8(map_address) & 0x02));
      000192 20 E1 F1         [24]  944 	jb	acc.1,00101$
                                    945 ;	ECEN4330Lab7.c:274: }
      000195 22               [24]  946 	ret
                                    947 ;------------------------------------------------------------
                                    948 ;Allocation info for local variables in function 'rtcCmd'
                                    949 ;------------------------------------------------------------
                                    950 ;d                         Allocated with name '_rtcCmd_PARM_2'
                                    951 ;addr                      Allocated to registers r6 r7 
                                    952 ;map_address               Allocated to registers 
                                    953 ;__1310720004              Allocated to registers 
                                    954 ;__1310720005              Allocated to registers r7 
                                    955 ;map_address               Allocated to registers 
                                    956 ;d                         Allocated to registers 
                                    957 ;------------------------------------------------------------
                                    958 ;	ECEN4330Lab7.c:282: inline void rtcCmd(unsigned int addr, unsigned char d) {
                                    959 ;	-----------------------------------------
                                    960 ;	 function rtcCmd
                                    961 ;	-----------------------------------------
      000196                        962 _rtcCmd:
                                    963 ;	ECEN4330Lab7.c:283: __xdata unsigned char* map_address =  (unsigned char __xdata*) addr;
                                    964 ;	ECEN4330Lab7.c:284: iowrite8(map_address, d);
      000196 AF 08            [24]  965 	mov	r7,_rtcCmd_PARM_2
                                    966 ;	ECEN4330Lab7.c:166: IOM = 1;
                                    967 ;	assignBit
      000198 D2 B4            [12]  968 	setb	_P3_4
                                    969 ;	ECEN4330Lab7.c:167: *map_address = d;
      00019A EF               [12]  970 	mov	a,r7
      00019B F0               [24]  971 	movx	@dptr,a
                                    972 ;	ECEN4330Lab7.c:168: IOM = 0;
                                    973 ;	assignBit
      00019C C2 B4            [12]  974 	clr	_P3_4
                                    975 ;	ECEN4330Lab7.c:284: iowrite8(map_address, d);
                                    976 ;	ECEN4330Lab7.c:285: }
      00019E 22               [24]  977 	ret
                                    978 ;------------------------------------------------------------
                                    979 ;Allocation info for local variables in function 'rtcWrite'
                                    980 ;------------------------------------------------------------
                                    981 ;d                         Allocated with name '_rtcWrite_PARM_2'
                                    982 ;addr                      Allocated to registers r6 r7 
                                    983 ;map_address               Allocated to registers r6 r7 
                                    984 ;__1310720007              Allocated to registers 
                                    985 ;__1310720008              Allocated to registers 
                                    986 ;addr                      Allocated to registers 
                                    987 ;d                         Allocated to registers 
                                    988 ;map_address               Allocated to registers 
                                    989 ;__1310720004              Allocated to registers 
                                    990 ;__1310720005              Allocated to registers 
                                    991 ;map_address               Allocated to registers 
                                    992 ;d                         Allocated to registers 
                                    993 ;__1310720010              Allocated to registers 
                                    994 ;__1310720011              Allocated to registers 
                                    995 ;map_address               Allocated to registers 
                                    996 ;d                         Allocated to registers 
                                    997 ;__1310720013              Allocated to registers 
                                    998 ;__1310720014              Allocated to registers r7 
                                    999 ;addr                      Allocated to registers 
                                   1000 ;d                         Allocated to registers 
                                   1001 ;map_address               Allocated to registers 
                                   1002 ;__1310720004              Allocated to registers 
                                   1003 ;__1310720005              Allocated to registers 
                                   1004 ;map_address               Allocated to registers 
                                   1005 ;d                         Allocated to registers 
                                   1006 ;------------------------------------------------------------
                                   1007 ;	ECEN4330Lab7.c:293: inline void rtcWrite(unsigned int addr, unsigned char d) {
                                   1008 ;	-----------------------------------------
                                   1009 ;	 function rtcWrite
                                   1010 ;	-----------------------------------------
      00019F                       1011 _rtcWrite:
      00019F AE 82            [24] 1012 	mov	r6,dpl
      0001A1 AF 83            [24] 1013 	mov	r7,dph
                                   1014 ;	ECEN4330Lab7.c:294: __xdata unsigned char* map_address =  (unsigned char __xdata*) addr;
                                   1015 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1016 ;	assignBit
      0001A3 D2 B4            [12] 1017 	setb	_P3_4
                                   1018 ;	ECEN4330Lab7.c:167: *map_address = d;
      0001A5 90 00 0D         [24] 1019 	mov	dptr,#0x000d
      0001A8 74 01            [12] 1020 	mov	a,#0x01
      0001AA F0               [24] 1021 	movx	@dptr,a
                                   1022 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1023 ;	assignBit
      0001AB C2 B4            [12] 1024 	clr	_P3_4
                                   1025 ;	ECEN4330Lab7.c:296: rtcBusy();
      0001AD C0 07            [24] 1026 	push	ar7
      0001AF C0 06            [24] 1027 	push	ar6
      0001B1 12 01 86         [24] 1028 	lcall	_rtcBusy
      0001B4 D0 06            [24] 1029 	pop	ar6
      0001B6 D0 07            [24] 1030 	pop	ar7
                                   1031 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1032 ;	assignBit
      0001B8 D2 B4            [12] 1033 	setb	_P3_4
                                   1034 ;	ECEN4330Lab7.c:167: *map_address = d;
      0001BA 8E 82            [24] 1035 	mov	dpl,r6
      0001BC 8F 83            [24] 1036 	mov	dph,r7
      0001BE E4               [12] 1037 	clr	a
      0001BF F0               [24] 1038 	movx	@dptr,a
                                   1039 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1040 ;	assignBit
      0001C0 C2 B4            [12] 1041 	clr	_P3_4
                                   1042 ;	ECEN4330Lab7.c:298: rtcCmd(__REG_D__, d);
      0001C2 AF 61            [24] 1043 	mov	r7,_rtcWrite_PARM_2
                                   1044 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1045 ;	assignBit
      0001C4 D2 B4            [12] 1046 	setb	_P3_4
                                   1047 ;	ECEN4330Lab7.c:167: *map_address = d;
      0001C6 90 00 0D         [24] 1048 	mov	dptr,#0x000d
      0001C9 EF               [12] 1049 	mov	a,r7
      0001CA F0               [24] 1050 	movx	@dptr,a
                                   1051 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1052 ;	assignBit
      0001CB C2 B4            [12] 1053 	clr	_P3_4
                                   1054 ;	ECEN4330Lab7.c:298: rtcCmd(__REG_D__, d);
                                   1055 ;	ECEN4330Lab7.c:299: }
      0001CD 22               [24] 1056 	ret
                                   1057 ;------------------------------------------------------------
                                   1058 ;Allocation info for local variables in function 'rtcRead'
                                   1059 ;------------------------------------------------------------
                                   1060 ;addr                      Allocated to registers r6 r7 
                                   1061 ;__1310720019              Allocated to registers 
                                   1062 ;map_address               Allocated to registers r6 r7 
                                   1063 ;__1310720016              Allocated to registers 
                                   1064 ;__1310720017              Allocated to registers 
                                   1065 ;addr                      Allocated to registers 
                                   1066 ;d                         Allocated to registers 
                                   1067 ;map_address               Allocated to registers 
                                   1068 ;__1310720004              Allocated to registers 
                                   1069 ;__1310720005              Allocated to registers 
                                   1070 ;map_address               Allocated to registers 
                                   1071 ;d                         Allocated to registers 
                                   1072 ;__1310720020              Allocated to registers 
                                   1073 ;map_address               Allocated to registers 
                                   1074 ;__1310720022              Allocated to registers 
                                   1075 ;__1310720023              Allocated to registers 
                                   1076 ;addr                      Allocated to registers 
                                   1077 ;d                         Allocated to registers 
                                   1078 ;map_address               Allocated to registers 
                                   1079 ;__1310720004              Allocated to registers 
                                   1080 ;__1310720005              Allocated to registers 
                                   1081 ;map_address               Allocated to registers 
                                   1082 ;d                         Allocated to registers 
                                   1083 ;------------------------------------------------------------
                                   1084 ;	ECEN4330Lab7.c:308: inline unsigned char rtcRead(unsigned int addr) {
                                   1085 ;	-----------------------------------------
                                   1086 ;	 function rtcRead
                                   1087 ;	-----------------------------------------
      0001CE                       1088 _rtcRead:
      0001CE AE 82            [24] 1089 	mov	r6,dpl
      0001D0 AF 83            [24] 1090 	mov	r7,dph
                                   1091 ;	ECEN4330Lab7.c:309: __xdata unsigned char* map_address =  (unsigned char __xdata*) addr;
                                   1092 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1093 ;	assignBit
      0001D2 D2 B4            [12] 1094 	setb	_P3_4
                                   1095 ;	ECEN4330Lab7.c:167: *map_address = d;
      0001D4 90 00 0D         [24] 1096 	mov	dptr,#0x000d
      0001D7 74 01            [12] 1097 	mov	a,#0x01
      0001D9 F0               [24] 1098 	movx	@dptr,a
                                   1099 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1100 ;	assignBit
      0001DA C2 B4            [12] 1101 	clr	_P3_4
                                   1102 ;	ECEN4330Lab7.c:311: rtcBusy();
      0001DC C0 07            [24] 1103 	push	ar7
      0001DE C0 06            [24] 1104 	push	ar6
      0001E0 12 01 86         [24] 1105 	lcall	_rtcBusy
      0001E3 D0 06            [24] 1106 	pop	ar6
      0001E5 D0 07            [24] 1107 	pop	ar7
                                   1108 ;	ECEN4330Lab7.c:179: IOM = 1;                            
                                   1109 ;	assignBit
      0001E7 D2 B4            [12] 1110 	setb	_P3_4
                                   1111 ;	ECEN4330Lab7.c:180: data = *map_address;
      0001E9 8E 82            [24] 1112 	mov	dpl,r6
      0001EB 8F 83            [24] 1113 	mov	dph,r7
      0001ED E0               [24] 1114 	movx	a,@dptr
      0001EE F5 41            [12] 1115 	mov	_data,a
                                   1116 ;	ECEN4330Lab7.c:181: IOM = 0;    
                                   1117 ;	assignBit
      0001F0 C2 B4            [12] 1118 	clr	_P3_4
                                   1119 ;	ECEN4330Lab7.c:182: return data;   
                                   1120 ;	ECEN4330Lab7.c:314: data = (data & 0x0F) | 0x30; // ascii the lower word
      0001F2 E5 41            [12] 1121 	mov	a,_data
      0001F4 54 0F            [12] 1122 	anl	a,#0x0f
      0001F6 44 30            [12] 1123 	orl	a,#0x30
      0001F8 F5 41            [12] 1124 	mov	_data,a
                                   1125 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1126 ;	assignBit
      0001FA D2 B4            [12] 1127 	setb	_P3_4
                                   1128 ;	ECEN4330Lab7.c:167: *map_address = d;
      0001FC 90 00 0D         [24] 1129 	mov	dptr,#0x000d
      0001FF E4               [12] 1130 	clr	a
      000200 F0               [24] 1131 	movx	@dptr,a
                                   1132 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1133 ;	assignBit
      000201 C2 B4            [12] 1134 	clr	_P3_4
                                   1135 ;	ECEN4330Lab7.c:316: return data;
      000203 85 41 82         [24] 1136 	mov	dpl,_data
                                   1137 ;	ECEN4330Lab7.c:317: }
      000206 22               [24] 1138 	ret
                                   1139 ;------------------------------------------------------------
                                   1140 ;Allocation info for local variables in function 'rtcPrint'
                                   1141 ;------------------------------------------------------------
                                   1142 ;__1310720040              Allocated to registers 
                                   1143 ;__1310720037              Allocated to registers 
                                   1144 ;__1310720034              Allocated to registers 
                                   1145 ;__1310720031              Allocated to registers 
                                   1146 ;__1310720028              Allocated to registers 
                                   1147 ;__1310720025              Allocated to registers 
                                   1148 ;t                         Allocated to registers 
                                   1149 ;__1310720026              Allocated to registers 
                                   1150 ;addr                      Allocated to registers 
                                   1151 ;__1310720019              Allocated to registers 
                                   1152 ;map_address               Allocated to registers 
                                   1153 ;__1310720016              Allocated to registers 
                                   1154 ;__1310720017              Allocated to registers 
                                   1155 ;addr                      Allocated to registers 
                                   1156 ;d                         Allocated to registers 
                                   1157 ;map_address               Allocated to registers 
                                   1158 ;__1310720004              Allocated to registers 
                                   1159 ;__1310720005              Allocated to registers 
                                   1160 ;map_address               Allocated to registers 
                                   1161 ;d                         Allocated to registers 
                                   1162 ;__1310720020              Allocated to registers 
                                   1163 ;map_address               Allocated to registers 
                                   1164 ;__1310720022              Allocated to registers 
                                   1165 ;__1310720023              Allocated to registers 
                                   1166 ;addr                      Allocated to registers 
                                   1167 ;d                         Allocated to registers 
                                   1168 ;map_address               Allocated to registers 
                                   1169 ;__1310720004              Allocated to registers 
                                   1170 ;__1310720005              Allocated to registers 
                                   1171 ;map_address               Allocated to registers 
                                   1172 ;d                         Allocated to registers 
                                   1173 ;__1310720029              Allocated to registers 
                                   1174 ;addr                      Allocated to registers 
                                   1175 ;__1310720019              Allocated to registers 
                                   1176 ;map_address               Allocated to registers 
                                   1177 ;__1310720016              Allocated to registers 
                                   1178 ;__1310720017              Allocated to registers 
                                   1179 ;addr                      Allocated to registers 
                                   1180 ;d                         Allocated to registers 
                                   1181 ;map_address               Allocated to registers 
                                   1182 ;__1310720004              Allocated to registers 
                                   1183 ;__1310720005              Allocated to registers 
                                   1184 ;map_address               Allocated to registers 
                                   1185 ;d                         Allocated to registers 
                                   1186 ;__1310720020              Allocated to registers 
                                   1187 ;map_address               Allocated to registers 
                                   1188 ;__1310720022              Allocated to registers 
                                   1189 ;__1310720023              Allocated to registers 
                                   1190 ;addr                      Allocated to registers 
                                   1191 ;d                         Allocated to registers 
                                   1192 ;map_address               Allocated to registers 
                                   1193 ;__1310720004              Allocated to registers 
                                   1194 ;__1310720005              Allocated to registers 
                                   1195 ;map_address               Allocated to registers 
                                   1196 ;d                         Allocated to registers 
                                   1197 ;__1310720032              Allocated to registers 
                                   1198 ;addr                      Allocated to registers 
                                   1199 ;__1310720019              Allocated to registers 
                                   1200 ;map_address               Allocated to registers 
                                   1201 ;__1310720016              Allocated to registers 
                                   1202 ;__1310720017              Allocated to registers 
                                   1203 ;addr                      Allocated to registers 
                                   1204 ;d                         Allocated to registers 
                                   1205 ;map_address               Allocated to registers 
                                   1206 ;__1310720004              Allocated to registers 
                                   1207 ;__1310720005              Allocated to registers 
                                   1208 ;map_address               Allocated to registers 
                                   1209 ;d                         Allocated to registers 
                                   1210 ;__1310720020              Allocated to registers 
                                   1211 ;map_address               Allocated to registers 
                                   1212 ;__1310720022              Allocated to registers 
                                   1213 ;__1310720023              Allocated to registers 
                                   1214 ;addr                      Allocated to registers 
                                   1215 ;d                         Allocated to registers 
                                   1216 ;map_address               Allocated to registers 
                                   1217 ;__1310720004              Allocated to registers 
                                   1218 ;__1310720005              Allocated to registers 
                                   1219 ;map_address               Allocated to registers 
                                   1220 ;d                         Allocated to registers 
                                   1221 ;__1310720035              Allocated to registers 
                                   1222 ;addr                      Allocated to registers 
                                   1223 ;__1310720019              Allocated to registers 
                                   1224 ;map_address               Allocated to registers 
                                   1225 ;__1310720016              Allocated to registers 
                                   1226 ;__1310720017              Allocated to registers 
                                   1227 ;addr                      Allocated to registers 
                                   1228 ;d                         Allocated to registers 
                                   1229 ;map_address               Allocated to registers 
                                   1230 ;__1310720004              Allocated to registers 
                                   1231 ;__1310720005              Allocated to registers 
                                   1232 ;map_address               Allocated to registers 
                                   1233 ;d                         Allocated to registers 
                                   1234 ;__1310720020              Allocated to registers 
                                   1235 ;map_address               Allocated to registers 
                                   1236 ;__1310720022              Allocated to registers 
                                   1237 ;__1310720023              Allocated to registers 
                                   1238 ;addr                      Allocated to registers 
                                   1239 ;d                         Allocated to registers 
                                   1240 ;map_address               Allocated to registers 
                                   1241 ;__1310720004              Allocated to registers 
                                   1242 ;__1310720005              Allocated to registers 
                                   1243 ;map_address               Allocated to registers 
                                   1244 ;d                         Allocated to registers 
                                   1245 ;__1310720038              Allocated to registers 
                                   1246 ;addr                      Allocated to registers 
                                   1247 ;__1310720019              Allocated to registers 
                                   1248 ;map_address               Allocated to registers 
                                   1249 ;__1310720016              Allocated to registers 
                                   1250 ;__1310720017              Allocated to registers 
                                   1251 ;addr                      Allocated to registers 
                                   1252 ;d                         Allocated to registers 
                                   1253 ;map_address               Allocated to registers 
                                   1254 ;__1310720004              Allocated to registers 
                                   1255 ;__1310720005              Allocated to registers 
                                   1256 ;map_address               Allocated to registers 
                                   1257 ;d                         Allocated to registers 
                                   1258 ;__1310720020              Allocated to registers 
                                   1259 ;map_address               Allocated to registers 
                                   1260 ;__1310720022              Allocated to registers 
                                   1261 ;__1310720023              Allocated to registers 
                                   1262 ;addr                      Allocated to registers 
                                   1263 ;d                         Allocated to registers 
                                   1264 ;map_address               Allocated to registers 
                                   1265 ;__1310720004              Allocated to registers 
                                   1266 ;__1310720005              Allocated to registers 
                                   1267 ;map_address               Allocated to registers 
                                   1268 ;d                         Allocated to registers 
                                   1269 ;__1310720041              Allocated to registers 
                                   1270 ;addr                      Allocated to registers 
                                   1271 ;__1310720019              Allocated to registers 
                                   1272 ;map_address               Allocated to registers 
                                   1273 ;__1310720016              Allocated to registers 
                                   1274 ;__1310720017              Allocated to registers 
                                   1275 ;addr                      Allocated to registers 
                                   1276 ;d                         Allocated to registers 
                                   1277 ;map_address               Allocated to registers 
                                   1278 ;__1310720004              Allocated to registers 
                                   1279 ;__1310720005              Allocated to registers 
                                   1280 ;map_address               Allocated to registers 
                                   1281 ;d                         Allocated to registers 
                                   1282 ;__1310720020              Allocated to registers 
                                   1283 ;map_address               Allocated to registers 
                                   1284 ;__1310720022              Allocated to registers 
                                   1285 ;__1310720023              Allocated to registers 
                                   1286 ;addr                      Allocated to registers 
                                   1287 ;d                         Allocated to registers 
                                   1288 ;map_address               Allocated to registers 
                                   1289 ;__1310720004              Allocated to registers 
                                   1290 ;__1310720005              Allocated to registers 
                                   1291 ;map_address               Allocated to registers 
                                   1292 ;d                         Allocated to registers 
                                   1293 ;------------------------------------------------------------
                                   1294 ;	ECEN4330Lab7.c:326: void rtcPrint(void) {
                                   1295 ;	-----------------------------------------
                                   1296 ;	 function rtcPrint
                                   1297 ;	-----------------------------------------
      000207                       1298 _rtcPrint:
                                   1299 ;	ECEN4330Lab7.c:329: xCursorHold = cursor_x;
      000207 85 29 59         [24] 1300 	mov	_xCursorHold,_cursor_x
                                   1301 ;	ECEN4330Lab7.c:330: yCursorHold = cursor_y;
      00020A 85 2B 5A         [24] 1302 	mov	_yCursorHold,_cursor_y
                                   1303 ;	ECEN4330Lab7.c:331: textSizeHold = textsize;
      00020D 85 2D 5B         [24] 1304 	mov	_textSizeHold,_textsize
                                   1305 ;	ECEN4330Lab7.c:333: setTextColor(GRAY, BLACK);
      000210 E4               [12] 1306 	clr	a
      000211 F5 08            [12] 1307 	mov	_setTextColor_PARM_2,a
      000213 F5 09            [12] 1308 	mov	(_setTextColor_PARM_2 + 1),a
      000215 90 D6 BA         [24] 1309 	mov	dptr,#0xd6ba
      000218 12 03 70         [24] 1310 	lcall	_setTextColor
                                   1311 ;	ECEN4330Lab7.c:334: setTextSize(2);
      00021B 75 82 02         [24] 1312 	mov	dpl,#0x02
      00021E 12 03 7D         [24] 1313 	lcall	_setTextSize
                                   1314 ;	ECEN4330Lab7.c:335: setCursor(132, 304);
      000221 75 08 30         [24] 1315 	mov	_setCursor_PARM_2,#0x30
      000224 75 09 01         [24] 1316 	mov	(_setCursor_PARM_2 + 1),#0x01
      000227 90 00 84         [24] 1317 	mov	dptr,#0x0084
      00022A 12 03 63         [24] 1318 	lcall	_setCursor
                                   1319 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1320 ;	assignBit
      00022D D2 B4            [12] 1321 	setb	_P3_4
                                   1322 ;	ECEN4330Lab7.c:167: *map_address = d;
      00022F 90 00 0D         [24] 1323 	mov	dptr,#0x000d
      000232 74 01            [12] 1324 	mov	a,#0x01
      000234 F0               [24] 1325 	movx	@dptr,a
                                   1326 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1327 ;	assignBit
      000235 C2 B4            [12] 1328 	clr	_P3_4
                                   1329 ;	ECEN4330Lab7.c:311: rtcBusy();
      000237 12 01 86         [24] 1330 	lcall	_rtcBusy
                                   1331 ;	ECEN4330Lab7.c:179: IOM = 1;                            
                                   1332 ;	assignBit
      00023A D2 B4            [12] 1333 	setb	_P3_4
                                   1334 ;	ECEN4330Lab7.c:180: data = *map_address;
      00023C 90 00 05         [24] 1335 	mov	dptr,#0x0005
      00023F E0               [24] 1336 	movx	a,@dptr
      000240 F5 41            [12] 1337 	mov	_data,a
                                   1338 ;	ECEN4330Lab7.c:181: IOM = 0;    
                                   1339 ;	assignBit
      000242 C2 B4            [12] 1340 	clr	_P3_4
                                   1341 ;	ECEN4330Lab7.c:182: return data;   
                                   1342 ;	ECEN4330Lab7.c:314: data = (data & 0x0F) | 0x30; // ascii the lower word
      000244 E5 41            [12] 1343 	mov	a,_data
      000246 54 0F            [12] 1344 	anl	a,#0x0f
      000248 44 30            [12] 1345 	orl	a,#0x30
      00024A F5 41            [12] 1346 	mov	_data,a
                                   1347 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1348 ;	assignBit
      00024C D2 B4            [12] 1349 	setb	_P3_4
                                   1350 ;	ECEN4330Lab7.c:167: *map_address = d;
      00024E 90 00 0D         [24] 1351 	mov	dptr,#0x000d
      000251 E4               [12] 1352 	clr	a
      000252 F0               [24] 1353 	movx	@dptr,a
                                   1354 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1355 ;	assignBit
      000253 C2 B4            [12] 1356 	clr	_P3_4
                                   1357 ;	ECEN4330Lab7.c:316: return data;
      000255 85 41 82         [24] 1358 	mov	dpl,_data
                                   1359 ;	ECEN4330Lab7.c:338: write(t);
      000258 12 09 F9         [24] 1360 	lcall	_write
                                   1361 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1362 ;	assignBit
      00025B D2 B4            [12] 1363 	setb	_P3_4
                                   1364 ;	ECEN4330Lab7.c:167: *map_address = d;
      00025D 90 00 0D         [24] 1365 	mov	dptr,#0x000d
      000260 74 01            [12] 1366 	mov	a,#0x01
      000262 F0               [24] 1367 	movx	@dptr,a
                                   1368 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1369 ;	assignBit
      000263 C2 B4            [12] 1370 	clr	_P3_4
                                   1371 ;	ECEN4330Lab7.c:311: rtcBusy();
      000265 12 01 86         [24] 1372 	lcall	_rtcBusy
                                   1373 ;	ECEN4330Lab7.c:179: IOM = 1;                            
                                   1374 ;	assignBit
      000268 D2 B4            [12] 1375 	setb	_P3_4
                                   1376 ;	ECEN4330Lab7.c:180: data = *map_address;
      00026A 90 00 04         [24] 1377 	mov	dptr,#0x0004
      00026D E0               [24] 1378 	movx	a,@dptr
      00026E F5 41            [12] 1379 	mov	_data,a
                                   1380 ;	ECEN4330Lab7.c:181: IOM = 0;    
                                   1381 ;	assignBit
      000270 C2 B4            [12] 1382 	clr	_P3_4
                                   1383 ;	ECEN4330Lab7.c:182: return data;   
                                   1384 ;	ECEN4330Lab7.c:314: data = (data & 0x0F) | 0x30; // ascii the lower word
      000272 E5 41            [12] 1385 	mov	a,_data
      000274 54 0F            [12] 1386 	anl	a,#0x0f
      000276 44 30            [12] 1387 	orl	a,#0x30
      000278 F5 41            [12] 1388 	mov	_data,a
                                   1389 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1390 ;	assignBit
      00027A D2 B4            [12] 1391 	setb	_P3_4
                                   1392 ;	ECEN4330Lab7.c:167: *map_address = d;
      00027C 90 00 0D         [24] 1393 	mov	dptr,#0x000d
      00027F E4               [12] 1394 	clr	a
      000280 F0               [24] 1395 	movx	@dptr,a
                                   1396 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1397 ;	assignBit
      000281 C2 B4            [12] 1398 	clr	_P3_4
                                   1399 ;	ECEN4330Lab7.c:316: return data;
      000283 85 41 82         [24] 1400 	mov	dpl,_data
                                   1401 ;	ECEN4330Lab7.c:340: write(t);
      000286 12 09 F9         [24] 1402 	lcall	_write
                                   1403 ;	ECEN4330Lab7.c:341: LCD_string_write(":");
      000289 90 28 AC         [24] 1404 	mov	dptr,#___str_0
      00028C 75 F0 80         [24] 1405 	mov	b,#0x80
      00028F 12 0A 5F         [24] 1406 	lcall	_LCD_string_write
                                   1407 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1408 ;	assignBit
      000292 D2 B4            [12] 1409 	setb	_P3_4
                                   1410 ;	ECEN4330Lab7.c:167: *map_address = d;
      000294 90 00 0D         [24] 1411 	mov	dptr,#0x000d
      000297 74 01            [12] 1412 	mov	a,#0x01
      000299 F0               [24] 1413 	movx	@dptr,a
                                   1414 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1415 ;	assignBit
      00029A C2 B4            [12] 1416 	clr	_P3_4
                                   1417 ;	ECEN4330Lab7.c:311: rtcBusy();
      00029C 12 01 86         [24] 1418 	lcall	_rtcBusy
                                   1419 ;	ECEN4330Lab7.c:179: IOM = 1;                            
                                   1420 ;	assignBit
      00029F D2 B4            [12] 1421 	setb	_P3_4
                                   1422 ;	ECEN4330Lab7.c:180: data = *map_address;
      0002A1 90 00 03         [24] 1423 	mov	dptr,#0x0003
      0002A4 E0               [24] 1424 	movx	a,@dptr
      0002A5 F5 41            [12] 1425 	mov	_data,a
                                   1426 ;	ECEN4330Lab7.c:181: IOM = 0;    
                                   1427 ;	assignBit
      0002A7 C2 B4            [12] 1428 	clr	_P3_4
                                   1429 ;	ECEN4330Lab7.c:182: return data;   
                                   1430 ;	ECEN4330Lab7.c:314: data = (data & 0x0F) | 0x30; // ascii the lower word
      0002A9 E5 41            [12] 1431 	mov	a,_data
      0002AB 54 0F            [12] 1432 	anl	a,#0x0f
      0002AD 44 30            [12] 1433 	orl	a,#0x30
      0002AF F5 41            [12] 1434 	mov	_data,a
                                   1435 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1436 ;	assignBit
      0002B1 D2 B4            [12] 1437 	setb	_P3_4
                                   1438 ;	ECEN4330Lab7.c:167: *map_address = d;
      0002B3 90 00 0D         [24] 1439 	mov	dptr,#0x000d
      0002B6 E4               [12] 1440 	clr	a
      0002B7 F0               [24] 1441 	movx	@dptr,a
                                   1442 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1443 ;	assignBit
      0002B8 C2 B4            [12] 1444 	clr	_P3_4
                                   1445 ;	ECEN4330Lab7.c:316: return data;
      0002BA 85 41 82         [24] 1446 	mov	dpl,_data
                                   1447 ;	ECEN4330Lab7.c:343: write(t);
      0002BD 12 09 F9         [24] 1448 	lcall	_write
                                   1449 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1450 ;	assignBit
      0002C0 D2 B4            [12] 1451 	setb	_P3_4
                                   1452 ;	ECEN4330Lab7.c:167: *map_address = d;
      0002C2 90 00 0D         [24] 1453 	mov	dptr,#0x000d
      0002C5 74 01            [12] 1454 	mov	a,#0x01
      0002C7 F0               [24] 1455 	movx	@dptr,a
                                   1456 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1457 ;	assignBit
      0002C8 C2 B4            [12] 1458 	clr	_P3_4
                                   1459 ;	ECEN4330Lab7.c:311: rtcBusy();
      0002CA 12 01 86         [24] 1460 	lcall	_rtcBusy
                                   1461 ;	ECEN4330Lab7.c:179: IOM = 1;                            
                                   1462 ;	assignBit
      0002CD D2 B4            [12] 1463 	setb	_P3_4
                                   1464 ;	ECEN4330Lab7.c:180: data = *map_address;
      0002CF 90 00 02         [24] 1465 	mov	dptr,#0x0002
      0002D2 E0               [24] 1466 	movx	a,@dptr
      0002D3 F5 41            [12] 1467 	mov	_data,a
                                   1468 ;	ECEN4330Lab7.c:181: IOM = 0;    
                                   1469 ;	assignBit
      0002D5 C2 B4            [12] 1470 	clr	_P3_4
                                   1471 ;	ECEN4330Lab7.c:182: return data;   
                                   1472 ;	ECEN4330Lab7.c:314: data = (data & 0x0F) | 0x30; // ascii the lower word
      0002D7 E5 41            [12] 1473 	mov	a,_data
      0002D9 54 0F            [12] 1474 	anl	a,#0x0f
      0002DB 44 30            [12] 1475 	orl	a,#0x30
      0002DD F5 41            [12] 1476 	mov	_data,a
                                   1477 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1478 ;	assignBit
      0002DF D2 B4            [12] 1479 	setb	_P3_4
                                   1480 ;	ECEN4330Lab7.c:167: *map_address = d;
      0002E1 90 00 0D         [24] 1481 	mov	dptr,#0x000d
      0002E4 E4               [12] 1482 	clr	a
      0002E5 F0               [24] 1483 	movx	@dptr,a
                                   1484 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1485 ;	assignBit
      0002E6 C2 B4            [12] 1486 	clr	_P3_4
                                   1487 ;	ECEN4330Lab7.c:316: return data;
      0002E8 85 41 82         [24] 1488 	mov	dpl,_data
                                   1489 ;	ECEN4330Lab7.c:345: write(t);
      0002EB 12 09 F9         [24] 1490 	lcall	_write
                                   1491 ;	ECEN4330Lab7.c:346: LCD_string_write(":");
      0002EE 90 28 AC         [24] 1492 	mov	dptr,#___str_0
      0002F1 75 F0 80         [24] 1493 	mov	b,#0x80
      0002F4 12 0A 5F         [24] 1494 	lcall	_LCD_string_write
                                   1495 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1496 ;	assignBit
      0002F7 D2 B4            [12] 1497 	setb	_P3_4
                                   1498 ;	ECEN4330Lab7.c:167: *map_address = d;
      0002F9 90 00 0D         [24] 1499 	mov	dptr,#0x000d
      0002FC 74 01            [12] 1500 	mov	a,#0x01
      0002FE F0               [24] 1501 	movx	@dptr,a
                                   1502 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1503 ;	assignBit
      0002FF C2 B4            [12] 1504 	clr	_P3_4
                                   1505 ;	ECEN4330Lab7.c:311: rtcBusy();
      000301 12 01 86         [24] 1506 	lcall	_rtcBusy
                                   1507 ;	ECEN4330Lab7.c:179: IOM = 1;                            
                                   1508 ;	assignBit
      000304 D2 B4            [12] 1509 	setb	_P3_4
                                   1510 ;	ECEN4330Lab7.c:180: data = *map_address;
      000306 90 00 01         [24] 1511 	mov	dptr,#0x0001
      000309 E0               [24] 1512 	movx	a,@dptr
      00030A F5 41            [12] 1513 	mov	_data,a
                                   1514 ;	ECEN4330Lab7.c:181: IOM = 0;    
                                   1515 ;	assignBit
      00030C C2 B4            [12] 1516 	clr	_P3_4
                                   1517 ;	ECEN4330Lab7.c:182: return data;   
                                   1518 ;	ECEN4330Lab7.c:314: data = (data & 0x0F) | 0x30; // ascii the lower word
      00030E E5 41            [12] 1519 	mov	a,_data
      000310 54 0F            [12] 1520 	anl	a,#0x0f
      000312 44 30            [12] 1521 	orl	a,#0x30
      000314 F5 41            [12] 1522 	mov	_data,a
                                   1523 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1524 ;	assignBit
      000316 D2 B4            [12] 1525 	setb	_P3_4
                                   1526 ;	ECEN4330Lab7.c:167: *map_address = d;
      000318 90 00 0D         [24] 1527 	mov	dptr,#0x000d
      00031B E4               [12] 1528 	clr	a
      00031C F0               [24] 1529 	movx	@dptr,a
                                   1530 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1531 ;	assignBit
      00031D C2 B4            [12] 1532 	clr	_P3_4
                                   1533 ;	ECEN4330Lab7.c:316: return data;
      00031F 85 41 82         [24] 1534 	mov	dpl,_data
                                   1535 ;	ECEN4330Lab7.c:348: write(t);
      000322 12 09 F9         [24] 1536 	lcall	_write
                                   1537 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1538 ;	assignBit
      000325 D2 B4            [12] 1539 	setb	_P3_4
                                   1540 ;	ECEN4330Lab7.c:167: *map_address = d;
      000327 90 00 0D         [24] 1541 	mov	dptr,#0x000d
      00032A 74 01            [12] 1542 	mov	a,#0x01
      00032C F0               [24] 1543 	movx	@dptr,a
                                   1544 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1545 ;	assignBit
      00032D C2 B4            [12] 1546 	clr	_P3_4
                                   1547 ;	ECEN4330Lab7.c:311: rtcBusy();
      00032F 12 01 86         [24] 1548 	lcall	_rtcBusy
                                   1549 ;	ECEN4330Lab7.c:179: IOM = 1;                            
                                   1550 ;	assignBit
      000332 D2 B4            [12] 1551 	setb	_P3_4
                                   1552 ;	ECEN4330Lab7.c:180: data = *map_address;
      000334 90 00 00         [24] 1553 	mov	dptr,#0x0000
      000337 E0               [24] 1554 	movx	a,@dptr
      000338 F5 41            [12] 1555 	mov	_data,a
                                   1556 ;	ECEN4330Lab7.c:181: IOM = 0;    
                                   1557 ;	assignBit
      00033A C2 B4            [12] 1558 	clr	_P3_4
                                   1559 ;	ECEN4330Lab7.c:182: return data;   
                                   1560 ;	ECEN4330Lab7.c:314: data = (data & 0x0F) | 0x30; // ascii the lower word
      00033C E5 41            [12] 1561 	mov	a,_data
      00033E 54 0F            [12] 1562 	anl	a,#0x0f
      000340 44 30            [12] 1563 	orl	a,#0x30
      000342 F5 41            [12] 1564 	mov	_data,a
                                   1565 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   1566 ;	assignBit
      000344 D2 B4            [12] 1567 	setb	_P3_4
                                   1568 ;	ECEN4330Lab7.c:167: *map_address = d;
      000346 90 00 0D         [24] 1569 	mov	dptr,#0x000d
      000349 E4               [12] 1570 	clr	a
      00034A F0               [24] 1571 	movx	@dptr,a
                                   1572 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   1573 ;	assignBit
      00034B C2 B4            [12] 1574 	clr	_P3_4
                                   1575 ;	ECEN4330Lab7.c:316: return data;
      00034D 85 41 82         [24] 1576 	mov	dpl,_data
                                   1577 ;	ECEN4330Lab7.c:350: write(t);
      000350 12 09 F9         [24] 1578 	lcall	_write
                                   1579 ;	ECEN4330Lab7.c:352: cursor_x = xCursorHold;
      000353 85 59 29         [24] 1580 	mov	_cursor_x,_xCursorHold
      000356 75 2A 00         [24] 1581 	mov	(_cursor_x + 1),#0x00
                                   1582 ;	ECEN4330Lab7.c:353: cursor_y = yCursorHold;
      000359 85 5A 2B         [24] 1583 	mov	_cursor_y,_yCursorHold
      00035C 75 2C 00         [24] 1584 	mov	(_cursor_y + 1),#0x00
                                   1585 ;	ECEN4330Lab7.c:354: textsize = textSizeHold;
      00035F 85 5B 2D         [24] 1586 	mov	_textsize,_textSizeHold
                                   1587 ;	ECEN4330Lab7.c:355: }
      000362 22               [24] 1588 	ret
                                   1589 ;------------------------------------------------------------
                                   1590 ;Allocation info for local variables in function 'setCursor'
                                   1591 ;------------------------------------------------------------
                                   1592 ;y                         Allocated with name '_setCursor_PARM_2'
                                   1593 ;x                         Allocated to registers 
                                   1594 ;------------------------------------------------------------
                                   1595 ;	ECEN4330Lab7.c:375: void setCursor(u16 x, u16 y){
                                   1596 ;	-----------------------------------------
                                   1597 ;	 function setCursor
                                   1598 ;	-----------------------------------------
      000363                       1599 _setCursor:
      000363 85 82 29         [24] 1600 	mov	_cursor_x,dpl
      000366 85 83 2A         [24] 1601 	mov	(_cursor_x + 1),dph
                                   1602 ;	ECEN4330Lab7.c:377: cursor_y = y;
      000369 85 08 2B         [24] 1603 	mov	_cursor_y,_setCursor_PARM_2
      00036C 85 09 2C         [24] 1604 	mov	(_cursor_y + 1),(_setCursor_PARM_2 + 1)
                                   1605 ;	ECEN4330Lab7.c:378: }
      00036F 22               [24] 1606 	ret
                                   1607 ;------------------------------------------------------------
                                   1608 ;Allocation info for local variables in function 'setTextColor'
                                   1609 ;------------------------------------------------------------
                                   1610 ;y                         Allocated with name '_setTextColor_PARM_2'
                                   1611 ;x                         Allocated to registers 
                                   1612 ;------------------------------------------------------------
                                   1613 ;	ECEN4330Lab7.c:386: void setTextColor(u16 x, u16 y){
                                   1614 ;	-----------------------------------------
                                   1615 ;	 function setTextColor
                                   1616 ;	-----------------------------------------
      000370                       1617 _setTextColor:
      000370 85 82 2F         [24] 1618 	mov	_textcolor,dpl
      000373 85 83 30         [24] 1619 	mov	(_textcolor + 1),dph
                                   1620 ;	ECEN4330Lab7.c:388: textbgcolor = y;
      000376 85 08 31         [24] 1621 	mov	_textbgcolor,_setTextColor_PARM_2
      000379 85 09 32         [24] 1622 	mov	(_textbgcolor + 1),(_setTextColor_PARM_2 + 1)
                                   1623 ;	ECEN4330Lab7.c:389: }
      00037C 22               [24] 1624 	ret
                                   1625 ;------------------------------------------------------------
                                   1626 ;Allocation info for local variables in function 'setTextSize'
                                   1627 ;------------------------------------------------------------
                                   1628 ;s                         Allocated to registers r7 
                                   1629 ;------------------------------------------------------------
                                   1630 ;	ECEN4330Lab7.c:397: void setTextSize(u8 s){
                                   1631 ;	-----------------------------------------
                                   1632 ;	 function setTextSize
                                   1633 ;	-----------------------------------------
      00037D                       1634 _setTextSize:
                                   1635 ;	ECEN4330Lab7.c:398: if (s > 8) return;
      00037D E5 82            [12] 1636 	mov	a,dpl
      00037F FF               [12] 1637 	mov	r7,a
      000380 24 F7            [12] 1638 	add	a,#0xff - 0x08
      000382 50 01            [24] 1639 	jnc	00102$
      000384 22               [24] 1640 	ret
      000385                       1641 00102$:
                                   1642 ;	ECEN4330Lab7.c:399: textsize = (s>0) ? s : 1 ;
      000385 EF               [12] 1643 	mov	a,r7
      000386 60 06            [24] 1644 	jz	00105$
      000388 8F 06            [24] 1645 	mov	ar6,r7
      00038A 7F 00            [12] 1646 	mov	r7,#0x00
      00038C 80 04            [24] 1647 	sjmp	00106$
      00038E                       1648 00105$:
      00038E 7E 01            [12] 1649 	mov	r6,#0x01
      000390 7F 00            [12] 1650 	mov	r7,#0x00
      000392                       1651 00106$:
      000392 8E 2D            [24] 1652 	mov	_textsize,r6
                                   1653 ;	ECEN4330Lab7.c:400: }
      000394 22               [24] 1654 	ret
                                   1655 ;------------------------------------------------------------
                                   1656 ;Allocation info for local variables in function 'setRotation'
                                   1657 ;------------------------------------------------------------
                                   1658 ;flag                      Allocated to registers r7 
                                   1659 ;------------------------------------------------------------
                                   1660 ;	ECEN4330Lab7.c:408: void setRotation(u8 flag){
                                   1661 ;	-----------------------------------------
                                   1662 ;	 function setRotation
                                   1663 ;	-----------------------------------------
      000395                       1664 _setRotation:
                                   1665 ;	ECEN4330Lab7.c:409: switch(flag) {
      000395 E5 82            [12] 1666 	mov	a,dpl
      000397 FF               [12] 1667 	mov	r7,a
      000398 24 FC            [12] 1668 	add	a,#0xff - 0x03
      00039A 40 4E            [24] 1669 	jc	00105$
      00039C EF               [12] 1670 	mov	a,r7
      00039D 2F               [12] 1671 	add	a,r7
                                   1672 ;	ECEN4330Lab7.c:410: case 0:
      00039E 90 03 A2         [24] 1673 	mov	dptr,#00115$
      0003A1 73               [24] 1674 	jmp	@a+dptr
      0003A2                       1675 00115$:
      0003A2 80 06            [24] 1676 	sjmp	00101$
      0003A4 80 14            [24] 1677 	sjmp	00102$
      0003A6 80 22            [24] 1678 	sjmp	00103$
      0003A8 80 30            [24] 1679 	sjmp	00104$
      0003AA                       1680 00101$:
                                   1681 ;	ECEN4330Lab7.c:411: flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_BGR);
      0003AA 7F 48            [12] 1682 	mov	r7,#0x48
                                   1683 ;	ECEN4330Lab7.c:412: _width = TFTWIDTH;
      0003AC 75 33 F0         [24] 1684 	mov	__width,#0xf0
      0003AF 75 34 00         [24] 1685 	mov	(__width + 1),#0x00
                                   1686 ;	ECEN4330Lab7.c:413: _height = TFTHEIGHT;
      0003B2 75 35 40         [24] 1687 	mov	__height,#0x40
      0003B5 75 36 01         [24] 1688 	mov	(__height + 1),#0x01
                                   1689 ;	ECEN4330Lab7.c:414: break;
                                   1690 ;	ECEN4330Lab7.c:415: case 1:
      0003B8 80 3E            [24] 1691 	sjmp	00106$
      0003BA                       1692 00102$:
                                   1693 ;	ECEN4330Lab7.c:416: flag = (ILI9341_MADCTL_MV | ILI9341_MADCTL_BGR);
      0003BA 7F 28            [12] 1694 	mov	r7,#0x28
                                   1695 ;	ECEN4330Lab7.c:417: _width = TFTHEIGHT;
      0003BC 75 33 40         [24] 1696 	mov	__width,#0x40
      0003BF 75 34 01         [24] 1697 	mov	(__width + 1),#0x01
                                   1698 ;	ECEN4330Lab7.c:418: _height = TFTWIDTH;
      0003C2 75 35 F0         [24] 1699 	mov	__height,#0xf0
      0003C5 75 36 00         [24] 1700 	mov	(__height + 1),#0x00
                                   1701 ;	ECEN4330Lab7.c:419: break;
                                   1702 ;	ECEN4330Lab7.c:420: case 2:
      0003C8 80 2E            [24] 1703 	sjmp	00106$
      0003CA                       1704 00103$:
                                   1705 ;	ECEN4330Lab7.c:421: flag = (ILI9341_MADCTL_MY | ILI9341_MADCTL_BGR);
      0003CA 7F 88            [12] 1706 	mov	r7,#0x88
                                   1707 ;	ECEN4330Lab7.c:422: _width = TFTWIDTH;
      0003CC 75 33 F0         [24] 1708 	mov	__width,#0xf0
      0003CF 75 34 00         [24] 1709 	mov	(__width + 1),#0x00
                                   1710 ;	ECEN4330Lab7.c:423: _height = TFTHEIGHT;
      0003D2 75 35 40         [24] 1711 	mov	__height,#0x40
      0003D5 75 36 01         [24] 1712 	mov	(__height + 1),#0x01
                                   1713 ;	ECEN4330Lab7.c:424: break;
                                   1714 ;	ECEN4330Lab7.c:425: case 3:
      0003D8 80 1E            [24] 1715 	sjmp	00106$
      0003DA                       1716 00104$:
                                   1717 ;	ECEN4330Lab7.c:426: flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_MY | ILI9341_MADCTL_MV | ILI9341_MADCTL_BGR);
      0003DA 7F E8            [12] 1718 	mov	r7,#0xe8
                                   1719 ;	ECEN4330Lab7.c:427: _width = TFTHEIGHT;
      0003DC 75 33 40         [24] 1720 	mov	__width,#0x40
      0003DF 75 34 01         [24] 1721 	mov	(__width + 1),#0x01
                                   1722 ;	ECEN4330Lab7.c:428: _height = TFTWIDTH;
      0003E2 75 35 F0         [24] 1723 	mov	__height,#0xf0
      0003E5 75 36 00         [24] 1724 	mov	(__height + 1),#0x00
                                   1725 ;	ECEN4330Lab7.c:429: break;
                                   1726 ;	ECEN4330Lab7.c:430: default:
      0003E8 80 0E            [24] 1727 	sjmp	00106$
      0003EA                       1728 00105$:
                                   1729 ;	ECEN4330Lab7.c:431: flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_BGR);
      0003EA 7F 48            [12] 1730 	mov	r7,#0x48
                                   1731 ;	ECEN4330Lab7.c:432: _width = TFTWIDTH;
      0003EC 75 33 F0         [24] 1732 	mov	__width,#0xf0
      0003EF 75 34 00         [24] 1733 	mov	(__width + 1),#0x00
                                   1734 ;	ECEN4330Lab7.c:433: _height = TFTHEIGHT;
      0003F2 75 35 40         [24] 1735 	mov	__height,#0x40
      0003F5 75 36 01         [24] 1736 	mov	(__height + 1),#0x01
                                   1737 ;	ECEN4330Lab7.c:435: }
      0003F8                       1738 00106$:
                                   1739 ;	ECEN4330Lab7.c:436: writeRegister8(ILI9341_MEMCONTROL, flag);
      0003F8 8F 08            [24] 1740 	mov	_writeRegister8_PARM_2,r7
      0003FA 75 82 36         [24] 1741 	mov	dpl,#0x36
                                   1742 ;	ECEN4330Lab7.c:437: }
      0003FD 02 00 EB         [24] 1743 	ljmp	_writeRegister8
                                   1744 ;------------------------------------------------------------
                                   1745 ;Allocation info for local variables in function 'setAddress'
                                   1746 ;------------------------------------------------------------
                                   1747 ;y1                        Allocated with name '_setAddress_PARM_2'
                                   1748 ;x2                        Allocated with name '_setAddress_PARM_3'
                                   1749 ;y2                        Allocated with name '_setAddress_PARM_4'
                                   1750 ;x1                        Allocated to registers r6 r7 
                                   1751 ;------------------------------------------------------------
                                   1752 ;	ECEN4330Lab7.c:446: void setAddress(unsigned int x1,unsigned int y1,unsigned int x2,unsigned int y2){
                                   1753 ;	-----------------------------------------
                                   1754 ;	 function setAddress
                                   1755 ;	-----------------------------------------
      000400                       1756 _setAddress:
      000400 AE 82            [24] 1757 	mov	r6,dpl
      000402 AF 83            [24] 1758 	mov	r7,dph
                                   1759 ;	ECEN4330Lab7.c:447: write8Reg(0x2A);
                                   1760 ;	assignBit
      000404 C2 B5            [12] 1761 	clr	_P3_5
                                   1762 ;	assignBit
      000406 D2 B4            [12] 1763 	setb	_P3_4
      000408 85 23 82         [24] 1764 	mov	dpl,_lcd_address
      00040B 85 24 83         [24] 1765 	mov	dph,(_lcd_address + 1)
      00040E 74 2A            [12] 1766 	mov	a,#0x2a
      000410 F0               [24] 1767 	movx	@dptr,a
                                   1768 ;	assignBit
      000411 C2 B4            [12] 1769 	clr	_P3_4
                                   1770 ;	ECEN4330Lab7.c:448: write8Data(x1 >> 8);
                                   1771 ;	assignBit
      000413 D2 B5            [12] 1772 	setb	_P3_5
                                   1773 ;	assignBit
      000415 D2 B4            [12] 1774 	setb	_P3_4
      000417 85 23 82         [24] 1775 	mov	dpl,_lcd_address
      00041A 85 24 83         [24] 1776 	mov	dph,(_lcd_address + 1)
      00041D 8F 05            [24] 1777 	mov	ar5,r7
      00041F ED               [12] 1778 	mov	a,r5
      000420 F0               [24] 1779 	movx	@dptr,a
                                   1780 ;	assignBit
      000421 C2 B4            [12] 1781 	clr	_P3_4
                                   1782 ;	ECEN4330Lab7.c:449: write8Data(x1);
                                   1783 ;	assignBit
      000423 D2 B5            [12] 1784 	setb	_P3_5
                                   1785 ;	assignBit
      000425 D2 B4            [12] 1786 	setb	_P3_4
      000427 85 23 82         [24] 1787 	mov	dpl,_lcd_address
      00042A 85 24 83         [24] 1788 	mov	dph,(_lcd_address + 1)
      00042D EE               [12] 1789 	mov	a,r6
      00042E F0               [24] 1790 	movx	@dptr,a
                                   1791 ;	assignBit
      00042F C2 B4            [12] 1792 	clr	_P3_4
                                   1793 ;	ECEN4330Lab7.c:450: write8Data(x2 >> 8);
                                   1794 ;	assignBit
      000431 D2 B5            [12] 1795 	setb	_P3_5
                                   1796 ;	assignBit
      000433 D2 B4            [12] 1797 	setb	_P3_4
      000435 85 23 82         [24] 1798 	mov	dpl,_lcd_address
      000438 85 24 83         [24] 1799 	mov	dph,(_lcd_address + 1)
      00043B E5 0B            [12] 1800 	mov	a,(_setAddress_PARM_3 + 1)
      00043D F0               [24] 1801 	movx	@dptr,a
                                   1802 ;	assignBit
      00043E C2 B4            [12] 1803 	clr	_P3_4
                                   1804 ;	ECEN4330Lab7.c:451: write8Data(x2);
                                   1805 ;	assignBit
      000440 D2 B5            [12] 1806 	setb	_P3_5
                                   1807 ;	assignBit
      000442 D2 B4            [12] 1808 	setb	_P3_4
      000444 85 23 82         [24] 1809 	mov	dpl,_lcd_address
      000447 85 24 83         [24] 1810 	mov	dph,(_lcd_address + 1)
      00044A E5 0A            [12] 1811 	mov	a,_setAddress_PARM_3
      00044C F0               [24] 1812 	movx	@dptr,a
                                   1813 ;	assignBit
      00044D C2 B4            [12] 1814 	clr	_P3_4
                                   1815 ;	ECEN4330Lab7.c:452: write8Reg(0x2B);
                                   1816 ;	assignBit
      00044F C2 B5            [12] 1817 	clr	_P3_5
                                   1818 ;	assignBit
      000451 D2 B4            [12] 1819 	setb	_P3_4
      000453 85 23 82         [24] 1820 	mov	dpl,_lcd_address
      000456 85 24 83         [24] 1821 	mov	dph,(_lcd_address + 1)
      000459 74 2B            [12] 1822 	mov	a,#0x2b
      00045B F0               [24] 1823 	movx	@dptr,a
                                   1824 ;	assignBit
      00045C C2 B4            [12] 1825 	clr	_P3_4
                                   1826 ;	ECEN4330Lab7.c:453: write8Data(y1 >> 8);
                                   1827 ;	assignBit
      00045E D2 B5            [12] 1828 	setb	_P3_5
                                   1829 ;	assignBit
      000460 D2 B4            [12] 1830 	setb	_P3_4
      000462 85 23 82         [24] 1831 	mov	dpl,_lcd_address
      000465 85 24 83         [24] 1832 	mov	dph,(_lcd_address + 1)
      000468 E5 09            [12] 1833 	mov	a,(_setAddress_PARM_2 + 1)
      00046A F0               [24] 1834 	movx	@dptr,a
                                   1835 ;	assignBit
      00046B C2 B4            [12] 1836 	clr	_P3_4
                                   1837 ;	ECEN4330Lab7.c:454: write8Data(y1);
                                   1838 ;	assignBit
      00046D D2 B5            [12] 1839 	setb	_P3_5
                                   1840 ;	assignBit
      00046F D2 B4            [12] 1841 	setb	_P3_4
      000471 85 23 82         [24] 1842 	mov	dpl,_lcd_address
      000474 85 24 83         [24] 1843 	mov	dph,(_lcd_address + 1)
      000477 E5 08            [12] 1844 	mov	a,_setAddress_PARM_2
      000479 F0               [24] 1845 	movx	@dptr,a
                                   1846 ;	assignBit
      00047A C2 B4            [12] 1847 	clr	_P3_4
                                   1848 ;	ECEN4330Lab7.c:455: write8Data(y2 >> 8);
                                   1849 ;	assignBit
      00047C D2 B5            [12] 1850 	setb	_P3_5
                                   1851 ;	assignBit
      00047E D2 B4            [12] 1852 	setb	_P3_4
      000480 85 23 82         [24] 1853 	mov	dpl,_lcd_address
      000483 85 24 83         [24] 1854 	mov	dph,(_lcd_address + 1)
      000486 E5 0D            [12] 1855 	mov	a,(_setAddress_PARM_4 + 1)
      000488 F0               [24] 1856 	movx	@dptr,a
                                   1857 ;	assignBit
      000489 C2 B4            [12] 1858 	clr	_P3_4
                                   1859 ;	ECEN4330Lab7.c:456: write8Data(y2);
                                   1860 ;	assignBit
      00048B D2 B5            [12] 1861 	setb	_P3_5
                                   1862 ;	assignBit
      00048D D2 B4            [12] 1863 	setb	_P3_4
      00048F 85 23 82         [24] 1864 	mov	dpl,_lcd_address
      000492 85 24 83         [24] 1865 	mov	dph,(_lcd_address + 1)
      000495 E5 0C            [12] 1866 	mov	a,_setAddress_PARM_4
      000497 F0               [24] 1867 	movx	@dptr,a
                                   1868 ;	assignBit
      000498 C2 B4            [12] 1869 	clr	_P3_4
                                   1870 ;	ECEN4330Lab7.c:457: }
      00049A 22               [24] 1871 	ret
                                   1872 ;------------------------------------------------------------
                                   1873 ;Allocation info for local variables in function 'TFT_LCD_INIT'
                                   1874 ;------------------------------------------------------------
                                   1875 ;	ECEN4330Lab7.c:465: void TFT_LCD_INIT(void){
                                   1876 ;	-----------------------------------------
                                   1877 ;	 function TFT_LCD_INIT
                                   1878 ;	-----------------------------------------
      00049B                       1879 _TFT_LCD_INIT:
                                   1880 ;	ECEN4330Lab7.c:466: _width = TFTWIDTH;
      00049B 75 33 F0         [24] 1881 	mov	__width,#0xf0
      00049E 75 34 00         [24] 1882 	mov	(__width + 1),#0x00
                                   1883 ;	ECEN4330Lab7.c:467: _height = TFTHEIGHT;
      0004A1 75 35 40         [24] 1884 	mov	__height,#0x40
      0004A4 75 36 01         [24] 1885 	mov	(__height + 1),#0x01
                                   1886 ;	ECEN4330Lab7.c:469: IOM = 0;
                                   1887 ;	assignBit
      0004A7 C2 B4            [12] 1888 	clr	_P3_4
                                   1889 ;	ECEN4330Lab7.c:470: CD = 1;
                                   1890 ;	assignBit
      0004A9 D2 B5            [12] 1891 	setb	_P3_5
                                   1892 ;	ECEN4330Lab7.c:472: write8Reg(0x00);
                                   1893 ;	assignBit
      0004AB C2 B5            [12] 1894 	clr	_P3_5
                                   1895 ;	assignBit
      0004AD D2 B4            [12] 1896 	setb	_P3_4
      0004AF 85 23 82         [24] 1897 	mov	dpl,_lcd_address
      0004B2 85 24 83         [24] 1898 	mov	dph,(_lcd_address + 1)
      0004B5 E4               [12] 1899 	clr	a
      0004B6 F0               [24] 1900 	movx	@dptr,a
                                   1901 ;	assignBit
      0004B7 C2 B4            [12] 1902 	clr	_P3_4
                                   1903 ;	ECEN4330Lab7.c:473: write8Data(0x00);
                                   1904 ;	assignBit
      0004B9 D2 B5            [12] 1905 	setb	_P3_5
                                   1906 ;	assignBit
      0004BB D2 B4            [12] 1907 	setb	_P3_4
      0004BD 85 23 82         [24] 1908 	mov	dpl,_lcd_address
      0004C0 85 24 83         [24] 1909 	mov	dph,(_lcd_address + 1)
      0004C3 E4               [12] 1910 	clr	a
      0004C4 F0               [24] 1911 	movx	@dptr,a
                                   1912 ;	assignBit
      0004C5 C2 B4            [12] 1913 	clr	_P3_4
                                   1914 ;	ECEN4330Lab7.c:474: write8Data(0x00);
                                   1915 ;	assignBit
      0004C7 D2 B5            [12] 1916 	setb	_P3_5
                                   1917 ;	assignBit
      0004C9 D2 B4            [12] 1918 	setb	_P3_4
      0004CB 85 23 82         [24] 1919 	mov	dpl,_lcd_address
      0004CE 85 24 83         [24] 1920 	mov	dph,(_lcd_address + 1)
      0004D1 E4               [12] 1921 	clr	a
      0004D2 F0               [24] 1922 	movx	@dptr,a
                                   1923 ;	assignBit
      0004D3 C2 B4            [12] 1924 	clr	_P3_4
                                   1925 ;	ECEN4330Lab7.c:475: write8Data(0x00);
                                   1926 ;	assignBit
      0004D5 D2 B5            [12] 1927 	setb	_P3_5
                                   1928 ;	assignBit
      0004D7 D2 B4            [12] 1929 	setb	_P3_4
      0004D9 85 23 82         [24] 1930 	mov	dpl,_lcd_address
      0004DC 85 24 83         [24] 1931 	mov	dph,(_lcd_address + 1)
      0004DF E4               [12] 1932 	clr	a
      0004E0 F0               [24] 1933 	movx	@dptr,a
                                   1934 ;	assignBit
      0004E1 C2 B4            [12] 1935 	clr	_P3_4
                                   1936 ;	ECEN4330Lab7.c:476: delay(200);
      0004E3 90 00 C8         [24] 1937 	mov	dptr,#0x00c8
      0004E6 12 00 BF         [24] 1938 	lcall	_delay
                                   1939 ;	ECEN4330Lab7.c:478: writeRegister8(ILI9341_SOFTRESET, 0);
      0004E9 75 08 00         [24] 1940 	mov	_writeRegister8_PARM_2,#0x00
      0004EC 75 82 01         [24] 1941 	mov	dpl,#0x01
      0004EF 12 00 EB         [24] 1942 	lcall	_writeRegister8
                                   1943 ;	ECEN4330Lab7.c:479: delay(50);
      0004F2 90 00 32         [24] 1944 	mov	dptr,#0x0032
      0004F5 12 00 BF         [24] 1945 	lcall	_delay
                                   1946 ;	ECEN4330Lab7.c:481: writeRegister8(ILI9341_DISPLAYOFF, 0);
      0004F8 75 08 00         [24] 1947 	mov	_writeRegister8_PARM_2,#0x00
      0004FB 75 82 28         [24] 1948 	mov	dpl,#0x28
      0004FE 12 00 EB         [24] 1949 	lcall	_writeRegister8
                                   1950 ;	ECEN4330Lab7.c:482: delay(10);
      000501 90 00 0A         [24] 1951 	mov	dptr,#0x000a
      000504 12 00 BF         [24] 1952 	lcall	_delay
                                   1953 ;	ECEN4330Lab7.c:484: writeRegister8(ILI9341_POWERCONTROL1, 0x23);
      000507 75 08 23         [24] 1954 	mov	_writeRegister8_PARM_2,#0x23
      00050A 75 82 C0         [24] 1955 	mov	dpl,#0xc0
      00050D 12 00 EB         [24] 1956 	lcall	_writeRegister8
                                   1957 ;	ECEN4330Lab7.c:485: writeRegister8(ILI9341_POWERCONTROL2, 0x11);
      000510 75 08 11         [24] 1958 	mov	_writeRegister8_PARM_2,#0x11
      000513 75 82 C1         [24] 1959 	mov	dpl,#0xc1
      000516 12 00 EB         [24] 1960 	lcall	_writeRegister8
                                   1961 ;	ECEN4330Lab7.c:486: write8Reg(ILI9341_VCOMCONTROL1);
                                   1962 ;	assignBit
      000519 C2 B5            [12] 1963 	clr	_P3_5
                                   1964 ;	assignBit
      00051B D2 B4            [12] 1965 	setb	_P3_4
      00051D 85 23 82         [24] 1966 	mov	dpl,_lcd_address
      000520 85 24 83         [24] 1967 	mov	dph,(_lcd_address + 1)
      000523 74 C5            [12] 1968 	mov	a,#0xc5
      000525 F0               [24] 1969 	movx	@dptr,a
                                   1970 ;	assignBit
      000526 C2 B4            [12] 1971 	clr	_P3_4
                                   1972 ;	ECEN4330Lab7.c:487: write8Data(0x3d);
                                   1973 ;	assignBit
      000528 D2 B5            [12] 1974 	setb	_P3_5
                                   1975 ;	assignBit
      00052A D2 B4            [12] 1976 	setb	_P3_4
      00052C 85 23 82         [24] 1977 	mov	dpl,_lcd_address
      00052F 85 24 83         [24] 1978 	mov	dph,(_lcd_address + 1)
      000532 74 3D            [12] 1979 	mov	a,#0x3d
      000534 F0               [24] 1980 	movx	@dptr,a
                                   1981 ;	assignBit
      000535 C2 B4            [12] 1982 	clr	_P3_4
                                   1983 ;	ECEN4330Lab7.c:488: write8Data(0x30);
                                   1984 ;	assignBit
      000537 D2 B5            [12] 1985 	setb	_P3_5
                                   1986 ;	assignBit
      000539 D2 B4            [12] 1987 	setb	_P3_4
      00053B 85 23 82         [24] 1988 	mov	dpl,_lcd_address
      00053E 85 24 83         [24] 1989 	mov	dph,(_lcd_address + 1)
      000541 74 30            [12] 1990 	mov	a,#0x30
      000543 F0               [24] 1991 	movx	@dptr,a
                                   1992 ;	assignBit
      000544 C2 B4            [12] 1993 	clr	_P3_4
                                   1994 ;	ECEN4330Lab7.c:489: writeRegister8(ILI9341_VCOMCONTROL2, 0xaa);
      000546 75 08 AA         [24] 1995 	mov	_writeRegister8_PARM_2,#0xaa
      000549 75 82 C7         [24] 1996 	mov	dpl,#0xc7
      00054C 12 00 EB         [24] 1997 	lcall	_writeRegister8
                                   1998 ;	ECEN4330Lab7.c:490: writeRegister8(ILI9341_MEMCONTROL, ILI9341_MADCTL_MY | ILI9341_MADCTL_BGR);
      00054F 75 08 88         [24] 1999 	mov	_writeRegister8_PARM_2,#0x88
      000552 75 82 36         [24] 2000 	mov	dpl,#0x36
      000555 12 00 EB         [24] 2001 	lcall	_writeRegister8
                                   2002 ;	ECEN4330Lab7.c:491: write8Reg(ILI9341_PIXELFORMAT);
                                   2003 ;	assignBit
      000558 C2 B5            [12] 2004 	clr	_P3_5
                                   2005 ;	assignBit
      00055A D2 B4            [12] 2006 	setb	_P3_4
      00055C 85 23 82         [24] 2007 	mov	dpl,_lcd_address
      00055F 85 24 83         [24] 2008 	mov	dph,(_lcd_address + 1)
      000562 74 3A            [12] 2009 	mov	a,#0x3a
      000564 F0               [24] 2010 	movx	@dptr,a
                                   2011 ;	assignBit
      000565 C2 B4            [12] 2012 	clr	_P3_4
                                   2013 ;	ECEN4330Lab7.c:492: write8Data(0x55);
                                   2014 ;	assignBit
      000567 D2 B5            [12] 2015 	setb	_P3_5
                                   2016 ;	assignBit
      000569 D2 B4            [12] 2017 	setb	_P3_4
      00056B 85 23 82         [24] 2018 	mov	dpl,_lcd_address
      00056E 85 24 83         [24] 2019 	mov	dph,(_lcd_address + 1)
      000571 74 55            [12] 2020 	mov	a,#0x55
      000573 F0               [24] 2021 	movx	@dptr,a
                                   2022 ;	assignBit
      000574 C2 B4            [12] 2023 	clr	_P3_4
                                   2024 ;	ECEN4330Lab7.c:493: write8Data(0x00);
                                   2025 ;	assignBit
      000576 D2 B5            [12] 2026 	setb	_P3_5
                                   2027 ;	assignBit
      000578 D2 B4            [12] 2028 	setb	_P3_4
      00057A 85 23 82         [24] 2029 	mov	dpl,_lcd_address
      00057D 85 24 83         [24] 2030 	mov	dph,(_lcd_address + 1)
      000580 E4               [12] 2031 	clr	a
      000581 F0               [24] 2032 	movx	@dptr,a
                                   2033 ;	assignBit
      000582 C2 B4            [12] 2034 	clr	_P3_4
                                   2035 ;	ECEN4330Lab7.c:494: writeRegister16(ILI9341_FRAMECONTROL, 0x001B);
      000584 75 08 1B         [24] 2036 	mov	_writeRegister16_PARM_2,#0x1b
      000587 75 09 00         [24] 2037 	mov	(_writeRegister16_PARM_2 + 1),#0x00
      00058A 90 00 B1         [24] 2038 	mov	dptr,#0x00b1
      00058D 12 01 0B         [24] 2039 	lcall	_writeRegister16
                                   2040 ;	ECEN4330Lab7.c:495: writeRegister8(ILI9341_ENTRYMODE, 0x07);
      000590 75 08 07         [24] 2041 	mov	_writeRegister8_PARM_2,#0x07
      000593 75 82 B7         [24] 2042 	mov	dpl,#0xb7
      000596 12 00 EB         [24] 2043 	lcall	_writeRegister8
                                   2044 ;	ECEN4330Lab7.c:496: writeRegister8(ILI9341_SLEEPOUT, 0);
      000599 75 08 00         [24] 2045 	mov	_writeRegister8_PARM_2,#0x00
      00059C 75 82 11         [24] 2046 	mov	dpl,#0x11
      00059F 12 00 EB         [24] 2047 	lcall	_writeRegister8
                                   2048 ;	ECEN4330Lab7.c:497: delay(150);
      0005A2 90 00 96         [24] 2049 	mov	dptr,#0x0096
      0005A5 12 00 BF         [24] 2050 	lcall	_delay
                                   2051 ;	ECEN4330Lab7.c:499: writeRegister8(ILI9341_DISPLAYON, 0);
      0005A8 75 08 00         [24] 2052 	mov	_writeRegister8_PARM_2,#0x00
      0005AB 75 82 29         [24] 2053 	mov	dpl,#0x29
      0005AE 12 00 EB         [24] 2054 	lcall	_writeRegister8
                                   2055 ;	ECEN4330Lab7.c:500: delay(500);
      0005B1 90 01 F4         [24] 2056 	mov	dptr,#0x01f4
      0005B4 12 00 BF         [24] 2057 	lcall	_delay
                                   2058 ;	ECEN4330Lab7.c:502: setAddress(0,0,_width-1,_height-1);
      0005B7 E5 33            [12] 2059 	mov	a,__width
      0005B9 24 FF            [12] 2060 	add	a,#0xff
      0005BB F5 0A            [12] 2061 	mov	_setAddress_PARM_3,a
      0005BD E5 34            [12] 2062 	mov	a,(__width + 1)
      0005BF 34 FF            [12] 2063 	addc	a,#0xff
      0005C1 F5 0B            [12] 2064 	mov	(_setAddress_PARM_3 + 1),a
      0005C3 E5 35            [12] 2065 	mov	a,__height
      0005C5 24 FF            [12] 2066 	add	a,#0xff
      0005C7 F5 0C            [12] 2067 	mov	_setAddress_PARM_4,a
      0005C9 E5 36            [12] 2068 	mov	a,(__height + 1)
      0005CB 34 FF            [12] 2069 	addc	a,#0xff
      0005CD F5 0D            [12] 2070 	mov	(_setAddress_PARM_4 + 1),a
      0005CF E4               [12] 2071 	clr	a
      0005D0 F5 08            [12] 2072 	mov	_setAddress_PARM_2,a
      0005D2 F5 09            [12] 2073 	mov	(_setAddress_PARM_2 + 1),a
      0005D4 90 00 00         [24] 2074 	mov	dptr,#0x0000
                                   2075 ;	ECEN4330Lab7.c:503: }
      0005D7 02 04 00         [24] 2076 	ljmp	_setAddress
                                   2077 ;------------------------------------------------------------
                                   2078 ;Allocation info for local variables in function 'drawPixel'
                                   2079 ;------------------------------------------------------------
                                   2080 ;y3                        Allocated with name '_drawPixel_PARM_2'
                                   2081 ;color1                    Allocated with name '_drawPixel_PARM_3'
                                   2082 ;x3                        Allocated to registers r6 r7 
                                   2083 ;------------------------------------------------------------
                                   2084 ;	ECEN4330Lab7.c:511: void drawPixel(u16 x3,u16 y3,u16 color1)
                                   2085 ;	-----------------------------------------
                                   2086 ;	 function drawPixel
                                   2087 ;	-----------------------------------------
      0005DA                       2088 _drawPixel:
      0005DA AE 82            [24] 2089 	mov	r6,dpl
      0005DC AF 83            [24] 2090 	mov	r7,dph
                                   2091 ;	ECEN4330Lab7.c:513: setAddress(x3,y3,x3+1,y3+1);
      0005DE 74 01            [12] 2092 	mov	a,#0x01
      0005E0 2E               [12] 2093 	add	a,r6
      0005E1 F5 0A            [12] 2094 	mov	_setAddress_PARM_3,a
      0005E3 E4               [12] 2095 	clr	a
      0005E4 3F               [12] 2096 	addc	a,r7
      0005E5 F5 0B            [12] 2097 	mov	(_setAddress_PARM_3 + 1),a
      0005E7 74 01            [12] 2098 	mov	a,#0x01
      0005E9 25 62            [12] 2099 	add	a,_drawPixel_PARM_2
      0005EB F5 0C            [12] 2100 	mov	_setAddress_PARM_4,a
      0005ED E4               [12] 2101 	clr	a
      0005EE 35 63            [12] 2102 	addc	a,(_drawPixel_PARM_2 + 1)
      0005F0 F5 0D            [12] 2103 	mov	(_setAddress_PARM_4 + 1),a
      0005F2 85 62 08         [24] 2104 	mov	_setAddress_PARM_2,_drawPixel_PARM_2
      0005F5 85 63 09         [24] 2105 	mov	(_setAddress_PARM_2 + 1),(_drawPixel_PARM_2 + 1)
      0005F8 8E 82            [24] 2106 	mov	dpl,r6
      0005FA 8F 83            [24] 2107 	mov	dph,r7
      0005FC 12 04 00         [24] 2108 	lcall	_setAddress
                                   2109 ;	ECEN4330Lab7.c:514: CD=0; 
                                   2110 ;	assignBit
      0005FF C2 B5            [12] 2111 	clr	_P3_5
                                   2112 ;	ECEN4330Lab7.c:515: write8(0x2C);
                                   2113 ;	assignBit
      000601 D2 B4            [12] 2114 	setb	_P3_4
      000603 85 23 82         [24] 2115 	mov	dpl,_lcd_address
      000606 85 24 83         [24] 2116 	mov	dph,(_lcd_address + 1)
      000609 74 2C            [12] 2117 	mov	a,#0x2c
      00060B F0               [24] 2118 	movx	@dptr,a
                                   2119 ;	assignBit
      00060C C2 B4            [12] 2120 	clr	_P3_4
                                   2121 ;	ECEN4330Lab7.c:516: CD = 1;
                                   2122 ;	assignBit
      00060E D2 B5            [12] 2123 	setb	_P3_5
                                   2124 ;	ECEN4330Lab7.c:517: write8(color1>>8);
                                   2125 ;	assignBit
      000610 D2 B4            [12] 2126 	setb	_P3_4
      000612 85 23 82         [24] 2127 	mov	dpl,_lcd_address
      000615 85 24 83         [24] 2128 	mov	dph,(_lcd_address + 1)
      000618 E5 65            [12] 2129 	mov	a,(_drawPixel_PARM_3 + 1)
      00061A F0               [24] 2130 	movx	@dptr,a
                                   2131 ;	assignBit
      00061B C2 B4            [12] 2132 	clr	_P3_4
                                   2133 ;	ECEN4330Lab7.c:518: write8(color1);
                                   2134 ;	assignBit
      00061D D2 B4            [12] 2135 	setb	_P3_4
      00061F 85 23 82         [24] 2136 	mov	dpl,_lcd_address
      000622 85 24 83         [24] 2137 	mov	dph,(_lcd_address + 1)
      000625 E5 64            [12] 2138 	mov	a,_drawPixel_PARM_3
      000627 F0               [24] 2139 	movx	@dptr,a
                                   2140 ;	assignBit
      000628 C2 B4            [12] 2141 	clr	_P3_4
                                   2142 ;	ECEN4330Lab7.c:519: }
      00062A 22               [24] 2143 	ret
                                   2144 ;------------------------------------------------------------
                                   2145 ;Allocation info for local variables in function 'fillRect'
                                   2146 ;------------------------------------------------------------
                                   2147 ;y                         Allocated with name '_fillRect_PARM_2'
                                   2148 ;w                         Allocated with name '_fillRect_PARM_3'
                                   2149 ;h                         Allocated with name '_fillRect_PARM_4'
                                   2150 ;color                     Allocated with name '_fillRect_PARM_5'
                                   2151 ;x                         Allocated to registers 
                                   2152 ;------------------------------------------------------------
                                   2153 ;	ECEN4330Lab7.c:527: void fillRect(u16 x,u16 y,u16 w,u16 h,u16 color){
                                   2154 ;	-----------------------------------------
                                   2155 ;	 function fillRect
                                   2156 ;	-----------------------------------------
      00062B                       2157 _fillRect:
      00062B AE 82            [24] 2158 	mov	r6,dpl
      00062D AF 83            [24] 2159 	mov	r7,dph
                                   2160 ;	ECEN4330Lab7.c:528: if ((x >= TFTWIDTH) || (y >= TFTHEIGHT))
      00062F C3               [12] 2161 	clr	c
      000630 EE               [12] 2162 	mov	a,r6
      000631 94 F0            [12] 2163 	subb	a,#0xf0
      000633 EF               [12] 2164 	mov	a,r7
      000634 94 00            [12] 2165 	subb	a,#0x00
      000636 50 0B            [24] 2166 	jnc	00101$
      000638 C3               [12] 2167 	clr	c
      000639 E5 66            [12] 2168 	mov	a,_fillRect_PARM_2
      00063B 94 40            [12] 2169 	subb	a,#0x40
      00063D E5 67            [12] 2170 	mov	a,(_fillRect_PARM_2 + 1)
      00063F 94 01            [12] 2171 	subb	a,#0x01
      000641 40 01            [24] 2172 	jc	00102$
      000643                       2173 00101$:
                                   2174 ;	ECEN4330Lab7.c:530: return;
      000643 22               [24] 2175 	ret
      000644                       2176 00102$:
                                   2177 ;	ECEN4330Lab7.c:533: if ((x+w-1) >= TFTWIDTH)
      000644 E5 68            [12] 2178 	mov	a,_fillRect_PARM_3
      000646 2E               [12] 2179 	add	a,r6
      000647 FC               [12] 2180 	mov	r4,a
      000648 E5 69            [12] 2181 	mov	a,(_fillRect_PARM_3 + 1)
      00064A 3F               [12] 2182 	addc	a,r7
      00064B FD               [12] 2183 	mov	r5,a
      00064C 1C               [12] 2184 	dec	r4
      00064D BC FF 01         [24] 2185 	cjne	r4,#0xff,00161$
      000650 1D               [12] 2186 	dec	r5
      000651                       2187 00161$:
      000651 C3               [12] 2188 	clr	c
      000652 EC               [12] 2189 	mov	a,r4
      000653 94 F0            [12] 2190 	subb	a,#0xf0
      000655 ED               [12] 2191 	mov	a,r5
      000656 94 00            [12] 2192 	subb	a,#0x00
      000658 40 0A            [24] 2193 	jc	00105$
                                   2194 ;	ECEN4330Lab7.c:535: w = TFTWIDTH-x;
      00065A 74 F0            [12] 2195 	mov	a,#0xf0
      00065C C3               [12] 2196 	clr	c
      00065D 9E               [12] 2197 	subb	a,r6
      00065E F5 68            [12] 2198 	mov	_fillRect_PARM_3,a
      000660 E4               [12] 2199 	clr	a
      000661 9F               [12] 2200 	subb	a,r7
      000662 F5 69            [12] 2201 	mov	(_fillRect_PARM_3 + 1),a
      000664                       2202 00105$:
                                   2203 ;	ECEN4330Lab7.c:538: if ((y+h-1) >= TFTHEIGHT)
      000664 E5 6A            [12] 2204 	mov	a,_fillRect_PARM_4
      000666 25 66            [12] 2205 	add	a,_fillRect_PARM_2
      000668 FC               [12] 2206 	mov	r4,a
      000669 E5 6B            [12] 2207 	mov	a,(_fillRect_PARM_4 + 1)
      00066B 35 67            [12] 2208 	addc	a,(_fillRect_PARM_2 + 1)
      00066D FD               [12] 2209 	mov	r5,a
      00066E 1C               [12] 2210 	dec	r4
      00066F BC FF 01         [24] 2211 	cjne	r4,#0xff,00163$
      000672 1D               [12] 2212 	dec	r5
      000673                       2213 00163$:
      000673 C3               [12] 2214 	clr	c
      000674 EC               [12] 2215 	mov	a,r4
      000675 94 40            [12] 2216 	subb	a,#0x40
      000677 ED               [12] 2217 	mov	a,r5
      000678 94 01            [12] 2218 	subb	a,#0x01
      00067A 40 0D            [24] 2219 	jc	00107$
                                   2220 ;	ECEN4330Lab7.c:540: h = TFTHEIGHT-y;
      00067C 74 40            [12] 2221 	mov	a,#0x40
      00067E C3               [12] 2222 	clr	c
      00067F 95 66            [12] 2223 	subb	a,_fillRect_PARM_2
      000681 F5 6A            [12] 2224 	mov	_fillRect_PARM_4,a
      000683 74 01            [12] 2225 	mov	a,#0x01
      000685 95 67            [12] 2226 	subb	a,(_fillRect_PARM_2 + 1)
      000687 F5 6B            [12] 2227 	mov	(_fillRect_PARM_4 + 1),a
      000689                       2228 00107$:
                                   2229 ;	ECEN4330Lab7.c:543: setAddress(x, y, x+w-1, y+h-1);
      000689 E5 68            [12] 2230 	mov	a,_fillRect_PARM_3
      00068B 2E               [12] 2231 	add	a,r6
      00068C FC               [12] 2232 	mov	r4,a
      00068D E5 69            [12] 2233 	mov	a,(_fillRect_PARM_3 + 1)
      00068F 3F               [12] 2234 	addc	a,r7
      000690 FD               [12] 2235 	mov	r5,a
      000691 EC               [12] 2236 	mov	a,r4
      000692 24 FF            [12] 2237 	add	a,#0xff
      000694 F5 0A            [12] 2238 	mov	_setAddress_PARM_3,a
      000696 ED               [12] 2239 	mov	a,r5
      000697 34 FF            [12] 2240 	addc	a,#0xff
      000699 F5 0B            [12] 2241 	mov	(_setAddress_PARM_3 + 1),a
      00069B E5 6A            [12] 2242 	mov	a,_fillRect_PARM_4
      00069D 25 66            [12] 2243 	add	a,_fillRect_PARM_2
      00069F FC               [12] 2244 	mov	r4,a
      0006A0 E5 6B            [12] 2245 	mov	a,(_fillRect_PARM_4 + 1)
      0006A2 35 67            [12] 2246 	addc	a,(_fillRect_PARM_2 + 1)
      0006A4 FD               [12] 2247 	mov	r5,a
      0006A5 EC               [12] 2248 	mov	a,r4
      0006A6 24 FF            [12] 2249 	add	a,#0xff
      0006A8 F5 0C            [12] 2250 	mov	_setAddress_PARM_4,a
      0006AA ED               [12] 2251 	mov	a,r5
      0006AB 34 FF            [12] 2252 	addc	a,#0xff
      0006AD F5 0D            [12] 2253 	mov	(_setAddress_PARM_4 + 1),a
      0006AF 85 66 08         [24] 2254 	mov	_setAddress_PARM_2,_fillRect_PARM_2
      0006B2 85 67 09         [24] 2255 	mov	(_setAddress_PARM_2 + 1),(_fillRect_PARM_2 + 1)
      0006B5 8E 82            [24] 2256 	mov	dpl,r6
      0006B7 8F 83            [24] 2257 	mov	dph,r7
      0006B9 12 04 00         [24] 2258 	lcall	_setAddress
                                   2259 ;	ECEN4330Lab7.c:544: write8Reg(0x2C);
                                   2260 ;	assignBit
      0006BC C2 B5            [12] 2261 	clr	_P3_5
                                   2262 ;	assignBit
      0006BE D2 B4            [12] 2263 	setb	_P3_4
      0006C0 85 23 82         [24] 2264 	mov	dpl,_lcd_address
      0006C3 85 24 83         [24] 2265 	mov	dph,(_lcd_address + 1)
      0006C6 74 2C            [12] 2266 	mov	a,#0x2c
      0006C8 F0               [24] 2267 	movx	@dptr,a
                                   2268 ;	assignBit
      0006C9 C2 B4            [12] 2269 	clr	_P3_4
                                   2270 ;	ECEN4330Lab7.c:545: CD = 1;
                                   2271 ;	assignBit
      0006CB D2 B5            [12] 2272 	setb	_P3_5
                                   2273 ;	ECEN4330Lab7.c:546: for(y=h; y>0; y--)
      0006CD AF 6D            [24] 2274 	mov	r7,(_fillRect_PARM_5 + 1)
      0006CF AD 6A            [24] 2275 	mov	r5,_fillRect_PARM_4
      0006D1 AE 6B            [24] 2276 	mov	r6,(_fillRect_PARM_4 + 1)
      0006D3                       2277 00114$:
      0006D3 ED               [12] 2278 	mov	a,r5
      0006D4 4E               [12] 2279 	orl	a,r6
      0006D5 60 30            [24] 2280 	jz	00116$
                                   2281 ;	ECEN4330Lab7.c:548: for(x=w; x>0; x--)
      0006D7 AB 68            [24] 2282 	mov	r3,_fillRect_PARM_3
      0006D9 AC 69            [24] 2283 	mov	r4,(_fillRect_PARM_3 + 1)
      0006DB                       2284 00111$:
      0006DB EB               [12] 2285 	mov	a,r3
      0006DC 4C               [12] 2286 	orl	a,r4
      0006DD 60 21            [24] 2287 	jz	00115$
                                   2288 ;	ECEN4330Lab7.c:550: write8(color>>8); 
                                   2289 ;	assignBit
      0006DF D2 B4            [12] 2290 	setb	_P3_4
      0006E1 85 23 82         [24] 2291 	mov	dpl,_lcd_address
      0006E4 85 24 83         [24] 2292 	mov	dph,(_lcd_address + 1)
      0006E7 EF               [12] 2293 	mov	a,r7
      0006E8 F0               [24] 2294 	movx	@dptr,a
                                   2295 ;	assignBit
      0006E9 C2 B4            [12] 2296 	clr	_P3_4
                                   2297 ;	ECEN4330Lab7.c:551: write8(color);
                                   2298 ;	assignBit
      0006EB D2 B4            [12] 2299 	setb	_P3_4
      0006ED 85 23 82         [24] 2300 	mov	dpl,_lcd_address
      0006F0 85 24 83         [24] 2301 	mov	dph,(_lcd_address + 1)
      0006F3 E5 6C            [12] 2302 	mov	a,_fillRect_PARM_5
      0006F5 FA               [12] 2303 	mov	r2,a
      0006F6 F0               [24] 2304 	movx	@dptr,a
                                   2305 ;	assignBit
      0006F7 C2 B4            [12] 2306 	clr	_P3_4
                                   2307 ;	ECEN4330Lab7.c:548: for(x=w; x>0; x--)
      0006F9 1B               [12] 2308 	dec	r3
      0006FA BB FF 01         [24] 2309 	cjne	r3,#0xff,00167$
      0006FD 1C               [12] 2310 	dec	r4
      0006FE                       2311 00167$:
      0006FE 80 DB            [24] 2312 	sjmp	00111$
      000700                       2313 00115$:
                                   2314 ;	ECEN4330Lab7.c:546: for(y=h; y>0; y--)
      000700 1D               [12] 2315 	dec	r5
      000701 BD FF 01         [24] 2316 	cjne	r5,#0xff,00168$
      000704 1E               [12] 2317 	dec	r6
      000705                       2318 00168$:
      000705 80 CC            [24] 2319 	sjmp	00114$
      000707                       2320 00116$:
                                   2321 ;	ECEN4330Lab7.c:554: }
      000707 22               [24] 2322 	ret
                                   2323 ;------------------------------------------------------------
                                   2324 ;Allocation info for local variables in function 'fillScreen'
                                   2325 ;------------------------------------------------------------
                                   2326 ;Color                     Allocated to registers r6 r7 
                                   2327 ;len                       Allocated to registers 
                                   2328 ;blocks                    Allocated to registers r4 r7 
                                   2329 ;i                         Allocated to registers r3 
                                   2330 ;hi                        Allocated to registers r5 
                                   2331 ;lo                        Allocated to registers r6 
                                   2332 ;------------------------------------------------------------
                                   2333 ;	ECEN4330Lab7.c:562: void fillScreen(unsigned int Color){
                                   2334 ;	-----------------------------------------
                                   2335 ;	 function fillScreen
                                   2336 ;	-----------------------------------------
      000708                       2337 _fillScreen:
      000708 AE 82            [24] 2338 	mov	r6,dpl
      00070A AF 83            [24] 2339 	mov	r7,dph
                                   2340 ;	ECEN4330Lab7.c:565: unsigned char  i, hi = Color >> 8, lo = Color;
      00070C 8F 05            [24] 2341 	mov	ar5,r7
                                   2342 ;	ECEN4330Lab7.c:568: setAddress(0,0,TFTWIDTH-1,TFTHEIGHT-1);
      00070E E4               [12] 2343 	clr	a
      00070F F5 08            [12] 2344 	mov	_setAddress_PARM_2,a
      000711 F5 09            [12] 2345 	mov	(_setAddress_PARM_2 + 1),a
      000713 75 0A EF         [24] 2346 	mov	_setAddress_PARM_3,#0xef
                                   2347 ;	1-genFromRTrack replaced	mov	(_setAddress_PARM_3 + 1),#0x00
      000716 F5 0B            [12] 2348 	mov	(_setAddress_PARM_3 + 1),a
      000718 75 0C 3F         [24] 2349 	mov	_setAddress_PARM_4,#0x3f
      00071B 75 0D 01         [24] 2350 	mov	(_setAddress_PARM_4 + 1),#0x01
      00071E 90 00 00         [24] 2351 	mov	dptr,#0x0000
      000721 C0 06            [24] 2352 	push	ar6
      000723 C0 05            [24] 2353 	push	ar5
      000725 12 04 00         [24] 2354 	lcall	_setAddress
      000728 D0 05            [24] 2355 	pop	ar5
      00072A D0 06            [24] 2356 	pop	ar6
                                   2357 ;	ECEN4330Lab7.c:569: write8Reg(0x2C);
                                   2358 ;	assignBit
      00072C C2 B5            [12] 2359 	clr	_P3_5
                                   2360 ;	assignBit
      00072E D2 B4            [12] 2361 	setb	_P3_4
      000730 85 23 82         [24] 2362 	mov	dpl,_lcd_address
      000733 85 24 83         [24] 2363 	mov	dph,(_lcd_address + 1)
      000736 74 2C            [12] 2364 	mov	a,#0x2c
      000738 F0               [24] 2365 	movx	@dptr,a
                                   2366 ;	assignBit
      000739 C2 B4            [12] 2367 	clr	_P3_4
                                   2368 ;	ECEN4330Lab7.c:570: CD = 1;
                                   2369 ;	assignBit
      00073B D2 B5            [12] 2370 	setb	_P3_5
                                   2371 ;	ECEN4330Lab7.c:571: write8(hi); 
                                   2372 ;	assignBit
      00073D D2 B4            [12] 2373 	setb	_P3_4
      00073F 85 23 82         [24] 2374 	mov	dpl,_lcd_address
      000742 85 24 83         [24] 2375 	mov	dph,(_lcd_address + 1)
      000745 ED               [12] 2376 	mov	a,r5
      000746 F0               [24] 2377 	movx	@dptr,a
                                   2378 ;	assignBit
      000747 C2 B4            [12] 2379 	clr	_P3_4
                                   2380 ;	ECEN4330Lab7.c:572: write8(lo);
                                   2381 ;	assignBit
      000749 D2 B4            [12] 2382 	setb	_P3_4
      00074B 85 23 82         [24] 2383 	mov	dpl,_lcd_address
      00074E 85 24 83         [24] 2384 	mov	dph,(_lcd_address + 1)
      000751 EE               [12] 2385 	mov	a,r6
      000752 F0               [24] 2386 	movx	@dptr,a
                                   2387 ;	assignBit
      000753 C2 B4            [12] 2388 	clr	_P3_4
                                   2389 ;	ECEN4330Lab7.c:574: while(blocks--) {
      000755 7C B0            [12] 2390 	mov	r4,#0xb0
      000757 7F 04            [12] 2391 	mov	r7,#0x04
      000759                       2392 00104$:
      000759 8C 02            [24] 2393 	mov	ar2,r4
      00075B 8F 03            [24] 2394 	mov	ar3,r7
      00075D 1C               [12] 2395 	dec	r4
      00075E BC FF 01         [24] 2396 	cjne	r4,#0xff,00140$
      000761 1F               [12] 2397 	dec	r7
      000762                       2398 00140$:
      000762 EA               [12] 2399 	mov	a,r2
      000763 4B               [12] 2400 	orl	a,r3
      000764 60 66            [24] 2401 	jz	00106$
                                   2402 ;	ECEN4330Lab7.c:576: do {
      000766 7B 10            [12] 2403 	mov	r3,#0x10
      000768                       2404 00101$:
                                   2405 ;	ECEN4330Lab7.c:577: write8(hi); write8(lo);write8(hi); write8(lo);
                                   2406 ;	assignBit
      000768 D2 B4            [12] 2407 	setb	_P3_4
      00076A 85 23 82         [24] 2408 	mov	dpl,_lcd_address
      00076D 85 24 83         [24] 2409 	mov	dph,(_lcd_address + 1)
      000770 ED               [12] 2410 	mov	a,r5
      000771 F0               [24] 2411 	movx	@dptr,a
                                   2412 ;	assignBit
      000772 C2 B4            [12] 2413 	clr	_P3_4
                                   2414 ;	assignBit
      000774 D2 B4            [12] 2415 	setb	_P3_4
      000776 85 23 82         [24] 2416 	mov	dpl,_lcd_address
      000779 85 24 83         [24] 2417 	mov	dph,(_lcd_address + 1)
      00077C EE               [12] 2418 	mov	a,r6
      00077D F0               [24] 2419 	movx	@dptr,a
                                   2420 ;	assignBit
      00077E C2 B4            [12] 2421 	clr	_P3_4
                                   2422 ;	assignBit
      000780 D2 B4            [12] 2423 	setb	_P3_4
      000782 85 23 82         [24] 2424 	mov	dpl,_lcd_address
      000785 85 24 83         [24] 2425 	mov	dph,(_lcd_address + 1)
      000788 ED               [12] 2426 	mov	a,r5
      000789 F0               [24] 2427 	movx	@dptr,a
                                   2428 ;	assignBit
      00078A C2 B4            [12] 2429 	clr	_P3_4
                                   2430 ;	assignBit
      00078C D2 B4            [12] 2431 	setb	_P3_4
      00078E 85 23 82         [24] 2432 	mov	dpl,_lcd_address
      000791 85 24 83         [24] 2433 	mov	dph,(_lcd_address + 1)
      000794 EE               [12] 2434 	mov	a,r6
      000795 F0               [24] 2435 	movx	@dptr,a
                                   2436 ;	assignBit
      000796 C2 B4            [12] 2437 	clr	_P3_4
                                   2438 ;	ECEN4330Lab7.c:578: write8(hi); write8(lo);write8(hi); write8(lo);
                                   2439 ;	assignBit
      000798 D2 B4            [12] 2440 	setb	_P3_4
      00079A 85 23 82         [24] 2441 	mov	dpl,_lcd_address
      00079D 85 24 83         [24] 2442 	mov	dph,(_lcd_address + 1)
      0007A0 ED               [12] 2443 	mov	a,r5
      0007A1 F0               [24] 2444 	movx	@dptr,a
                                   2445 ;	assignBit
      0007A2 C2 B4            [12] 2446 	clr	_P3_4
                                   2447 ;	assignBit
      0007A4 D2 B4            [12] 2448 	setb	_P3_4
      0007A6 85 23 82         [24] 2449 	mov	dpl,_lcd_address
      0007A9 85 24 83         [24] 2450 	mov	dph,(_lcd_address + 1)
      0007AC EE               [12] 2451 	mov	a,r6
      0007AD F0               [24] 2452 	movx	@dptr,a
                                   2453 ;	assignBit
      0007AE C2 B4            [12] 2454 	clr	_P3_4
                                   2455 ;	assignBit
      0007B0 D2 B4            [12] 2456 	setb	_P3_4
      0007B2 85 23 82         [24] 2457 	mov	dpl,_lcd_address
      0007B5 85 24 83         [24] 2458 	mov	dph,(_lcd_address + 1)
      0007B8 ED               [12] 2459 	mov	a,r5
      0007B9 F0               [24] 2460 	movx	@dptr,a
                                   2461 ;	assignBit
      0007BA C2 B4            [12] 2462 	clr	_P3_4
                                   2463 ;	assignBit
      0007BC D2 B4            [12] 2464 	setb	_P3_4
      0007BE 85 23 82         [24] 2465 	mov	dpl,_lcd_address
      0007C1 85 24 83         [24] 2466 	mov	dph,(_lcd_address + 1)
      0007C4 EE               [12] 2467 	mov	a,r6
      0007C5 F0               [24] 2468 	movx	@dptr,a
                                   2469 ;	assignBit
      0007C6 C2 B4            [12] 2470 	clr	_P3_4
                                   2471 ;	ECEN4330Lab7.c:579: } while(--i);
      0007C8 DB 9E            [24] 2472 	djnz	r3,00101$
      0007CA 80 8D            [24] 2473 	sjmp	00104$
      0007CC                       2474 00106$:
                                   2475 ;	ECEN4330Lab7.c:581: for(i = (char)len & 63; i--; ) {
      0007CC 7F 3F            [12] 2476 	mov	r7,#0x3f
      0007CE                       2477 00109$:
      0007CE 8F 04            [24] 2478 	mov	ar4,r7
      0007D0 1F               [12] 2479 	dec	r7
      0007D1 EC               [12] 2480 	mov	a,r4
      0007D2 60 1A            [24] 2481 	jz	00111$
                                   2482 ;	ECEN4330Lab7.c:582: write8(hi); 
                                   2483 ;	assignBit
      0007D4 D2 B4            [12] 2484 	setb	_P3_4
      0007D6 85 23 82         [24] 2485 	mov	dpl,_lcd_address
      0007D9 85 24 83         [24] 2486 	mov	dph,(_lcd_address + 1)
      0007DC ED               [12] 2487 	mov	a,r5
      0007DD F0               [24] 2488 	movx	@dptr,a
                                   2489 ;	assignBit
      0007DE C2 B4            [12] 2490 	clr	_P3_4
                                   2491 ;	ECEN4330Lab7.c:583: write8(lo);
                                   2492 ;	assignBit
      0007E0 D2 B4            [12] 2493 	setb	_P3_4
      0007E2 85 23 82         [24] 2494 	mov	dpl,_lcd_address
      0007E5 85 24 83         [24] 2495 	mov	dph,(_lcd_address + 1)
      0007E8 EE               [12] 2496 	mov	a,r6
      0007E9 F0               [24] 2497 	movx	@dptr,a
                                   2498 ;	assignBit
      0007EA C2 B4            [12] 2499 	clr	_P3_4
      0007EC 80 E0            [24] 2500 	sjmp	00109$
      0007EE                       2501 00111$:
                                   2502 ;	ECEN4330Lab7.c:585: }
      0007EE 22               [24] 2503 	ret
                                   2504 ;------------------------------------------------------------
                                   2505 ;Allocation info for local variables in function 'drawChar'
                                   2506 ;------------------------------------------------------------
                                   2507 ;y                         Allocated with name '_drawChar_PARM_2'
                                   2508 ;c                         Allocated with name '_drawChar_PARM_3'
                                   2509 ;color                     Allocated with name '_drawChar_PARM_4'
                                   2510 ;bg                        Allocated with name '_drawChar_PARM_5'
                                   2511 ;size                      Allocated with name '_drawChar_PARM_6'
                                   2512 ;x                         Allocated with name '_drawChar_x_65536_311'
                                   2513 ;i                         Allocated to registers r3 
                                   2514 ;line                      Allocated with name '_drawChar_line_196608_315'
                                   2515 ;j                         Allocated to registers r2 
                                   2516 ;sloc1                     Allocated with name '_drawChar_sloc1_1_0'
                                   2517 ;------------------------------------------------------------
                                   2518 ;	ECEN4330Lab7.c:593: void drawChar(int x, int y, unsigned char c,u16 color, u16 bg, u8 size){
                                   2519 ;	-----------------------------------------
                                   2520 ;	 function drawChar
                                   2521 ;	-----------------------------------------
      0007EF                       2522 _drawChar:
      0007EF 85 82 76         [24] 2523 	mov	_drawChar_x_65536_311,dpl
      0007F2 85 83 77         [24] 2524 	mov	(_drawChar_x_65536_311 + 1),dph
                                   2525 ;	ECEN4330Lab7.c:594: if ((x >=TFTWIDTH) || // Clip right
      0007F5 C3               [12] 2526 	clr	c
      0007F6 E5 76            [12] 2527 	mov	a,_drawChar_x_65536_311
      0007F8 94 F0            [12] 2528 	subb	a,#0xf0
      0007FA E5 77            [12] 2529 	mov	a,(_drawChar_x_65536_311 + 1)
      0007FC 64 80            [12] 2530 	xrl	a,#0x80
      0007FE 94 80            [12] 2531 	subb	a,#0x80
      000800 50 59            [24] 2532 	jnc	00101$
                                   2533 ;	ECEN4330Lab7.c:595: (y >=TFTHEIGHT)           || // Clip bottom
      000802 C3               [12] 2534 	clr	c
      000803 E5 6E            [12] 2535 	mov	a,_drawChar_PARM_2
      000805 94 40            [12] 2536 	subb	a,#0x40
      000807 E5 6F            [12] 2537 	mov	a,(_drawChar_PARM_2 + 1)
      000809 64 80            [12] 2538 	xrl	a,#0x80
      00080B 94 81            [12] 2539 	subb	a,#0x81
      00080D 50 4C            [24] 2540 	jnc	00101$
                                   2541 ;	ECEN4330Lab7.c:596: ((x + 6 * size - 1) < 0) || // Clip left
      00080F AC 75            [24] 2542 	mov	r4,_drawChar_PARM_6
      000811 7D 00            [12] 2543 	mov	r5,#0x00
      000813 8C 08            [24] 2544 	mov	__mulint_PARM_2,r4
      000815 8D 09            [24] 2545 	mov	(__mulint_PARM_2 + 1),r5
      000817 90 00 06         [24] 2546 	mov	dptr,#0x0006
      00081A C0 05            [24] 2547 	push	ar5
      00081C C0 04            [24] 2548 	push	ar4
      00081E 12 23 17         [24] 2549 	lcall	__mulint
      000821 AA 82            [24] 2550 	mov	r2,dpl
      000823 AB 83            [24] 2551 	mov	r3,dph
      000825 D0 04            [24] 2552 	pop	ar4
      000827 D0 05            [24] 2553 	pop	ar5
      000829 EA               [12] 2554 	mov	a,r2
      00082A 25 76            [12] 2555 	add	a,_drawChar_x_65536_311
      00082C FA               [12] 2556 	mov	r2,a
      00082D EB               [12] 2557 	mov	a,r3
      00082E 35 77            [12] 2558 	addc	a,(_drawChar_x_65536_311 + 1)
      000830 FB               [12] 2559 	mov	r3,a
      000831 1A               [12] 2560 	dec	r2
      000832 BA FF 01         [24] 2561 	cjne	r2,#0xff,00182$
      000835 1B               [12] 2562 	dec	r3
      000836                       2563 00182$:
      000836 EB               [12] 2564 	mov	a,r3
      000837 20 E7 21         [24] 2565 	jb	acc.7,00101$
                                   2566 ;	ECEN4330Lab7.c:597: ((y + 8 * size - 1) < 0))   // Clip top
      00083A ED               [12] 2567 	mov	a,r5
      00083B C4               [12] 2568 	swap	a
      00083C 03               [12] 2569 	rr	a
      00083D 54 F8            [12] 2570 	anl	a,#0xf8
      00083F CC               [12] 2571 	xch	a,r4
      000840 C4               [12] 2572 	swap	a
      000841 03               [12] 2573 	rr	a
      000842 CC               [12] 2574 	xch	a,r4
      000843 6C               [12] 2575 	xrl	a,r4
      000844 CC               [12] 2576 	xch	a,r4
      000845 54 F8            [12] 2577 	anl	a,#0xf8
      000847 CC               [12] 2578 	xch	a,r4
      000848 6C               [12] 2579 	xrl	a,r4
      000849 FD               [12] 2580 	mov	r5,a
      00084A EC               [12] 2581 	mov	a,r4
      00084B 25 6E            [12] 2582 	add	a,_drawChar_PARM_2
      00084D FC               [12] 2583 	mov	r4,a
      00084E ED               [12] 2584 	mov	a,r5
      00084F 35 6F            [12] 2585 	addc	a,(_drawChar_PARM_2 + 1)
      000851 FD               [12] 2586 	mov	r5,a
      000852 1C               [12] 2587 	dec	r4
      000853 BC FF 01         [24] 2588 	cjne	r4,#0xff,00184$
      000856 1D               [12] 2589 	dec	r5
      000857                       2590 00184$:
      000857 ED               [12] 2591 	mov	a,r5
      000858 30 E7 01         [24] 2592 	jnb	acc.7,00141$
      00085B                       2593 00101$:
                                   2594 ;	ECEN4330Lab7.c:599: return;
      00085B 22               [24] 2595 	ret
                                   2596 ;	ECEN4330Lab7.c:602: for (char i=0; i<6; i++ )
      00085C                       2597 00141$:
      00085C 74 01            [12] 2598 	mov	a,#0x01
      00085E B5 75 04         [24] 2599 	cjne	a,_drawChar_PARM_6,00186$
      000861 74 01            [12] 2600 	mov	a,#0x01
      000863 80 01            [24] 2601 	sjmp	00187$
      000865                       2602 00186$:
      000865 E4               [12] 2603 	clr	a
      000866                       2604 00187$:
      000866 FD               [12] 2605 	mov	r5,a
      000867 FC               [12] 2606 	mov	r4,a
      000868 E5 71            [12] 2607 	mov	a,_drawChar_PARM_4
      00086A B5 73 08         [24] 2608 	cjne	a,_drawChar_PARM_5,00188$
      00086D E5 72            [12] 2609 	mov	a,(_drawChar_PARM_4 + 1)
      00086F B5 74 03         [24] 2610 	cjne	a,(_drawChar_PARM_5 + 1),00188$
      000872 D3               [12] 2611 	setb	c
      000873 80 01            [24] 2612 	sjmp	00189$
      000875                       2613 00188$:
      000875 C3               [12] 2614 	clr	c
      000876                       2615 00189$:
      000876 92 00            [24] 2616 	mov	_drawChar_sloc0_1_0,c
      000878 7B 00            [12] 2617 	mov	r3,#0x00
      00087A                       2618 00126$:
      00087A BB 06 00         [24] 2619 	cjne	r3,#0x06,00190$
      00087D                       2620 00190$:
      00087D 40 01            [24] 2621 	jc	00191$
      00087F 22               [24] 2622 	ret
      000880                       2623 00191$:
                                   2624 ;	ECEN4330Lab7.c:606: if (i == 5)
      000880 BB 05 05         [24] 2625 	cjne	r3,#0x05,00107$
                                   2626 ;	ECEN4330Lab7.c:608: line = 0x0;
      000883 75 78 00         [24] 2627 	mov	_drawChar_line_196608_315,#0x00
      000886 80 30            [24] 2628 	sjmp	00140$
      000888                       2629 00107$:
                                   2630 ;	ECEN4330Lab7.c:612: line = pgm_read_byte(font+(c*5)+i);
      000888 85 70 08         [24] 2631 	mov	__mulint_PARM_2,_drawChar_PARM_3
      00088B 75 09 00         [24] 2632 	mov	(__mulint_PARM_2 + 1),#0x00
      00088E 90 00 05         [24] 2633 	mov	dptr,#0x0005
      000891 C0 05            [24] 2634 	push	ar5
      000893 C0 04            [24] 2635 	push	ar4
      000895 C0 03            [24] 2636 	push	ar3
      000897 12 23 17         [24] 2637 	lcall	__mulint
      00089A A8 82            [24] 2638 	mov	r0,dpl
      00089C A9 83            [24] 2639 	mov	r1,dph
      00089E D0 03            [24] 2640 	pop	ar3
      0008A0 D0 04            [24] 2641 	pop	ar4
      0008A2 D0 05            [24] 2642 	pop	ar5
      0008A4 E8               [12] 2643 	mov	a,r0
      0008A5 24 A1            [12] 2644 	add	a,#_font
      0008A7 F8               [12] 2645 	mov	r0,a
      0008A8 E9               [12] 2646 	mov	a,r1
      0008A9 34 23            [12] 2647 	addc	a,#(_font >> 8)
      0008AB F9               [12] 2648 	mov	r1,a
      0008AC EB               [12] 2649 	mov	a,r3
      0008AD 28               [12] 2650 	add	a,r0
      0008AE F5 82            [12] 2651 	mov	dpl,a
      0008B0 E4               [12] 2652 	clr	a
      0008B1 39               [12] 2653 	addc	a,r1
      0008B2 F5 83            [12] 2654 	mov	dph,a
      0008B4 E4               [12] 2655 	clr	a
      0008B5 93               [24] 2656 	movc	a,@a+dptr
      0008B6 F5 78            [12] 2657 	mov	_drawChar_line_196608_315,a
                                   2658 ;	ECEN4330Lab7.c:615: for (char j = 0; j<8; j++)
      0008B8                       2659 00140$:
      0008B8 8B F0            [24] 2660 	mov	b,r3
      0008BA E5 75            [12] 2661 	mov	a,_drawChar_PARM_6
      0008BC A4               [48] 2662 	mul	ab
      0008BD 25 76            [12] 2663 	add	a,_drawChar_x_65536_311
      0008BF F8               [12] 2664 	mov	r0,a
      0008C0 E5 77            [12] 2665 	mov	a,(_drawChar_x_65536_311 + 1)
      0008C2 35 F0            [12] 2666 	addc	a,b
      0008C4 F9               [12] 2667 	mov	r1,a
      0008C5 88 79            [24] 2668 	mov	_drawChar_sloc1_1_0,r0
      0008C7 89 7A            [24] 2669 	mov	(_drawChar_sloc1_1_0 + 1),r1
      0008C9 7A 00            [12] 2670 	mov	r2,#0x00
      0008CB                       2671 00123$:
      0008CB BA 08 00         [24] 2672 	cjne	r2,#0x08,00194$
      0008CE                       2673 00194$:
      0008CE 40 03            [24] 2674 	jc	00195$
      0008D0 02 09 F5         [24] 2675 	ljmp	00127$
      0008D3                       2676 00195$:
                                   2677 ;	ECEN4330Lab7.c:617: if (line & 0x1)
      0008D3 E5 78            [12] 2678 	mov	a,_drawChar_line_196608_315
      0008D5 20 E0 03         [24] 2679 	jb	acc.0,00196$
      0008D8 02 09 63         [24] 2680 	ljmp	00118$
      0008DB                       2681 00196$:
                                   2682 ;	ECEN4330Lab7.c:619: if (size == 1) // default size
      0008DB ED               [12] 2683 	mov	a,r5
      0008DC 60 40            [24] 2684 	jz	00110$
                                   2685 ;	ECEN4330Lab7.c:621: drawPixel(x+i, y+j, color);
      0008DE 8B 06            [24] 2686 	mov	ar6,r3
      0008E0 7F 00            [12] 2687 	mov	r7,#0x00
      0008E2 EE               [12] 2688 	mov	a,r6
      0008E3 25 76            [12] 2689 	add	a,_drawChar_x_65536_311
      0008E5 F5 82            [12] 2690 	mov	dpl,a
      0008E7 EF               [12] 2691 	mov	a,r7
      0008E8 35 77            [12] 2692 	addc	a,(_drawChar_x_65536_311 + 1)
      0008EA F5 83            [12] 2693 	mov	dph,a
      0008EC 8A 06            [24] 2694 	mov	ar6,r2
      0008EE 7F 00            [12] 2695 	mov	r7,#0x00
      0008F0 EE               [12] 2696 	mov	a,r6
      0008F1 25 6E            [12] 2697 	add	a,_drawChar_PARM_2
      0008F3 F5 62            [12] 2698 	mov	_drawPixel_PARM_2,a
      0008F5 EF               [12] 2699 	mov	a,r7
      0008F6 35 6F            [12] 2700 	addc	a,(_drawChar_PARM_2 + 1)
      0008F8 F5 63            [12] 2701 	mov	(_drawPixel_PARM_2 + 1),a
      0008FA 85 71 64         [24] 2702 	mov	_drawPixel_PARM_3,_drawChar_PARM_4
      0008FD 85 72 65         [24] 2703 	mov	(_drawPixel_PARM_3 + 1),(_drawChar_PARM_4 + 1)
      000900 C0 05            [24] 2704 	push	ar5
      000902 C0 04            [24] 2705 	push	ar4
      000904 C0 03            [24] 2706 	push	ar3
      000906 C0 02            [24] 2707 	push	ar2
      000908 C0 01            [24] 2708 	push	ar1
      00090A C0 00            [24] 2709 	push	ar0
      00090C 12 05 DA         [24] 2710 	lcall	_drawPixel
      00090F D0 00            [24] 2711 	pop	ar0
      000911 D0 01            [24] 2712 	pop	ar1
      000913 D0 02            [24] 2713 	pop	ar2
      000915 D0 03            [24] 2714 	pop	ar3
      000917 D0 04            [24] 2715 	pop	ar4
      000919 D0 05            [24] 2716 	pop	ar5
      00091B 02 09 EB         [24] 2717 	ljmp	00119$
      00091E                       2718 00110$:
                                   2719 ;	ECEN4330Lab7.c:624: fillRect(x+(i*size), y+(j*size), size, size, color);
      00091E 8A F0            [24] 2720 	mov	b,r2
      000920 E5 75            [12] 2721 	mov	a,_drawChar_PARM_6
      000922 A4               [48] 2722 	mul	ab
      000923 25 6E            [12] 2723 	add	a,_drawChar_PARM_2
      000925 F5 66            [12] 2724 	mov	_fillRect_PARM_2,a
      000927 E5 6F            [12] 2725 	mov	a,(_drawChar_PARM_2 + 1)
      000929 35 F0            [12] 2726 	addc	a,b
      00092B F5 67            [12] 2727 	mov	(_fillRect_PARM_2 + 1),a
      00092D AE 75            [24] 2728 	mov	r6,_drawChar_PARM_6
      00092F 7F 00            [12] 2729 	mov	r7,#0x00
      000931 8E 68            [24] 2730 	mov	_fillRect_PARM_3,r6
      000933 8F 69            [24] 2731 	mov	(_fillRect_PARM_3 + 1),r7
      000935 8E 6A            [24] 2732 	mov	_fillRect_PARM_4,r6
      000937 8F 6B            [24] 2733 	mov	(_fillRect_PARM_4 + 1),r7
      000939 85 71 6C         [24] 2734 	mov	_fillRect_PARM_5,_drawChar_PARM_4
      00093C 85 72 6D         [24] 2735 	mov	(_fillRect_PARM_5 + 1),(_drawChar_PARM_4 + 1)
      00093F 85 79 82         [24] 2736 	mov	dpl,_drawChar_sloc1_1_0
      000942 85 7A 83         [24] 2737 	mov	dph,(_drawChar_sloc1_1_0 + 1)
      000945 C0 05            [24] 2738 	push	ar5
      000947 C0 04            [24] 2739 	push	ar4
      000949 C0 03            [24] 2740 	push	ar3
      00094B C0 02            [24] 2741 	push	ar2
      00094D C0 01            [24] 2742 	push	ar1
      00094F C0 00            [24] 2743 	push	ar0
      000951 12 06 2B         [24] 2744 	lcall	_fillRect
      000954 D0 00            [24] 2745 	pop	ar0
      000956 D0 01            [24] 2746 	pop	ar1
      000958 D0 02            [24] 2747 	pop	ar2
      00095A D0 03            [24] 2748 	pop	ar3
      00095C D0 04            [24] 2749 	pop	ar4
      00095E D0 05            [24] 2750 	pop	ar5
      000960 02 09 EB         [24] 2751 	ljmp	00119$
      000963                       2752 00118$:
                                   2753 ;	ECEN4330Lab7.c:626: } else if (bg != color)
      000963 30 00 03         [24] 2754 	jnb	_drawChar_sloc0_1_0,00198$
      000966 02 09 EB         [24] 2755 	ljmp	00119$
      000969                       2756 00198$:
                                   2757 ;	ECEN4330Lab7.c:628: if (size == 1) // default size
      000969 EC               [12] 2758 	mov	a,r4
      00096A 60 3F            [24] 2759 	jz	00113$
                                   2760 ;	ECEN4330Lab7.c:630: drawPixel(x+i, y+j, bg);
      00096C 8B 06            [24] 2761 	mov	ar6,r3
      00096E 7F 00            [12] 2762 	mov	r7,#0x00
      000970 EE               [12] 2763 	mov	a,r6
      000971 25 76            [12] 2764 	add	a,_drawChar_x_65536_311
      000973 F5 82            [12] 2765 	mov	dpl,a
      000975 EF               [12] 2766 	mov	a,r7
      000976 35 77            [12] 2767 	addc	a,(_drawChar_x_65536_311 + 1)
      000978 F5 83            [12] 2768 	mov	dph,a
      00097A 8A 06            [24] 2769 	mov	ar6,r2
      00097C 7F 00            [12] 2770 	mov	r7,#0x00
      00097E EE               [12] 2771 	mov	a,r6
      00097F 25 6E            [12] 2772 	add	a,_drawChar_PARM_2
      000981 F5 62            [12] 2773 	mov	_drawPixel_PARM_2,a
      000983 EF               [12] 2774 	mov	a,r7
      000984 35 6F            [12] 2775 	addc	a,(_drawChar_PARM_2 + 1)
      000986 F5 63            [12] 2776 	mov	(_drawPixel_PARM_2 + 1),a
      000988 85 73 64         [24] 2777 	mov	_drawPixel_PARM_3,_drawChar_PARM_5
      00098B 85 74 65         [24] 2778 	mov	(_drawPixel_PARM_3 + 1),(_drawChar_PARM_5 + 1)
      00098E C0 05            [24] 2779 	push	ar5
      000990 C0 04            [24] 2780 	push	ar4
      000992 C0 03            [24] 2781 	push	ar3
      000994 C0 02            [24] 2782 	push	ar2
      000996 C0 01            [24] 2783 	push	ar1
      000998 C0 00            [24] 2784 	push	ar0
      00099A 12 05 DA         [24] 2785 	lcall	_drawPixel
      00099D D0 00            [24] 2786 	pop	ar0
      00099F D0 01            [24] 2787 	pop	ar1
      0009A1 D0 02            [24] 2788 	pop	ar2
      0009A3 D0 03            [24] 2789 	pop	ar3
      0009A5 D0 04            [24] 2790 	pop	ar4
      0009A7 D0 05            [24] 2791 	pop	ar5
      0009A9 80 40            [24] 2792 	sjmp	00119$
      0009AB                       2793 00113$:
                                   2794 ;	ECEN4330Lab7.c:634: fillRect(x+i*size, y+j*size, size, size, bg);
      0009AB 8A F0            [24] 2795 	mov	b,r2
      0009AD E5 75            [12] 2796 	mov	a,_drawChar_PARM_6
      0009AF A4               [48] 2797 	mul	ab
      0009B0 25 6E            [12] 2798 	add	a,_drawChar_PARM_2
      0009B2 F5 66            [12] 2799 	mov	_fillRect_PARM_2,a
      0009B4 E5 6F            [12] 2800 	mov	a,(_drawChar_PARM_2 + 1)
      0009B6 35 F0            [12] 2801 	addc	a,b
      0009B8 F5 67            [12] 2802 	mov	(_fillRect_PARM_2 + 1),a
      0009BA AE 75            [24] 2803 	mov	r6,_drawChar_PARM_6
      0009BC 7F 00            [12] 2804 	mov	r7,#0x00
      0009BE 8E 68            [24] 2805 	mov	_fillRect_PARM_3,r6
      0009C0 8F 69            [24] 2806 	mov	(_fillRect_PARM_3 + 1),r7
      0009C2 8E 6A            [24] 2807 	mov	_fillRect_PARM_4,r6
      0009C4 8F 6B            [24] 2808 	mov	(_fillRect_PARM_4 + 1),r7
      0009C6 85 73 6C         [24] 2809 	mov	_fillRect_PARM_5,_drawChar_PARM_5
      0009C9 85 74 6D         [24] 2810 	mov	(_fillRect_PARM_5 + 1),(_drawChar_PARM_5 + 1)
      0009CC 88 82            [24] 2811 	mov	dpl,r0
      0009CE 89 83            [24] 2812 	mov	dph,r1
      0009D0 C0 05            [24] 2813 	push	ar5
      0009D2 C0 04            [24] 2814 	push	ar4
      0009D4 C0 03            [24] 2815 	push	ar3
      0009D6 C0 02            [24] 2816 	push	ar2
      0009D8 C0 01            [24] 2817 	push	ar1
      0009DA C0 00            [24] 2818 	push	ar0
      0009DC 12 06 2B         [24] 2819 	lcall	_fillRect
      0009DF D0 00            [24] 2820 	pop	ar0
      0009E1 D0 01            [24] 2821 	pop	ar1
      0009E3 D0 02            [24] 2822 	pop	ar2
      0009E5 D0 03            [24] 2823 	pop	ar3
      0009E7 D0 04            [24] 2824 	pop	ar4
      0009E9 D0 05            [24] 2825 	pop	ar5
      0009EB                       2826 00119$:
                                   2827 ;	ECEN4330Lab7.c:638: line >>= 1;
      0009EB E5 78            [12] 2828 	mov	a,_drawChar_line_196608_315
      0009ED C3               [12] 2829 	clr	c
      0009EE 13               [12] 2830 	rrc	a
      0009EF F5 78            [12] 2831 	mov	_drawChar_line_196608_315,a
                                   2832 ;	ECEN4330Lab7.c:615: for (char j = 0; j<8; j++)
      0009F1 0A               [12] 2833 	inc	r2
      0009F2 02 08 CB         [24] 2834 	ljmp	00123$
      0009F5                       2835 00127$:
                                   2836 ;	ECEN4330Lab7.c:602: for (char i=0; i<6; i++ )
      0009F5 0B               [12] 2837 	inc	r3
                                   2838 ;	ECEN4330Lab7.c:642: }
      0009F6 02 08 7A         [24] 2839 	ljmp	00126$
                                   2840 ;------------------------------------------------------------
                                   2841 ;Allocation info for local variables in function 'write'
                                   2842 ;------------------------------------------------------------
                                   2843 ;c                         Allocated to registers r7 
                                   2844 ;------------------------------------------------------------
                                   2845 ;	ECEN4330Lab7.c:650: void write(u8 c)
                                   2846 ;	-----------------------------------------
                                   2847 ;	 function write
                                   2848 ;	-----------------------------------------
      0009F9                       2849 _write:
      0009F9 AF 82            [24] 2850 	mov	r7,dpl
                                   2851 ;	ECEN4330Lab7.c:652: if (c == '\n')
      0009FB BF 0A 22         [24] 2852 	cjne	r7,#0x0a,00105$
                                   2853 ;	ECEN4330Lab7.c:654: cursor_y += textsize*8;
      0009FE AD 2D            [24] 2854 	mov	r5,_textsize
      000A00 E4               [12] 2855 	clr	a
      000A01 C4               [12] 2856 	swap	a
      000A02 03               [12] 2857 	rr	a
      000A03 54 F8            [12] 2858 	anl	a,#0xf8
      000A05 CD               [12] 2859 	xch	a,r5
      000A06 C4               [12] 2860 	swap	a
      000A07 03               [12] 2861 	rr	a
      000A08 CD               [12] 2862 	xch	a,r5
      000A09 6D               [12] 2863 	xrl	a,r5
      000A0A CD               [12] 2864 	xch	a,r5
      000A0B 54 F8            [12] 2865 	anl	a,#0xf8
      000A0D CD               [12] 2866 	xch	a,r5
      000A0E 6D               [12] 2867 	xrl	a,r5
      000A0F FE               [12] 2868 	mov	r6,a
      000A10 ED               [12] 2869 	mov	a,r5
      000A11 25 2B            [12] 2870 	add	a,_cursor_y
      000A13 F5 2B            [12] 2871 	mov	_cursor_y,a
      000A15 EE               [12] 2872 	mov	a,r6
      000A16 35 2C            [12] 2873 	addc	a,(_cursor_y + 1)
      000A18 F5 2C            [12] 2874 	mov	(_cursor_y + 1),a
                                   2875 ;	ECEN4330Lab7.c:655: cursor_x  = 0;
      000A1A E4               [12] 2876 	clr	a
      000A1B F5 29            [12] 2877 	mov	_cursor_x,a
      000A1D F5 2A            [12] 2878 	mov	(_cursor_x + 1),a
      000A1F 22               [24] 2879 	ret
      000A20                       2880 00105$:
                                   2881 ;	ECEN4330Lab7.c:657: else if (c == '\r')
      000A20 BF 0D 01         [24] 2882 	cjne	r7,#0x0d,00119$
      000A23 22               [24] 2883 	ret
      000A24                       2884 00119$:
                                   2885 ;	ECEN4330Lab7.c:663: drawChar(cursor_x, cursor_y, c, textcolor, textbgcolor, textsize);
      000A24 85 2B 6E         [24] 2886 	mov	_drawChar_PARM_2,_cursor_y
      000A27 85 2C 6F         [24] 2887 	mov	(_drawChar_PARM_2 + 1),(_cursor_y + 1)
      000A2A 8F 70            [24] 2888 	mov	_drawChar_PARM_3,r7
      000A2C 85 2F 71         [24] 2889 	mov	_drawChar_PARM_4,_textcolor
      000A2F 85 30 72         [24] 2890 	mov	(_drawChar_PARM_4 + 1),(_textcolor + 1)
      000A32 85 31 73         [24] 2891 	mov	_drawChar_PARM_5,_textbgcolor
      000A35 85 32 74         [24] 2892 	mov	(_drawChar_PARM_5 + 1),(_textbgcolor + 1)
      000A38 85 2D 75         [24] 2893 	mov	_drawChar_PARM_6,_textsize
      000A3B 85 29 82         [24] 2894 	mov	dpl,_cursor_x
      000A3E 85 2A 83         [24] 2895 	mov	dph,(_cursor_x + 1)
      000A41 12 07 EF         [24] 2896 	lcall	_drawChar
                                   2897 ;	ECEN4330Lab7.c:664: cursor_x += textsize*6;
      000A44 85 2D 08         [24] 2898 	mov	__mulint_PARM_2,_textsize
      000A47 75 09 00         [24] 2899 	mov	(__mulint_PARM_2 + 1),#0x00
      000A4A 90 00 06         [24] 2900 	mov	dptr,#0x0006
      000A4D 12 23 17         [24] 2901 	lcall	__mulint
      000A50 AE 82            [24] 2902 	mov	r6,dpl
      000A52 AF 83            [24] 2903 	mov	r7,dph
      000A54 EE               [12] 2904 	mov	a,r6
      000A55 25 29            [12] 2905 	add	a,_cursor_x
      000A57 F5 29            [12] 2906 	mov	_cursor_x,a
      000A59 EF               [12] 2907 	mov	a,r7
      000A5A 35 2A            [12] 2908 	addc	a,(_cursor_x + 1)
      000A5C F5 2A            [12] 2909 	mov	(_cursor_x + 1),a
                                   2910 ;	ECEN4330Lab7.c:666: }
      000A5E 22               [24] 2911 	ret
                                   2912 ;------------------------------------------------------------
                                   2913 ;Allocation info for local variables in function 'LCD_string_write'
                                   2914 ;------------------------------------------------------------
                                   2915 ;str                       Allocated to registers r5 r6 r7 
                                   2916 ;i                         Allocated to registers r3 r4 
                                   2917 ;------------------------------------------------------------
                                   2918 ;	ECEN4330Lab7.c:674: void LCD_string_write(char *str)
                                   2919 ;	-----------------------------------------
                                   2920 ;	 function LCD_string_write
                                   2921 ;	-----------------------------------------
      000A5F                       2922 _LCD_string_write:
      000A5F AD 82            [24] 2923 	mov	r5,dpl
      000A61 AE 83            [24] 2924 	mov	r6,dph
      000A63 AF F0            [24] 2925 	mov	r7,b
                                   2926 ;	ECEN4330Lab7.c:677: for(i=0;str[i]!=0;i++)  /* Send each char of string till the NULL */
      000A65 7B 00            [12] 2927 	mov	r3,#0x00
      000A67 7C 00            [12] 2928 	mov	r4,#0x00
      000A69                       2929 00103$:
      000A69 EB               [12] 2930 	mov	a,r3
      000A6A 2D               [12] 2931 	add	a,r5
      000A6B F8               [12] 2932 	mov	r0,a
      000A6C EC               [12] 2933 	mov	a,r4
      000A6D 3E               [12] 2934 	addc	a,r6
      000A6E F9               [12] 2935 	mov	r1,a
      000A6F 8F 02            [24] 2936 	mov	ar2,r7
      000A71 88 82            [24] 2937 	mov	dpl,r0
      000A73 89 83            [24] 2938 	mov	dph,r1
      000A75 8A F0            [24] 2939 	mov	b,r2
      000A77 12 23 81         [24] 2940 	lcall	__gptrget
      000A7A FA               [12] 2941 	mov	r2,a
      000A7B 60 20            [24] 2942 	jz	00105$
                                   2943 ;	ECEN4330Lab7.c:679: write(str[i]);  /* Call transmit data function */
      000A7D 8A 82            [24] 2944 	mov	dpl,r2
      000A7F C0 07            [24] 2945 	push	ar7
      000A81 C0 06            [24] 2946 	push	ar6
      000A83 C0 05            [24] 2947 	push	ar5
      000A85 C0 04            [24] 2948 	push	ar4
      000A87 C0 03            [24] 2949 	push	ar3
      000A89 12 09 F9         [24] 2950 	lcall	_write
      000A8C D0 03            [24] 2951 	pop	ar3
      000A8E D0 04            [24] 2952 	pop	ar4
      000A90 D0 05            [24] 2953 	pop	ar5
      000A92 D0 06            [24] 2954 	pop	ar6
      000A94 D0 07            [24] 2955 	pop	ar7
                                   2956 ;	ECEN4330Lab7.c:677: for(i=0;str[i]!=0;i++)  /* Send each char of string till the NULL */
      000A96 0B               [12] 2957 	inc	r3
      000A97 BB 00 CF         [24] 2958 	cjne	r3,#0x00,00103$
      000A9A 0C               [12] 2959 	inc	r4
      000A9B 80 CC            [24] 2960 	sjmp	00103$
      000A9D                       2961 00105$:
                                   2962 ;	ECEN4330Lab7.c:681: }
      000A9D 22               [24] 2963 	ret
                                   2964 ;------------------------------------------------------------
                                   2965 ;Allocation info for local variables in function 'keyDetect'
                                   2966 ;------------------------------------------------------------
                                   2967 ;	ECEN4330Lab7.c:689: unsigned char keyDetect(){
                                   2968 ;	-----------------------------------------
                                   2969 ;	 function keyDetect
                                   2970 ;	-----------------------------------------
      000A9E                       2971 _keyDetect:
                                   2972 ;	ECEN4330Lab7.c:690: __KEYPAD_PORT__=0xF0;           /*set port direction as input-output*/
      000A9E 75 90 F0         [24] 2973 	mov	_P1,#0xf0
                                   2974 ;	ECEN4330Lab7.c:691: received_flag = 0;
      000AA1 75 60 00         [24] 2975 	mov	_received_flag,#0x00
                                   2976 ;	ECEN4330Lab7.c:692: do
      000AA4                       2977 00102$:
                                   2978 ;	ECEN4330Lab7.c:694: __KEYPAD_PORT__ = 0xF0;
      000AA4 75 90 F0         [24] 2979 	mov	_P1,#0xf0
                                   2980 ;	ECEN4330Lab7.c:695: colloc = __KEYPAD_PORT__;
      000AA7 85 90 21         [24] 2981 	mov	_colloc,_P1
                                   2982 ;	ECEN4330Lab7.c:696: colloc&= 0xF0;  /* mask port for column read only */
      000AAA 53 21 F0         [24] 2983 	anl	_colloc,#0xf0
                                   2984 ;	ECEN4330Lab7.c:697: }while(colloc != 0xF0 && received_flag == 0);     /* read status of column */
      000AAD 74 F0            [12] 2985 	mov	a,#0xf0
      000AAF B5 21 02         [24] 2986 	cjne	a,_colloc,00190$
      000AB2 80 04            [24] 2987 	sjmp	00106$
      000AB4                       2988 00190$:
      000AB4 E5 60            [12] 2989 	mov	a,_received_flag
      000AB6 60 EC            [24] 2990 	jz	00102$
                                   2991 ;	ECEN4330Lab7.c:701: do
      000AB8                       2992 00106$:
                                   2993 ;	ECEN4330Lab7.c:704: rtcPrint();
      000AB8 12 02 07         [24] 2994 	lcall	_rtcPrint
                                   2995 ;	ECEN4330Lab7.c:705: colloc = (__KEYPAD_PORT__ & 0xF0);  /* read status of column */
      000ABB E5 90            [12] 2996 	mov	a,_P1
      000ABD 54 F0            [12] 2997 	anl	a,#0xf0
      000ABF F5 21            [12] 2998 	mov	_colloc,a
                                   2999 ;	ECEN4330Lab7.c:706: }while(colloc == 0xF0 && received_flag == 0); /* check for any key press */
      000AC1 74 F0            [12] 3000 	mov	a,#0xf0
      000AC3 B5 21 04         [24] 3001 	cjne	a,_colloc,00108$
      000AC6 E5 60            [12] 3002 	mov	a,_received_flag
      000AC8 60 EE            [24] 3003 	jz	00106$
      000ACA                       3004 00108$:
                                   3005 ;	ECEN4330Lab7.c:708: delay(1);
      000ACA 90 00 01         [24] 3006 	mov	dptr,#0x0001
      000ACD 12 00 BF         [24] 3007 	lcall	_delay
                                   3008 ;	ECEN4330Lab7.c:709: colloc = (__KEYPAD_PORT__ & 0xF0);
      000AD0 E5 90            [12] 3009 	mov	a,_P1
      000AD2 54 F0            [12] 3010 	anl	a,#0xf0
      000AD4 F5 21            [12] 3011 	mov	_colloc,a
                                   3012 ;	ECEN4330Lab7.c:710: }while(colloc == 0xF0 && received_flag == 0);
      000AD6 74 F0            [12] 3013 	mov	a,#0xf0
      000AD8 B5 21 04         [24] 3014 	cjne	a,_colloc,00112$
      000ADB E5 60            [12] 3015 	mov	a,_received_flag
      000ADD 60 D9            [24] 3016 	jz	00106$
      000ADF                       3017 00112$:
                                   3018 ;	ECEN4330Lab7.c:712: if(received_flag == 0){
      000ADF E5 60            [12] 3019 	mov	a,_received_flag
      000AE1 60 03            [24] 3020 	jz	00198$
      000AE3 02 0B A7         [24] 3021 	ljmp	00134$
      000AE6                       3022 00198$:
                                   3023 ;	ECEN4330Lab7.c:713: while(1)
      000AE6                       3024 00122$:
                                   3025 ;	ECEN4330Lab7.c:716: __KEYPAD_PORT__= 0xFE;                                          /* check for pressed key in 1st row */
      000AE6 75 90 FE         [24] 3026 	mov	_P1,#0xfe
                                   3027 ;	ECEN4330Lab7.c:717: colloc = (__KEYPAD_PORT__ & 0xF0);
      000AE9 E5 90            [12] 3028 	mov	a,_P1
      000AEB 54 F0            [12] 3029 	anl	a,#0xf0
      000AED F5 21            [12] 3030 	mov	_colloc,a
                                   3031 ;	ECEN4330Lab7.c:718: if(colloc != 0xF0)
      000AEF 74 F0            [12] 3032 	mov	a,#0xf0
      000AF1 B5 21 02         [24] 3033 	cjne	a,_colloc,00199$
      000AF4 80 05            [24] 3034 	sjmp	00114$
      000AF6                       3035 00199$:
                                   3036 ;	ECEN4330Lab7.c:720: rowloc = 0;
      000AF6 75 22 00         [24] 3037 	mov	_rowloc,#0x00
                                   3038 ;	ECEN4330Lab7.c:721: break;
      000AF9 80 3D            [24] 3039 	sjmp	00123$
      000AFB                       3040 00114$:
                                   3041 ;	ECEN4330Lab7.c:724: __KEYPAD_PORT__ = 0xFD;                                 /* check for pressed key in 2nd row */
      000AFB 75 90 FD         [24] 3042 	mov	_P1,#0xfd
                                   3043 ;	ECEN4330Lab7.c:725: colloc = (__KEYPAD_PORT__ & 0xF0);
      000AFE E5 90            [12] 3044 	mov	a,_P1
      000B00 54 F0            [12] 3045 	anl	a,#0xf0
      000B02 F5 21            [12] 3046 	mov	_colloc,a
                                   3047 ;	ECEN4330Lab7.c:726: if(colloc != 0xF0)
      000B04 74 F0            [12] 3048 	mov	a,#0xf0
      000B06 B5 21 02         [24] 3049 	cjne	a,_colloc,00200$
      000B09 80 05            [24] 3050 	sjmp	00116$
      000B0B                       3051 00200$:
                                   3052 ;	ECEN4330Lab7.c:728: rowloc = 1;
      000B0B 75 22 01         [24] 3053 	mov	_rowloc,#0x01
                                   3054 ;	ECEN4330Lab7.c:729: break;
      000B0E 80 28            [24] 3055 	sjmp	00123$
      000B10                       3056 00116$:
                                   3057 ;	ECEN4330Lab7.c:732: __KEYPAD_PORT__ = 0xFB;         /* check for pressed key in 3rd row */
      000B10 75 90 FB         [24] 3058 	mov	_P1,#0xfb
                                   3059 ;	ECEN4330Lab7.c:733: colloc = (__KEYPAD_PORT__ & 0xF0);
      000B13 E5 90            [12] 3060 	mov	a,_P1
      000B15 54 F0            [12] 3061 	anl	a,#0xf0
      000B17 F5 21            [12] 3062 	mov	_colloc,a
                                   3063 ;	ECEN4330Lab7.c:734: if(colloc != 0xF0)
      000B19 74 F0            [12] 3064 	mov	a,#0xf0
      000B1B B5 21 02         [24] 3065 	cjne	a,_colloc,00201$
      000B1E 80 05            [24] 3066 	sjmp	00118$
      000B20                       3067 00201$:
                                   3068 ;	ECEN4330Lab7.c:736: rowloc = 2;
      000B20 75 22 02         [24] 3069 	mov	_rowloc,#0x02
                                   3070 ;	ECEN4330Lab7.c:737: break;
      000B23 80 13            [24] 3071 	sjmp	00123$
      000B25                       3072 00118$:
                                   3073 ;	ECEN4330Lab7.c:740: __KEYPAD_PORT__ = 0xF7;         /* check for pressed key in 4th row */
      000B25 75 90 F7         [24] 3074 	mov	_P1,#0xf7
                                   3075 ;	ECEN4330Lab7.c:741: colloc = (__KEYPAD_PORT__ & 0xF0);
      000B28 E5 90            [12] 3076 	mov	a,_P1
      000B2A 54 F0            [12] 3077 	anl	a,#0xf0
      000B2C F5 21            [12] 3078 	mov	_colloc,a
                                   3079 ;	ECEN4330Lab7.c:742: if(colloc != 0xF0)
      000B2E 74 F0            [12] 3080 	mov	a,#0xf0
      000B30 B5 21 02         [24] 3081 	cjne	a,_colloc,00202$
      000B33 80 B1            [24] 3082 	sjmp	00122$
      000B35                       3083 00202$:
                                   3084 ;	ECEN4330Lab7.c:744: rowloc = 3;
      000B35 75 22 03         [24] 3085 	mov	_rowloc,#0x03
                                   3086 ;	ECEN4330Lab7.c:745: break;
      000B38                       3087 00123$:
                                   3088 ;	ECEN4330Lab7.c:749: if(colloc == 0xE0)
      000B38 74 E0            [12] 3089 	mov	a,#0xe0
      000B3A B5 21 15         [24] 3090 	cjne	a,_colloc,00131$
                                   3091 ;	ECEN4330Lab7.c:751: return(keypad[rowloc][0]);
      000B3D E5 22            [12] 3092 	mov	a,_rowloc
      000B3F 75 F0 04         [24] 3093 	mov	b,#0x04
      000B42 A4               [48] 3094 	mul	ab
      000B43 24 9C            [12] 3095 	add	a,#_keypad
      000B45 F5 82            [12] 3096 	mov	dpl,a
      000B47 74 28            [12] 3097 	mov	a,#(_keypad >> 8)
      000B49 35 F0            [12] 3098 	addc	a,b
      000B4B F5 83            [12] 3099 	mov	dph,a
      000B4D E4               [12] 3100 	clr	a
      000B4E 93               [24] 3101 	movc	a,@a+dptr
      000B4F F5 82            [12] 3102 	mov	dpl,a
      000B51 22               [24] 3103 	ret
      000B52                       3104 00131$:
                                   3105 ;	ECEN4330Lab7.c:753: else if(colloc == 0xD0)
      000B52 74 D0            [12] 3106 	mov	a,#0xd0
      000B54 B5 21 18         [24] 3107 	cjne	a,_colloc,00128$
                                   3108 ;	ECEN4330Lab7.c:755: return(keypad[rowloc][1]);
      000B57 E5 22            [12] 3109 	mov	a,_rowloc
      000B59 75 F0 04         [24] 3110 	mov	b,#0x04
      000B5C A4               [48] 3111 	mul	ab
      000B5D 24 9C            [12] 3112 	add	a,#_keypad
      000B5F FE               [12] 3113 	mov	r6,a
      000B60 74 28            [12] 3114 	mov	a,#(_keypad >> 8)
      000B62 35 F0            [12] 3115 	addc	a,b
      000B64 FF               [12] 3116 	mov	r7,a
      000B65 8E 82            [24] 3117 	mov	dpl,r6
      000B67 8F 83            [24] 3118 	mov	dph,r7
      000B69 A3               [24] 3119 	inc	dptr
      000B6A E4               [12] 3120 	clr	a
      000B6B 93               [24] 3121 	movc	a,@a+dptr
      000B6C F5 82            [12] 3122 	mov	dpl,a
      000B6E 22               [24] 3123 	ret
      000B6F                       3124 00128$:
                                   3125 ;	ECEN4330Lab7.c:757: else if(colloc == 0xB0)
      000B6F 74 B0            [12] 3126 	mov	a,#0xb0
      000B71 B5 21 19         [24] 3127 	cjne	a,_colloc,00125$
                                   3128 ;	ECEN4330Lab7.c:759: return(keypad[rowloc][2]);
      000B74 E5 22            [12] 3129 	mov	a,_rowloc
      000B76 75 F0 04         [24] 3130 	mov	b,#0x04
      000B79 A4               [48] 3131 	mul	ab
      000B7A 24 9C            [12] 3132 	add	a,#_keypad
      000B7C FE               [12] 3133 	mov	r6,a
      000B7D 74 28            [12] 3134 	mov	a,#(_keypad >> 8)
      000B7F 35 F0            [12] 3135 	addc	a,b
      000B81 FF               [12] 3136 	mov	r7,a
      000B82 8E 82            [24] 3137 	mov	dpl,r6
      000B84 8F 83            [24] 3138 	mov	dph,r7
      000B86 A3               [24] 3139 	inc	dptr
      000B87 A3               [24] 3140 	inc	dptr
      000B88 E4               [12] 3141 	clr	a
      000B89 93               [24] 3142 	movc	a,@a+dptr
      000B8A F5 82            [12] 3143 	mov	dpl,a
      000B8C 22               [24] 3144 	ret
      000B8D                       3145 00125$:
                                   3146 ;	ECEN4330Lab7.c:763: return(keypad[rowloc][3]);
      000B8D E5 22            [12] 3147 	mov	a,_rowloc
      000B8F 75 F0 04         [24] 3148 	mov	b,#0x04
      000B92 A4               [48] 3149 	mul	ab
      000B93 24 9C            [12] 3150 	add	a,#_keypad
      000B95 FE               [12] 3151 	mov	r6,a
      000B96 74 28            [12] 3152 	mov	a,#(_keypad >> 8)
      000B98 35 F0            [12] 3153 	addc	a,b
      000B9A FF               [12] 3154 	mov	r7,a
      000B9B 8E 82            [24] 3155 	mov	dpl,r6
      000B9D 8F 83            [24] 3156 	mov	dph,r7
      000B9F A3               [24] 3157 	inc	dptr
      000BA0 A3               [24] 3158 	inc	dptr
      000BA1 A3               [24] 3159 	inc	dptr
      000BA2 E4               [12] 3160 	clr	a
      000BA3 93               [24] 3161 	movc	a,@a+dptr
      000BA4 F5 82            [12] 3162 	mov	dpl,a
      000BA6 22               [24] 3163 	ret
      000BA7                       3164 00134$:
                                   3165 ;	ECEN4330Lab7.c:767: received_flag = 0;
      000BA7 75 60 00         [24] 3166 	mov	_received_flag,#0x00
                                   3167 ;	ECEN4330Lab7.c:768: return received_byte - 0x40;
      000BAA E5 5F            [12] 3168 	mov	a,_received_byte
      000BAC 24 C0            [12] 3169 	add	a,#0xc0
      000BAE F5 82            [12] 3170 	mov	dpl,a
                                   3171 ;	ECEN4330Lab7.c:770: }
      000BB0 22               [24] 3172 	ret
                                   3173 ;------------------------------------------------------------
                                   3174 ;Allocation info for local variables in function 'ASCIItoHEX'
                                   3175 ;------------------------------------------------------------
                                   3176 ;a                         Allocated to registers r7 
                                   3177 ;h                         Allocated to registers r7 
                                   3178 ;------------------------------------------------------------
                                   3179 ;	ECEN4330Lab7.c:778: unsigned char ASCIItoHEX(unsigned char a){
                                   3180 ;	-----------------------------------------
                                   3181 ;	 function ASCIItoHEX
                                   3182 ;	-----------------------------------------
      000BB1                       3183 _ASCIItoHEX:
      000BB1 AF 82            [24] 3184 	mov	r7,dpl
                                   3185 ;	ECEN4330Lab7.c:781: switch (a)
      000BB3 BF 30 00         [24] 3186 	cjne	r7,#0x30,00129$
      000BB6                       3187 00129$:
      000BB6 50 03            [24] 3188 	jnc	00130$
      000BB8 02 0C 42         [24] 3189 	ljmp	00117$
      000BBB                       3190 00130$:
      000BBB EF               [12] 3191 	mov	a,r7
      000BBC 24 B9            [12] 3192 	add	a,#0xff - 0x46
      000BBE 50 03            [24] 3193 	jnc	00131$
      000BC0 02 0C 42         [24] 3194 	ljmp	00117$
      000BC3                       3195 00131$:
      000BC3 EF               [12] 3196 	mov	a,r7
      000BC4 24 D0            [12] 3197 	add	a,#0xd0
      000BC6 FF               [12] 3198 	mov	r7,a
      000BC7 24 0A            [12] 3199 	add	a,#(00132$-3-.)
      000BC9 83               [24] 3200 	movc	a,@a+pc
      000BCA F5 82            [12] 3201 	mov	dpl,a
      000BCC EF               [12] 3202 	mov	a,r7
      000BCD 24 1B            [12] 3203 	add	a,#(00133$-3-.)
      000BCF 83               [24] 3204 	movc	a,@a+pc
      000BD0 F5 83            [12] 3205 	mov	dph,a
      000BD2 E4               [12] 3206 	clr	a
      000BD3 73               [24] 3207 	jmp	@a+dptr
      000BD4                       3208 00132$:
      000BD4 02                    3209 	.db	00101$
      000BD5 06                    3210 	.db	00102$
      000BD6 0A                    3211 	.db	00103$
      000BD7 0E                    3212 	.db	00104$
      000BD8 12                    3213 	.db	00105$
      000BD9 16                    3214 	.db	00106$
      000BDA 1A                    3215 	.db	00107$
      000BDB 1E                    3216 	.db	00108$
      000BDC 22                    3217 	.db	00109$
      000BDD 26                    3218 	.db	00110$
      000BDE 42                    3219 	.db	00117$
      000BDF 42                    3220 	.db	00117$
      000BE0 42                    3221 	.db	00117$
      000BE1 42                    3222 	.db	00117$
      000BE2 42                    3223 	.db	00117$
      000BE3 42                    3224 	.db	00117$
      000BE4 42                    3225 	.db	00117$
      000BE5 2A                    3226 	.db	00111$
      000BE6 2E                    3227 	.db	00112$
      000BE7 32                    3228 	.db	00113$
      000BE8 36                    3229 	.db	00114$
      000BE9 3A                    3230 	.db	00115$
      000BEA 3E                    3231 	.db	00116$
      000BEB                       3232 00133$:
      000BEB 0C                    3233 	.db	00101$>>8
      000BEC 0C                    3234 	.db	00102$>>8
      000BED 0C                    3235 	.db	00103$>>8
      000BEE 0C                    3236 	.db	00104$>>8
      000BEF 0C                    3237 	.db	00105$>>8
      000BF0 0C                    3238 	.db	00106$>>8
      000BF1 0C                    3239 	.db	00107$>>8
      000BF2 0C                    3240 	.db	00108$>>8
      000BF3 0C                    3241 	.db	00109$>>8
      000BF4 0C                    3242 	.db	00110$>>8
      000BF5 0C                    3243 	.db	00117$>>8
      000BF6 0C                    3244 	.db	00117$>>8
      000BF7 0C                    3245 	.db	00117$>>8
      000BF8 0C                    3246 	.db	00117$>>8
      000BF9 0C                    3247 	.db	00117$>>8
      000BFA 0C                    3248 	.db	00117$>>8
      000BFB 0C                    3249 	.db	00117$>>8
      000BFC 0C                    3250 	.db	00111$>>8
      000BFD 0C                    3251 	.db	00112$>>8
      000BFE 0C                    3252 	.db	00113$>>8
      000BFF 0C                    3253 	.db	00114$>>8
      000C00 0C                    3254 	.db	00115$>>8
      000C01 0C                    3255 	.db	00116$>>8
                                   3256 ;	ECEN4330Lab7.c:783: case '0':
      000C02                       3257 00101$:
                                   3258 ;	ECEN4330Lab7.c:784: h = 0x00;
      000C02 7F 00            [12] 3259 	mov	r7,#0x00
                                   3260 ;	ECEN4330Lab7.c:785: break;
                                   3261 ;	ECEN4330Lab7.c:786: case '1':
      000C04 80 3E            [24] 3262 	sjmp	00118$
      000C06                       3263 00102$:
                                   3264 ;	ECEN4330Lab7.c:787: h = 0x01;
      000C06 7F 01            [12] 3265 	mov	r7,#0x01
                                   3266 ;	ECEN4330Lab7.c:788: break;
                                   3267 ;	ECEN4330Lab7.c:789: case '2':
      000C08 80 3A            [24] 3268 	sjmp	00118$
      000C0A                       3269 00103$:
                                   3270 ;	ECEN4330Lab7.c:790: h = 0x02;
      000C0A 7F 02            [12] 3271 	mov	r7,#0x02
                                   3272 ;	ECEN4330Lab7.c:791: break;
                                   3273 ;	ECEN4330Lab7.c:792: case '3':
      000C0C 80 36            [24] 3274 	sjmp	00118$
      000C0E                       3275 00104$:
                                   3276 ;	ECEN4330Lab7.c:793: h = 0x03;
      000C0E 7F 03            [12] 3277 	mov	r7,#0x03
                                   3278 ;	ECEN4330Lab7.c:794: break;
                                   3279 ;	ECEN4330Lab7.c:795: case '4':
      000C10 80 32            [24] 3280 	sjmp	00118$
      000C12                       3281 00105$:
                                   3282 ;	ECEN4330Lab7.c:796: h = 0x04;
      000C12 7F 04            [12] 3283 	mov	r7,#0x04
                                   3284 ;	ECEN4330Lab7.c:797: break;
                                   3285 ;	ECEN4330Lab7.c:798: case '5':
      000C14 80 2E            [24] 3286 	sjmp	00118$
      000C16                       3287 00106$:
                                   3288 ;	ECEN4330Lab7.c:799: h = 0x05;
      000C16 7F 05            [12] 3289 	mov	r7,#0x05
                                   3290 ;	ECEN4330Lab7.c:800: break;
                                   3291 ;	ECEN4330Lab7.c:801: case '6':
      000C18 80 2A            [24] 3292 	sjmp	00118$
      000C1A                       3293 00107$:
                                   3294 ;	ECEN4330Lab7.c:802: h = 0x06;
      000C1A 7F 06            [12] 3295 	mov	r7,#0x06
                                   3296 ;	ECEN4330Lab7.c:803: break;
                                   3297 ;	ECEN4330Lab7.c:804: case '7':
      000C1C 80 26            [24] 3298 	sjmp	00118$
      000C1E                       3299 00108$:
                                   3300 ;	ECEN4330Lab7.c:805: h = 0x07;
      000C1E 7F 07            [12] 3301 	mov	r7,#0x07
                                   3302 ;	ECEN4330Lab7.c:806: break;
                                   3303 ;	ECEN4330Lab7.c:807: case '8':
      000C20 80 22            [24] 3304 	sjmp	00118$
      000C22                       3305 00109$:
                                   3306 ;	ECEN4330Lab7.c:808: h = 0x08;
      000C22 7F 08            [12] 3307 	mov	r7,#0x08
                                   3308 ;	ECEN4330Lab7.c:809: break;
                                   3309 ;	ECEN4330Lab7.c:810: case '9':
      000C24 80 1E            [24] 3310 	sjmp	00118$
      000C26                       3311 00110$:
                                   3312 ;	ECEN4330Lab7.c:811: h = 0x09;
      000C26 7F 09            [12] 3313 	mov	r7,#0x09
                                   3314 ;	ECEN4330Lab7.c:812: break;
                                   3315 ;	ECEN4330Lab7.c:813: case 'A':
      000C28 80 1A            [24] 3316 	sjmp	00118$
      000C2A                       3317 00111$:
                                   3318 ;	ECEN4330Lab7.c:814: h = 0x0A;
      000C2A 7F 0A            [12] 3319 	mov	r7,#0x0a
                                   3320 ;	ECEN4330Lab7.c:815: break;
                                   3321 ;	ECEN4330Lab7.c:816: case 'B':
      000C2C 80 16            [24] 3322 	sjmp	00118$
      000C2E                       3323 00112$:
                                   3324 ;	ECEN4330Lab7.c:817: h = 0x0B;
      000C2E 7F 0B            [12] 3325 	mov	r7,#0x0b
                                   3326 ;	ECEN4330Lab7.c:818: break;
                                   3327 ;	ECEN4330Lab7.c:819: case 'C':
      000C30 80 12            [24] 3328 	sjmp	00118$
      000C32                       3329 00113$:
                                   3330 ;	ECEN4330Lab7.c:820: h = 0x0C;
      000C32 7F 0C            [12] 3331 	mov	r7,#0x0c
                                   3332 ;	ECEN4330Lab7.c:821: break;
                                   3333 ;	ECEN4330Lab7.c:822: case 'D':
      000C34 80 0E            [24] 3334 	sjmp	00118$
      000C36                       3335 00114$:
                                   3336 ;	ECEN4330Lab7.c:823: h = 0x0D;
      000C36 7F 0D            [12] 3337 	mov	r7,#0x0d
                                   3338 ;	ECEN4330Lab7.c:824: break;
                                   3339 ;	ECEN4330Lab7.c:825: case 'E':
      000C38 80 0A            [24] 3340 	sjmp	00118$
      000C3A                       3341 00115$:
                                   3342 ;	ECEN4330Lab7.c:826: h = 0x0E;
      000C3A 7F 0E            [12] 3343 	mov	r7,#0x0e
                                   3344 ;	ECEN4330Lab7.c:827: break;
                                   3345 ;	ECEN4330Lab7.c:828: case 'F':
      000C3C 80 06            [24] 3346 	sjmp	00118$
      000C3E                       3347 00116$:
                                   3348 ;	ECEN4330Lab7.c:829: h = 0x0F;
      000C3E 7F 0F            [12] 3349 	mov	r7,#0x0f
                                   3350 ;	ECEN4330Lab7.c:830: break;
                                   3351 ;	ECEN4330Lab7.c:831: default:
      000C40 80 02            [24] 3352 	sjmp	00118$
      000C42                       3353 00117$:
                                   3354 ;	ECEN4330Lab7.c:832: h = 0x00;
      000C42 7F 00            [12] 3355 	mov	r7,#0x00
                                   3356 ;	ECEN4330Lab7.c:834: }
      000C44                       3357 00118$:
                                   3358 ;	ECEN4330Lab7.c:835: return h;
      000C44 8F 82            [24] 3359 	mov	dpl,r7
                                   3360 ;	ECEN4330Lab7.c:836: }
      000C46 22               [24] 3361 	ret
                                   3362 ;------------------------------------------------------------
                                   3363 ;Allocation info for local variables in function 'HEXtoASCII'
                                   3364 ;------------------------------------------------------------
                                   3365 ;h                         Allocated to registers r6 r7 
                                   3366 ;a                         Allocated to registers r7 
                                   3367 ;------------------------------------------------------------
                                   3368 ;	ECEN4330Lab7.c:843: unsigned char HEXtoASCII(unsigned int h){
                                   3369 ;	-----------------------------------------
                                   3370 ;	 function HEXtoASCII
                                   3371 ;	-----------------------------------------
      000C47                       3372 _HEXtoASCII:
      000C47 AE 82            [24] 3373 	mov	r6,dpl
      000C49 AF 83            [24] 3374 	mov	r7,dph
                                   3375 ;	ECEN4330Lab7.c:846: switch (h)
      000C4B C3               [12] 3376 	clr	c
      000C4C 74 0F            [12] 3377 	mov	a,#0x0f
      000C4E 9E               [12] 3378 	subb	a,r6
      000C4F E4               [12] 3379 	clr	a
      000C50 9F               [12] 3380 	subb	a,r7
      000C51 50 03            [24] 3381 	jnc	00125$
      000C53 02 0C C4         [24] 3382 	ljmp	00117$
      000C56                       3383 00125$:
      000C56 EE               [12] 3384 	mov	a,r6
      000C57 24 0A            [12] 3385 	add	a,#(00126$-3-.)
      000C59 83               [24] 3386 	movc	a,@a+pc
      000C5A F5 82            [12] 3387 	mov	dpl,a
      000C5C EE               [12] 3388 	mov	a,r6
      000C5D 24 14            [12] 3389 	add	a,#(00127$-3-.)
      000C5F 83               [24] 3390 	movc	a,@a+pc
      000C60 F5 83            [12] 3391 	mov	dph,a
      000C62 E4               [12] 3392 	clr	a
      000C63 73               [24] 3393 	jmp	@a+dptr
      000C64                       3394 00126$:
      000C64 84                    3395 	.db	00101$
      000C65 88                    3396 	.db	00102$
      000C66 8C                    3397 	.db	00103$
      000C67 90                    3398 	.db	00104$
      000C68 94                    3399 	.db	00105$
      000C69 98                    3400 	.db	00106$
      000C6A 9C                    3401 	.db	00107$
      000C6B A0                    3402 	.db	00108$
      000C6C A4                    3403 	.db	00109$
      000C6D A8                    3404 	.db	00110$
      000C6E AC                    3405 	.db	00111$
      000C6F B0                    3406 	.db	00112$
      000C70 B4                    3407 	.db	00113$
      000C71 B8                    3408 	.db	00114$
      000C72 BC                    3409 	.db	00115$
      000C73 C0                    3410 	.db	00116$
      000C74                       3411 00127$:
      000C74 0C                    3412 	.db	00101$>>8
      000C75 0C                    3413 	.db	00102$>>8
      000C76 0C                    3414 	.db	00103$>>8
      000C77 0C                    3415 	.db	00104$>>8
      000C78 0C                    3416 	.db	00105$>>8
      000C79 0C                    3417 	.db	00106$>>8
      000C7A 0C                    3418 	.db	00107$>>8
      000C7B 0C                    3419 	.db	00108$>>8
      000C7C 0C                    3420 	.db	00109$>>8
      000C7D 0C                    3421 	.db	00110$>>8
      000C7E 0C                    3422 	.db	00111$>>8
      000C7F 0C                    3423 	.db	00112$>>8
      000C80 0C                    3424 	.db	00113$>>8
      000C81 0C                    3425 	.db	00114$>>8
      000C82 0C                    3426 	.db	00115$>>8
      000C83 0C                    3427 	.db	00116$>>8
                                   3428 ;	ECEN4330Lab7.c:848: case 0x0000:
      000C84                       3429 00101$:
                                   3430 ;	ECEN4330Lab7.c:849: a = '0';
      000C84 7F 30            [12] 3431 	mov	r7,#0x30
                                   3432 ;	ECEN4330Lab7.c:850: break;
                                   3433 ;	ECEN4330Lab7.c:851: case 0x0001:
      000C86 80 3E            [24] 3434 	sjmp	00118$
      000C88                       3435 00102$:
                                   3436 ;	ECEN4330Lab7.c:852: a = '1';
      000C88 7F 31            [12] 3437 	mov	r7,#0x31
                                   3438 ;	ECEN4330Lab7.c:853: break;
                                   3439 ;	ECEN4330Lab7.c:854: case 0x0002:
      000C8A 80 3A            [24] 3440 	sjmp	00118$
      000C8C                       3441 00103$:
                                   3442 ;	ECEN4330Lab7.c:855: a = '2';
      000C8C 7F 32            [12] 3443 	mov	r7,#0x32
                                   3444 ;	ECEN4330Lab7.c:856: break;
                                   3445 ;	ECEN4330Lab7.c:857: case 0x0003:
      000C8E 80 36            [24] 3446 	sjmp	00118$
      000C90                       3447 00104$:
                                   3448 ;	ECEN4330Lab7.c:858: a = '3';
      000C90 7F 33            [12] 3449 	mov	r7,#0x33
                                   3450 ;	ECEN4330Lab7.c:859: break;
                                   3451 ;	ECEN4330Lab7.c:860: case 0x0004:
      000C92 80 32            [24] 3452 	sjmp	00118$
      000C94                       3453 00105$:
                                   3454 ;	ECEN4330Lab7.c:861: a = '4';
      000C94 7F 34            [12] 3455 	mov	r7,#0x34
                                   3456 ;	ECEN4330Lab7.c:862: break;
                                   3457 ;	ECEN4330Lab7.c:863: case 0x0005:
      000C96 80 2E            [24] 3458 	sjmp	00118$
      000C98                       3459 00106$:
                                   3460 ;	ECEN4330Lab7.c:864: a = '5';
      000C98 7F 35            [12] 3461 	mov	r7,#0x35
                                   3462 ;	ECEN4330Lab7.c:865: break;
                                   3463 ;	ECEN4330Lab7.c:866: case 0x0006:
      000C9A 80 2A            [24] 3464 	sjmp	00118$
      000C9C                       3465 00107$:
                                   3466 ;	ECEN4330Lab7.c:867: a = '6';
      000C9C 7F 36            [12] 3467 	mov	r7,#0x36
                                   3468 ;	ECEN4330Lab7.c:868: break;
                                   3469 ;	ECEN4330Lab7.c:869: case 0x0007:
      000C9E 80 26            [24] 3470 	sjmp	00118$
      000CA0                       3471 00108$:
                                   3472 ;	ECEN4330Lab7.c:870: a = '7';
      000CA0 7F 37            [12] 3473 	mov	r7,#0x37
                                   3474 ;	ECEN4330Lab7.c:871: break;
                                   3475 ;	ECEN4330Lab7.c:872: case 0x0008:
      000CA2 80 22            [24] 3476 	sjmp	00118$
      000CA4                       3477 00109$:
                                   3478 ;	ECEN4330Lab7.c:873: a = '8';
      000CA4 7F 38            [12] 3479 	mov	r7,#0x38
                                   3480 ;	ECEN4330Lab7.c:874: break;
                                   3481 ;	ECEN4330Lab7.c:875: case 0x0009:
      000CA6 80 1E            [24] 3482 	sjmp	00118$
      000CA8                       3483 00110$:
                                   3484 ;	ECEN4330Lab7.c:876: a = '9';
      000CA8 7F 39            [12] 3485 	mov	r7,#0x39
                                   3486 ;	ECEN4330Lab7.c:877: break;
                                   3487 ;	ECEN4330Lab7.c:878: case 0x000A:
      000CAA 80 1A            [24] 3488 	sjmp	00118$
      000CAC                       3489 00111$:
                                   3490 ;	ECEN4330Lab7.c:879: a = 'A';
      000CAC 7F 41            [12] 3491 	mov	r7,#0x41
                                   3492 ;	ECEN4330Lab7.c:880: break;
                                   3493 ;	ECEN4330Lab7.c:881: case 0x000B:
      000CAE 80 16            [24] 3494 	sjmp	00118$
      000CB0                       3495 00112$:
                                   3496 ;	ECEN4330Lab7.c:882: a = 'B';
      000CB0 7F 42            [12] 3497 	mov	r7,#0x42
                                   3498 ;	ECEN4330Lab7.c:883: break;
                                   3499 ;	ECEN4330Lab7.c:884: case 0x000C:
      000CB2 80 12            [24] 3500 	sjmp	00118$
      000CB4                       3501 00113$:
                                   3502 ;	ECEN4330Lab7.c:885: a = 'C';
      000CB4 7F 43            [12] 3503 	mov	r7,#0x43
                                   3504 ;	ECEN4330Lab7.c:886: break;
                                   3505 ;	ECEN4330Lab7.c:887: case 0x000D:
      000CB6 80 0E            [24] 3506 	sjmp	00118$
      000CB8                       3507 00114$:
                                   3508 ;	ECEN4330Lab7.c:888: a = 'D';
      000CB8 7F 44            [12] 3509 	mov	r7,#0x44
                                   3510 ;	ECEN4330Lab7.c:889: break;
                                   3511 ;	ECEN4330Lab7.c:890: case 0x000E:
      000CBA 80 0A            [24] 3512 	sjmp	00118$
      000CBC                       3513 00115$:
                                   3514 ;	ECEN4330Lab7.c:891: a = 'E';
      000CBC 7F 45            [12] 3515 	mov	r7,#0x45
                                   3516 ;	ECEN4330Lab7.c:892: break;
                                   3517 ;	ECEN4330Lab7.c:893: case 0x000F:
      000CBE 80 06            [24] 3518 	sjmp	00118$
      000CC0                       3519 00116$:
                                   3520 ;	ECEN4330Lab7.c:894: a = 'F';
      000CC0 7F 46            [12] 3521 	mov	r7,#0x46
                                   3522 ;	ECEN4330Lab7.c:895: break;
                                   3523 ;	ECEN4330Lab7.c:896: default:
      000CC2 80 02            [24] 3524 	sjmp	00118$
      000CC4                       3525 00117$:
                                   3526 ;	ECEN4330Lab7.c:897: a = '0';
      000CC4 7F 30            [12] 3527 	mov	r7,#0x30
                                   3528 ;	ECEN4330Lab7.c:899: }
      000CC6                       3529 00118$:
                                   3530 ;	ECEN4330Lab7.c:900: return a;
      000CC6 8F 82            [24] 3531 	mov	dpl,r7
                                   3532 ;	ECEN4330Lab7.c:901: }
      000CC8 22               [24] 3533 	ret
                                   3534 ;------------------------------------------------------------
                                   3535 ;Allocation info for local variables in function 'HEXtoASCII_8write'
                                   3536 ;------------------------------------------------------------
                                   3537 ;h                         Allocated to registers r7 
                                   3538 ;------------------------------------------------------------
                                   3539 ;	ECEN4330Lab7.c:909: void HEXtoASCII_8write(unsigned char h){
                                   3540 ;	-----------------------------------------
                                   3541 ;	 function HEXtoASCII_8write
                                   3542 ;	-----------------------------------------
      000CC9                       3543 _HEXtoASCII_8write:
                                   3544 ;	ECEN4330Lab7.c:912: byte = (h >> 4);
      000CC9 E5 82            [12] 3545 	mov	a,dpl
      000CCB FF               [12] 3546 	mov	r7,a
      000CCC C4               [12] 3547 	swap	a
      000CCD 54 0F            [12] 3548 	anl	a,#0x0f
      000CCF FE               [12] 3549 	mov	r6,a
      000CD0 8E 4E            [24] 3550 	mov	_byte,r6
      000CD2 75 4F 00         [24] 3551 	mov	(_byte + 1),#0x00
                                   3552 ;	ECEN4330Lab7.c:913: byte &= 0x0F;
      000CD5 53 4E 0F         [24] 3553 	anl	_byte,#0x0f
      000CD8 75 4F 00         [24] 3554 	mov	(_byte + 1),#0x00
                                   3555 ;	ECEN4330Lab7.c:914: ASCII = HEXtoASCII(byte);
      000CDB 85 4E 82         [24] 3556 	mov	dpl,_byte
      000CDE 85 4F 83         [24] 3557 	mov	dph,(_byte + 1)
      000CE1 C0 07            [24] 3558 	push	ar7
      000CE3 12 0C 47         [24] 3559 	lcall	_HEXtoASCII
                                   3560 ;	ECEN4330Lab7.c:915: write(ASCII);
      000CE6 85 82 52         [24] 3561 	mov  _ASCII,dpl
      000CE9 12 09 F9         [24] 3562 	lcall	_write
      000CEC D0 07            [24] 3563 	pop	ar7
                                   3564 ;	ECEN4330Lab7.c:918: byte = (h & 0x0F);
      000CEE 7E 00            [12] 3565 	mov	r6,#0x00
      000CF0 74 0F            [12] 3566 	mov	a,#0x0f
      000CF2 5F               [12] 3567 	anl	a,r7
      000CF3 F5 4E            [12] 3568 	mov	_byte,a
                                   3569 ;	1-genFromRTrack replaced	mov	(_byte + 1),#0x00
      000CF5 8E 4F            [24] 3570 	mov	(_byte + 1),r6
                                   3571 ;	ECEN4330Lab7.c:919: ASCII = HEXtoASCII(byte);
      000CF7 85 4E 82         [24] 3572 	mov	dpl,_byte
      000CFA 85 4F 83         [24] 3573 	mov	dph,(_byte + 1)
      000CFD 12 0C 47         [24] 3574 	lcall	_HEXtoASCII
                                   3575 ;	ECEN4330Lab7.c:920: write(ASCII);
      000D00 85 82 52         [24] 3576 	mov  _ASCII,dpl
                                   3577 ;	ECEN4330Lab7.c:921: }
      000D03 02 09 F9         [24] 3578 	ljmp	_write
                                   3579 ;------------------------------------------------------------
                                   3580 ;Allocation info for local variables in function 'HEXtoASCII_16write'
                                   3581 ;------------------------------------------------------------
                                   3582 ;h                         Allocated to registers r6 r7 
                                   3583 ;------------------------------------------------------------
                                   3584 ;	ECEN4330Lab7.c:929: void HEXtoASCII_16write(unsigned int h){
                                   3585 ;	-----------------------------------------
                                   3586 ;	 function HEXtoASCII_16write
                                   3587 ;	-----------------------------------------
      000D06                       3588 _HEXtoASCII_16write:
      000D06 AE 82            [24] 3589 	mov	r6,dpl
                                   3590 ;	ECEN4330Lab7.c:932: byte = (h >> 12);
      000D08 E5 83            [12] 3591 	mov	a,dph
      000D0A FF               [12] 3592 	mov	r7,a
      000D0B C4               [12] 3593 	swap	a
      000D0C 54 0F            [12] 3594 	anl	a,#0x0f
      000D0E F5 4E            [12] 3595 	mov	_byte,a
      000D10 75 4F 00         [24] 3596 	mov	(_byte + 1),#0x00
                                   3597 ;	ECEN4330Lab7.c:933: byte &= 0x000F;
      000D13 53 4E 0F         [24] 3598 	anl	_byte,#0x0f
      000D16 75 4F 00         [24] 3599 	mov	(_byte + 1),#0x00
                                   3600 ;	ECEN4330Lab7.c:934: ASCII = HEXtoASCII(byte);
      000D19 85 4E 82         [24] 3601 	mov	dpl,_byte
      000D1C 85 4F 83         [24] 3602 	mov	dph,(_byte + 1)
      000D1F C0 07            [24] 3603 	push	ar7
      000D21 C0 06            [24] 3604 	push	ar6
      000D23 12 0C 47         [24] 3605 	lcall	_HEXtoASCII
      000D26 85 82 52         [24] 3606 	mov	_ASCII,dpl
                                   3607 ;	ECEN4330Lab7.c:935: LCD_string_write("0x");
      000D29 90 28 AE         [24] 3608 	mov	dptr,#___str_1
      000D2C 75 F0 80         [24] 3609 	mov	b,#0x80
      000D2F 12 0A 5F         [24] 3610 	lcall	_LCD_string_write
                                   3611 ;	ECEN4330Lab7.c:936: write(ASCII);
      000D32 85 52 82         [24] 3612 	mov	dpl,_ASCII
      000D35 12 09 F9         [24] 3613 	lcall	_write
      000D38 D0 06            [24] 3614 	pop	ar6
      000D3A D0 07            [24] 3615 	pop	ar7
                                   3616 ;	ECEN4330Lab7.c:939: byte = (h >> 8);
      000D3C 8F 4E            [24] 3617 	mov	_byte,r7
      000D3E 75 4F 00         [24] 3618 	mov	(_byte + 1),#0x00
                                   3619 ;	ECEN4330Lab7.c:940: byte &= 0x000F;
      000D41 53 4E 0F         [24] 3620 	anl	_byte,#0x0f
      000D44 75 4F 00         [24] 3621 	mov	(_byte + 1),#0x00
                                   3622 ;	ECEN4330Lab7.c:941: ASCII = HEXtoASCII(byte);
      000D47 85 4E 82         [24] 3623 	mov	dpl,_byte
      000D4A 85 4F 83         [24] 3624 	mov	dph,(_byte + 1)
      000D4D C0 07            [24] 3625 	push	ar7
      000D4F C0 06            [24] 3626 	push	ar6
      000D51 12 0C 47         [24] 3627 	lcall	_HEXtoASCII
                                   3628 ;	ECEN4330Lab7.c:942: write(ASCII);
      000D54 85 82 52         [24] 3629 	mov  _ASCII,dpl
      000D57 12 09 F9         [24] 3630 	lcall	_write
      000D5A D0 06            [24] 3631 	pop	ar6
      000D5C D0 07            [24] 3632 	pop	ar7
                                   3633 ;	ECEN4330Lab7.c:945: byte = (h >> 4);
      000D5E 8E 4E            [24] 3634 	mov	_byte,r6
      000D60 EF               [12] 3635 	mov	a,r7
      000D61 C4               [12] 3636 	swap	a
      000D62 C5 4E            [12] 3637 	xch	a,_byte
      000D64 C4               [12] 3638 	swap	a
      000D65 54 0F            [12] 3639 	anl	a,#0x0f
      000D67 65 4E            [12] 3640 	xrl	a,_byte
      000D69 C5 4E            [12] 3641 	xch	a,_byte
      000D6B 54 0F            [12] 3642 	anl	a,#0x0f
      000D6D C5 4E            [12] 3643 	xch	a,_byte
      000D6F 65 4E            [12] 3644 	xrl	a,_byte
      000D71 C5 4E            [12] 3645 	xch	a,_byte
      000D73 F5 4F            [12] 3646 	mov	(_byte + 1),a
                                   3647 ;	ECEN4330Lab7.c:946: byte &= 0x000F;
      000D75 53 4E 0F         [24] 3648 	anl	_byte,#0x0f
      000D78 75 4F 00         [24] 3649 	mov	(_byte + 1),#0x00
                                   3650 ;	ECEN4330Lab7.c:947: ASCII = HEXtoASCII(byte);
      000D7B 85 4E 82         [24] 3651 	mov	dpl,_byte
      000D7E 85 4F 83         [24] 3652 	mov	dph,(_byte + 1)
      000D81 C0 07            [24] 3653 	push	ar7
      000D83 C0 06            [24] 3654 	push	ar6
      000D85 12 0C 47         [24] 3655 	lcall	_HEXtoASCII
                                   3656 ;	ECEN4330Lab7.c:948: write(ASCII);
      000D88 85 82 52         [24] 3657 	mov  _ASCII,dpl
      000D8B 12 09 F9         [24] 3658 	lcall	_write
      000D8E D0 06            [24] 3659 	pop	ar6
      000D90 D0 07            [24] 3660 	pop	ar7
                                   3661 ;	ECEN4330Lab7.c:951: byte = h;
      000D92 8E 4E            [24] 3662 	mov	_byte,r6
      000D94 8F 4F            [24] 3663 	mov	(_byte + 1),r7
                                   3664 ;	ECEN4330Lab7.c:952: byte &= 0x000F;
      000D96 53 4E 0F         [24] 3665 	anl	_byte,#0x0f
      000D99 75 4F 00         [24] 3666 	mov	(_byte + 1),#0x00
                                   3667 ;	ECEN4330Lab7.c:953: ASCII = HEXtoASCII(byte);
      000D9C 85 4E 82         [24] 3668 	mov	dpl,_byte
      000D9F 85 4F 83         [24] 3669 	mov	dph,(_byte + 1)
      000DA2 12 0C 47         [24] 3670 	lcall	_HEXtoASCII
                                   3671 ;	ECEN4330Lab7.c:954: write(ASCII);
      000DA5 85 82 52         [24] 3672 	mov  _ASCII,dpl
                                   3673 ;	ECEN4330Lab7.c:955: }
      000DA8 02 09 F9         [24] 3674 	ljmp	_write
                                   3675 ;------------------------------------------------------------
                                   3676 ;Allocation info for local variables in function 'RAMwrite'
                                   3677 ;------------------------------------------------------------
                                   3678 ;d                         Allocated with name '_RAMwrite_PARM_2'
                                   3679 ;a                         Allocated to registers r6 r7 
                                   3680 ;ram_address               Allocated to registers 
                                   3681 ;------------------------------------------------------------
                                   3682 ;	ECEN4330Lab7.c:963: void RAMwrite(unsigned int a, unsigned char d){
                                   3683 ;	-----------------------------------------
                                   3684 ;	 function RAMwrite
                                   3685 ;	-----------------------------------------
      000DAB                       3686 _RAMwrite:
      000DAB AE 82            [24] 3687 	mov	r6,dpl
      000DAD AF 83            [24] 3688 	mov	r7,dph
                                   3689 ;	ECEN4330Lab7.c:966: IOM = 0;
                                   3690 ;	assignBit
      000DAF C2 B4            [12] 3691 	clr	_P3_4
                                   3692 ;	ECEN4330Lab7.c:969: ram_address = (unsigned char __xdata*)(a);
      000DB1 8E 82            [24] 3693 	mov	dpl,r6
      000DB3 8F 83            [24] 3694 	mov	dph,r7
                                   3695 ;	ECEN4330Lab7.c:972: *ram_address = d;
      000DB5 E5 08            [12] 3696 	mov	a,_RAMwrite_PARM_2
      000DB7 F0               [24] 3697 	movx	@dptr,a
                                   3698 ;	ECEN4330Lab7.c:973: IOM = 1;
                                   3699 ;	assignBit
      000DB8 D2 B4            [12] 3700 	setb	_P3_4
                                   3701 ;	ECEN4330Lab7.c:974: }
      000DBA 22               [24] 3702 	ret
                                   3703 ;------------------------------------------------------------
                                   3704 ;Allocation info for local variables in function 'testRAM'
                                   3705 ;------------------------------------------------------------
                                   3706 ;d                         Allocated to registers r7 
                                   3707 ;i                         Allocated to registers r5 r6 
                                   3708 ;ram_address               Allocated to registers 
                                   3709 ;------------------------------------------------------------
                                   3710 ;	ECEN4330Lab7.c:982: void testRAM(unsigned char d){
                                   3711 ;	-----------------------------------------
                                   3712 ;	 function testRAM
                                   3713 ;	-----------------------------------------
      000DBB                       3714 _testRAM:
      000DBB AF 82            [24] 3715 	mov	r7,dpl
                                   3716 ;	ECEN4330Lab7.c:986: for (i = __START_RAM__; i<=__END_RAM__; i++) {
      000DBD 7D 00            [12] 3717 	mov	r5,#0x00
      000DBF 7E 00            [12] 3718 	mov	r6,#0x00
      000DC1                       3719 00102$:
                                   3720 ;	ECEN4330Lab7.c:987: IOM = 0;
                                   3721 ;	assignBit
      000DC1 C2 B4            [12] 3722 	clr	_P3_4
                                   3723 ;	ECEN4330Lab7.c:988: ram_address = (unsigned char __xdata*)(i);
      000DC3 8D 82            [24] 3724 	mov	dpl,r5
      000DC5 8E 83            [24] 3725 	mov	dph,r6
                                   3726 ;	ECEN4330Lab7.c:989: *ram_address = d;
      000DC7 EF               [12] 3727 	mov	a,r7
      000DC8 F0               [24] 3728 	movx	@dptr,a
                                   3729 ;	ECEN4330Lab7.c:990: IOM = 1;
                                   3730 ;	assignBit
      000DC9 D2 B4            [12] 3731 	setb	_P3_4
                                   3732 ;	ECEN4330Lab7.c:986: for (i = __START_RAM__; i<=__END_RAM__; i++) {
      000DCB 0D               [12] 3733 	inc	r5
      000DCC BD 00 01         [24] 3734 	cjne	r5,#0x00,00111$
      000DCF 0E               [12] 3735 	inc	r6
      000DD0                       3736 00111$:
      000DD0 C3               [12] 3737 	clr	c
      000DD1 74 FE            [12] 3738 	mov	a,#0xfe
      000DD3 9D               [12] 3739 	subb	a,r5
      000DD4 74 FF            [12] 3740 	mov	a,#0xff
      000DD6 9E               [12] 3741 	subb	a,r6
      000DD7 50 E8            [24] 3742 	jnc	00102$
                                   3743 ;	ECEN4330Lab7.c:993: }
      000DD9 22               [24] 3744 	ret
                                   3745 ;------------------------------------------------------------
                                   3746 ;Allocation info for local variables in function 'RAMread'
                                   3747 ;------------------------------------------------------------
                                   3748 ;a                         Allocated to registers r6 r7 
                                   3749 ;ram_address               Allocated to registers 
                                   3750 ;------------------------------------------------------------
                                   3751 ;	ECEN4330Lab7.c:1001: unsigned char RAMread(unsigned int a){
                                   3752 ;	-----------------------------------------
                                   3753 ;	 function RAMread
                                   3754 ;	-----------------------------------------
      000DDA                       3755 _RAMread:
      000DDA AE 82            [24] 3756 	mov	r6,dpl
      000DDC AF 83            [24] 3757 	mov	r7,dph
                                   3758 ;	ECEN4330Lab7.c:1004: IOM = 0;
                                   3759 ;	assignBit
      000DDE C2 B4            [12] 3760 	clr	_P3_4
                                   3761 ;	ECEN4330Lab7.c:1007: ram_address = (unsigned char __xdata*)(a);
      000DE0 8E 82            [24] 3762 	mov	dpl,r6
      000DE2 8F 83            [24] 3763 	mov	dph,r7
                                   3764 ;	ECEN4330Lab7.c:1010: data = *ram_address;
      000DE4 E0               [24] 3765 	movx	a,@dptr
      000DE5 F5 41            [12] 3766 	mov	_data,a
                                   3767 ;	ECEN4330Lab7.c:1011: IOM = 1;
                                   3768 ;	assignBit
      000DE7 D2 B4            [12] 3769 	setb	_P3_4
                                   3770 ;	ECEN4330Lab7.c:1012: return data;
      000DE9 85 41 82         [24] 3771 	mov	dpl,_data
                                   3772 ;	ECEN4330Lab7.c:1013: }
      000DEC 22               [24] 3773 	ret
                                   3774 ;------------------------------------------------------------
                                   3775 ;Allocation info for local variables in function 'resetLCD'
                                   3776 ;------------------------------------------------------------
                                   3777 ;	ECEN4330Lab7.c:1025: void resetLCD(){
                                   3778 ;	-----------------------------------------
                                   3779 ;	 function resetLCD
                                   3780 ;	-----------------------------------------
      000DED                       3781 _resetLCD:
                                   3782 ;	ECEN4330Lab7.c:1026: setRotation(4);
      000DED 75 82 04         [24] 3783 	mov	dpl,#0x04
      000DF0 12 03 95         [24] 3784 	lcall	_setRotation
                                   3785 ;	ECEN4330Lab7.c:1027: setTextColor(GRAY, BLACK);
      000DF3 E4               [12] 3786 	clr	a
      000DF4 F5 08            [12] 3787 	mov	_setTextColor_PARM_2,a
      000DF6 F5 09            [12] 3788 	mov	(_setTextColor_PARM_2 + 1),a
      000DF8 90 D6 BA         [24] 3789 	mov	dptr,#0xd6ba
      000DFB 12 03 70         [24] 3790 	lcall	_setTextColor
                                   3791 ;	ECEN4330Lab7.c:1028: setTextSize(3);
      000DFE 75 82 03         [24] 3792 	mov	dpl,#0x03
      000E01 12 03 7D         [24] 3793 	lcall	_setTextSize
                                   3794 ;	ECEN4330Lab7.c:1029: fillScreen(BLACK);
      000E04 90 00 00         [24] 3795 	mov	dptr,#0x0000
      000E07 12 07 08         [24] 3796 	lcall	_fillScreen
                                   3797 ;	ECEN4330Lab7.c:1030: setCursor(0, 0);
      000E0A E4               [12] 3798 	clr	a
      000E0B F5 08            [12] 3799 	mov	_setCursor_PARM_2,a
      000E0D F5 09            [12] 3800 	mov	(_setCursor_PARM_2 + 1),a
      000E0F 90 00 00         [24] 3801 	mov	dptr,#0x0000
                                   3802 ;	ECEN4330Lab7.c:1031: }
      000E12 02 03 63         [24] 3803 	ljmp	_setCursor
                                   3804 ;------------------------------------------------------------
                                   3805 ;Allocation info for local variables in function 'invalidInput'
                                   3806 ;------------------------------------------------------------
                                   3807 ;	ECEN4330Lab7.c:1043: void invalidInput(){
                                   3808 ;	-----------------------------------------
                                   3809 ;	 function invalidInput
                                   3810 ;	-----------------------------------------
      000E15                       3811 _invalidInput:
                                   3812 ;	ECEN4330Lab7.c:1044: resetLCD();
      000E15 12 0D ED         [24] 3813 	lcall	_resetLCD
                                   3814 ;	ECEN4330Lab7.c:1045: setTextColor(RED, BLACK);
      000E18 E4               [12] 3815 	clr	a
      000E19 F5 08            [12] 3816 	mov	_setTextColor_PARM_2,a
      000E1B F5 09            [12] 3817 	mov	(_setTextColor_PARM_2 + 1),a
      000E1D 90 F8 00         [24] 3818 	mov	dptr,#0xf800
      000E20 12 03 70         [24] 3819 	lcall	_setTextColor
                                   3820 ;	ECEN4330Lab7.c:1048: LCD_string_write("\n   Invalid\n\n");
      000E23 90 28 B1         [24] 3821 	mov	dptr,#___str_2
      000E26 75 F0 80         [24] 3822 	mov	b,#0x80
      000E29 12 0A 5F         [24] 3823 	lcall	_LCD_string_write
                                   3824 ;	ECEN4330Lab7.c:1049: LCD_string_write("    Input");
      000E2C 90 28 BF         [24] 3825 	mov	dptr,#___str_3
      000E2F 75 F0 80         [24] 3826 	mov	b,#0x80
      000E32 12 0A 5F         [24] 3827 	lcall	_LCD_string_write
                                   3828 ;	ECEN4330Lab7.c:1052: delay(200);
      000E35 90 00 C8         [24] 3829 	mov	dptr,#0x00c8
      000E38 12 00 BF         [24] 3830 	lcall	_delay
                                   3831 ;	ECEN4330Lab7.c:1053: resetLCD();
                                   3832 ;	ECEN4330Lab7.c:1054: }
      000E3B 02 0D ED         [24] 3833 	ljmp	_resetLCD
                                   3834 ;------------------------------------------------------------
                                   3835 ;Allocation info for local variables in function 'inputRead16'
                                   3836 ;------------------------------------------------------------
                                   3837 ;	ECEN4330Lab7.c:1065: void inputRead16(){
                                   3838 ;	-----------------------------------------
                                   3839 ;	 function inputRead16
                                   3840 ;	-----------------------------------------
      000E3E                       3841 _inputRead16:
                                   3842 ;	ECEN4330Lab7.c:1066: input16 = 0x0000;
      000E3E E4               [12] 3843 	clr	a
      000E3F F5 38            [12] 3844 	mov	_input16,a
      000E41 F5 39            [12] 3845 	mov	(_input16 + 1),a
                                   3846 ;	ECEN4330Lab7.c:1068: setTextColor(WHITE, BLACK);
      000E43 F5 08            [12] 3847 	mov	_setTextColor_PARM_2,a
      000E45 F5 09            [12] 3848 	mov	(_setTextColor_PARM_2 + 1),a
      000E47 90 FF FF         [24] 3849 	mov	dptr,#0xffff
      000E4A 12 03 70         [24] 3850 	lcall	_setTextColor
                                   3851 ;	ECEN4330Lab7.c:1071: key = keyDetect();
      000E4D 12 0A 9E         [24] 3852 	lcall	_keyDetect
      000E50 85 82 37         [24] 3853 	mov	_key,dpl
                                   3854 ;	ECEN4330Lab7.c:1072: setTextColor(WHITE, BLACK);
      000E53 E4               [12] 3855 	clr	a
      000E54 F5 08            [12] 3856 	mov	_setTextColor_PARM_2,a
      000E56 F5 09            [12] 3857 	mov	(_setTextColor_PARM_2 + 1),a
      000E58 90 FF FF         [24] 3858 	mov	dptr,#0xffff
      000E5B 12 03 70         [24] 3859 	lcall	_setTextColor
                                   3860 ;	ECEN4330Lab7.c:1073: write(key);
      000E5E 85 37 82         [24] 3861 	mov	dpl,_key
      000E61 12 09 F9         [24] 3862 	lcall	_write
                                   3863 ;	ECEN4330Lab7.c:1074: input16 |= (ASCIItoHEX(key) << 12);
      000E64 85 37 82         [24] 3864 	mov	dpl,_key
      000E67 12 0B B1         [24] 3865 	lcall	_ASCIItoHEX
      000E6A AF 82            [24] 3866 	mov	r7,dpl
      000E6C EF               [12] 3867 	mov	a,r7
      000E6D C4               [12] 3868 	swap	a
      000E6E 54 F0            [12] 3869 	anl	a,#0xf0
      000E70 FE               [12] 3870 	mov	r6,a
      000E71 E4               [12] 3871 	clr	a
      000E72 42 38            [12] 3872 	orl	_input16,a
      000E74 EE               [12] 3873 	mov	a,r6
      000E75 42 39            [12] 3874 	orl	(_input16 + 1),a
                                   3875 ;	ECEN4330Lab7.c:1076: key = keyDetect();
      000E77 12 0A 9E         [24] 3876 	lcall	_keyDetect
      000E7A 85 82 37         [24] 3877 	mov	_key,dpl
                                   3878 ;	ECEN4330Lab7.c:1077: setTextColor(WHITE, BLACK);
      000E7D E4               [12] 3879 	clr	a
      000E7E F5 08            [12] 3880 	mov	_setTextColor_PARM_2,a
      000E80 F5 09            [12] 3881 	mov	(_setTextColor_PARM_2 + 1),a
      000E82 90 FF FF         [24] 3882 	mov	dptr,#0xffff
      000E85 12 03 70         [24] 3883 	lcall	_setTextColor
                                   3884 ;	ECEN4330Lab7.c:1078: write(key);
      000E88 85 37 82         [24] 3885 	mov	dpl,_key
      000E8B 12 09 F9         [24] 3886 	lcall	_write
                                   3887 ;	ECEN4330Lab7.c:1079: input16 |= (ASCIItoHEX(key) << 8);
      000E8E 85 37 82         [24] 3888 	mov	dpl,_key
      000E91 12 0B B1         [24] 3889 	lcall	_ASCIItoHEX
      000E94 AF 82            [24] 3890 	mov	r7,dpl
      000E96 8F 06            [24] 3891 	mov	ar6,r7
      000E98 E4               [12] 3892 	clr	a
      000E99 42 38            [12] 3893 	orl	_input16,a
      000E9B EE               [12] 3894 	mov	a,r6
      000E9C 42 39            [12] 3895 	orl	(_input16 + 1),a
                                   3896 ;	ECEN4330Lab7.c:1081: key = keyDetect();
      000E9E 12 0A 9E         [24] 3897 	lcall	_keyDetect
      000EA1 85 82 37         [24] 3898 	mov	_key,dpl
                                   3899 ;	ECEN4330Lab7.c:1082: setTextColor(WHITE, BLACK);
      000EA4 E4               [12] 3900 	clr	a
      000EA5 F5 08            [12] 3901 	mov	_setTextColor_PARM_2,a
      000EA7 F5 09            [12] 3902 	mov	(_setTextColor_PARM_2 + 1),a
      000EA9 90 FF FF         [24] 3903 	mov	dptr,#0xffff
      000EAC 12 03 70         [24] 3904 	lcall	_setTextColor
                                   3905 ;	ECEN4330Lab7.c:1083: write(key);
      000EAF 85 37 82         [24] 3906 	mov	dpl,_key
      000EB2 12 09 F9         [24] 3907 	lcall	_write
                                   3908 ;	ECEN4330Lab7.c:1084: input16 |= (ASCIItoHEX(key) << 4);
      000EB5 85 37 82         [24] 3909 	mov	dpl,_key
      000EB8 12 0B B1         [24] 3910 	lcall	_ASCIItoHEX
      000EBB AF 82            [24] 3911 	mov	r7,dpl
      000EBD E4               [12] 3912 	clr	a
      000EBE C4               [12] 3913 	swap	a
      000EBF 54 F0            [12] 3914 	anl	a,#0xf0
      000EC1 CF               [12] 3915 	xch	a,r7
      000EC2 C4               [12] 3916 	swap	a
      000EC3 CF               [12] 3917 	xch	a,r7
      000EC4 6F               [12] 3918 	xrl	a,r7
      000EC5 CF               [12] 3919 	xch	a,r7
      000EC6 54 F0            [12] 3920 	anl	a,#0xf0
      000EC8 CF               [12] 3921 	xch	a,r7
      000EC9 6F               [12] 3922 	xrl	a,r7
      000ECA FE               [12] 3923 	mov	r6,a
      000ECB EF               [12] 3924 	mov	a,r7
      000ECC 42 38            [12] 3925 	orl	_input16,a
      000ECE EE               [12] 3926 	mov	a,r6
      000ECF 42 39            [12] 3927 	orl	(_input16 + 1),a
                                   3928 ;	ECEN4330Lab7.c:1086: key = keyDetect();
      000ED1 12 0A 9E         [24] 3929 	lcall	_keyDetect
      000ED4 85 82 37         [24] 3930 	mov	_key,dpl
                                   3931 ;	ECEN4330Lab7.c:1087: setTextColor(WHITE, BLACK);
      000ED7 E4               [12] 3932 	clr	a
      000ED8 F5 08            [12] 3933 	mov	_setTextColor_PARM_2,a
      000EDA F5 09            [12] 3934 	mov	(_setTextColor_PARM_2 + 1),a
      000EDC 90 FF FF         [24] 3935 	mov	dptr,#0xffff
      000EDF 12 03 70         [24] 3936 	lcall	_setTextColor
                                   3937 ;	ECEN4330Lab7.c:1088: write(key);
      000EE2 85 37 82         [24] 3938 	mov	dpl,_key
      000EE5 12 09 F9         [24] 3939 	lcall	_write
                                   3940 ;	ECEN4330Lab7.c:1089: input16 |= ASCIItoHEX(key);
      000EE8 85 37 82         [24] 3941 	mov	dpl,_key
      000EEB 12 0B B1         [24] 3942 	lcall	_ASCIItoHEX
      000EEE AF 82            [24] 3943 	mov	r7,dpl
      000EF0 7E 00            [12] 3944 	mov	r6,#0x00
      000EF2 EF               [12] 3945 	mov	a,r7
      000EF3 42 38            [12] 3946 	orl	_input16,a
      000EF5 EE               [12] 3947 	mov	a,r6
      000EF6 42 39            [12] 3948 	orl	(_input16 + 1),a
                                   3949 ;	ECEN4330Lab7.c:1090: }
      000EF8 22               [24] 3950 	ret
                                   3951 ;------------------------------------------------------------
                                   3952 ;Allocation info for local variables in function 'inputRead8'
                                   3953 ;------------------------------------------------------------
                                   3954 ;	ECEN4330Lab7.c:1100: void inputRead8(){
                                   3955 ;	-----------------------------------------
                                   3956 ;	 function inputRead8
                                   3957 ;	-----------------------------------------
      000EF9                       3958 _inputRead8:
                                   3959 ;	ECEN4330Lab7.c:1101: setTextColor(WHITE, BLACK);
      000EF9 E4               [12] 3960 	clr	a
      000EFA F5 08            [12] 3961 	mov	_setTextColor_PARM_2,a
      000EFC F5 09            [12] 3962 	mov	(_setTextColor_PARM_2 + 1),a
      000EFE 90 FF FF         [24] 3963 	mov	dptr,#0xffff
      000F01 12 03 70         [24] 3964 	lcall	_setTextColor
                                   3965 ;	ECEN4330Lab7.c:1103: input8 = 0x00;
      000F04 75 3A 00         [24] 3966 	mov	_input8,#0x00
                                   3967 ;	ECEN4330Lab7.c:1105: key = keyDetect();
      000F07 12 0A 9E         [24] 3968 	lcall	_keyDetect
      000F0A 85 82 37         [24] 3969 	mov	_key,dpl
                                   3970 ;	ECEN4330Lab7.c:1106: setTextColor(WHITE, BLACK);
      000F0D E4               [12] 3971 	clr	a
      000F0E F5 08            [12] 3972 	mov	_setTextColor_PARM_2,a
      000F10 F5 09            [12] 3973 	mov	(_setTextColor_PARM_2 + 1),a
      000F12 90 FF FF         [24] 3974 	mov	dptr,#0xffff
      000F15 12 03 70         [24] 3975 	lcall	_setTextColor
                                   3976 ;	ECEN4330Lab7.c:1107: write(key);
      000F18 85 37 82         [24] 3977 	mov	dpl,_key
      000F1B 12 09 F9         [24] 3978 	lcall	_write
                                   3979 ;	ECEN4330Lab7.c:1108: input8 |= (ASCIItoHEX(key) << 4);
      000F1E 85 37 82         [24] 3980 	mov	dpl,_key
      000F21 12 0B B1         [24] 3981 	lcall	_ASCIItoHEX
      000F24 E5 82            [12] 3982 	mov	a,dpl
      000F26 C4               [12] 3983 	swap	a
      000F27 54 F0            [12] 3984 	anl	a,#0xf0
      000F29 42 3A            [12] 3985 	orl	_input8,a
                                   3986 ;	ECEN4330Lab7.c:1110: key = keyDetect();
      000F2B 12 0A 9E         [24] 3987 	lcall	_keyDetect
      000F2E 85 82 37         [24] 3988 	mov	_key,dpl
                                   3989 ;	ECEN4330Lab7.c:1111: setTextColor(WHITE, BLACK);
      000F31 E4               [12] 3990 	clr	a
      000F32 F5 08            [12] 3991 	mov	_setTextColor_PARM_2,a
      000F34 F5 09            [12] 3992 	mov	(_setTextColor_PARM_2 + 1),a
      000F36 90 FF FF         [24] 3993 	mov	dptr,#0xffff
      000F39 12 03 70         [24] 3994 	lcall	_setTextColor
                                   3995 ;	ECEN4330Lab7.c:1112: write(key);
      000F3C 85 37 82         [24] 3996 	mov	dpl,_key
      000F3F 12 09 F9         [24] 3997 	lcall	_write
                                   3998 ;	ECEN4330Lab7.c:1113: input8 |= ASCIItoHEX(key);
      000F42 85 37 82         [24] 3999 	mov	dpl,_key
      000F45 12 0B B1         [24] 4000 	lcall	_ASCIItoHEX
      000F48 E5 82            [12] 4001 	mov	a,dpl
      000F4A 42 3A            [12] 4002 	orl	_input8,a
                                   4003 ;	ECEN4330Lab7.c:1114: }
      000F4C 22               [24] 4004 	ret
                                   4005 ;------------------------------------------------------------
                                   4006 ;Allocation info for local variables in function 'inputDataType'
                                   4007 ;------------------------------------------------------------
                                   4008 ;	ECEN4330Lab7.c:1133: void inputDataType(){
                                   4009 ;	-----------------------------------------
                                   4010 ;	 function inputDataType
                                   4011 ;	-----------------------------------------
      000F4D                       4012 _inputDataType:
                                   4013 ;	ECEN4330Lab7.c:1134: validInput = 0;
      000F4D 75 3E 00         [24] 4014 	mov	_validInput,#0x00
                                   4015 ;	ECEN4330Lab7.c:1135: dataType = 0;
      000F50 75 3B 00         [24] 4016 	mov	_dataType,#0x00
                                   4017 ;	ECEN4330Lab7.c:1137: do
      000F53                       4018 00106$:
                                   4019 ;	ECEN4330Lab7.c:1140: resetLCD();
      000F53 12 0D ED         [24] 4020 	lcall	_resetLCD
                                   4021 ;	ECEN4330Lab7.c:1141: setTextColor(WHITE, BLACK);
      000F56 E4               [12] 4022 	clr	a
      000F57 F5 08            [12] 4023 	mov	_setTextColor_PARM_2,a
      000F59 F5 09            [12] 4024 	mov	(_setTextColor_PARM_2 + 1),a
      000F5B 90 FF FF         [24] 4025 	mov	dptr,#0xffff
      000F5E 12 03 70         [24] 4026 	lcall	_setTextColor
                                   4027 ;	ECEN4330Lab7.c:1142: LCD_string_write("\nSelect Data\nType:\n\n");
      000F61 90 28 C9         [24] 4028 	mov	dptr,#___str_4
      000F64 75 F0 80         [24] 4029 	mov	b,#0x80
      000F67 12 0A 5F         [24] 4030 	lcall	_LCD_string_write
                                   4031 ;	ECEN4330Lab7.c:1143: LCD_string_write("(1) Byte\n");
      000F6A 90 28 DE         [24] 4032 	mov	dptr,#___str_5
      000F6D 75 F0 80         [24] 4033 	mov	b,#0x80
      000F70 12 0A 5F         [24] 4034 	lcall	_LCD_string_write
                                   4035 ;	ECEN4330Lab7.c:1144: LCD_string_write("(2) Word\n");
      000F73 90 28 E8         [24] 4036 	mov	dptr,#___str_6
      000F76 75 F0 80         [24] 4037 	mov	b,#0x80
      000F79 12 0A 5F         [24] 4038 	lcall	_LCD_string_write
                                   4039 ;	ECEN4330Lab7.c:1145: LCD_string_write("(3) Double\n    Word\n\n  _");
      000F7C 90 28 F2         [24] 4040 	mov	dptr,#___str_7
      000F7F 75 F0 80         [24] 4041 	mov	b,#0x80
      000F82 12 0A 5F         [24] 4042 	lcall	_LCD_string_write
                                   4043 ;	ECEN4330Lab7.c:1146: cursor_x -= textsize * 6;
      000F85 85 2D 08         [24] 4044 	mov	__mulint_PARM_2,_textsize
      000F88 75 09 00         [24] 4045 	mov	(__mulint_PARM_2 + 1),#0x00
      000F8B 90 00 06         [24] 4046 	mov	dptr,#0x0006
      000F8E 12 23 17         [24] 4047 	lcall	__mulint
      000F91 AE 82            [24] 4048 	mov	r6,dpl
      000F93 AF 83            [24] 4049 	mov	r7,dph
      000F95 E5 29            [12] 4050 	mov	a,_cursor_x
      000F97 C3               [12] 4051 	clr	c
      000F98 9E               [12] 4052 	subb	a,r6
      000F99 F5 29            [12] 4053 	mov	_cursor_x,a
      000F9B E5 2A            [12] 4054 	mov	a,(_cursor_x + 1)
      000F9D 9F               [12] 4055 	subb	a,r7
      000F9E F5 2A            [12] 4056 	mov	(_cursor_x + 1),a
                                   4057 ;	ECEN4330Lab7.c:1147: x = cursor_x;
      000FA0 85 29 5C         [24] 4058 	mov	_x,_cursor_x
                                   4059 ;	ECEN4330Lab7.c:1148: y = cursor_y;
      000FA3 85 2B 5D         [24] 4060 	mov	_y,_cursor_y
                                   4061 ;	ECEN4330Lab7.c:1149: ts = textsize;
      000FA6 85 2D 5E         [24] 4062 	mov	_ts,_textsize
                                   4063 ;	ECEN4330Lab7.c:1152: setTextColor(WHITE, BLACK);
      000FA9 E4               [12] 4064 	clr	a
      000FAA F5 08            [12] 4065 	mov	_setTextColor_PARM_2,a
      000FAC F5 09            [12] 4066 	mov	(_setTextColor_PARM_2 + 1),a
      000FAE 90 FF FF         [24] 4067 	mov	dptr,#0xffff
      000FB1 12 03 70         [24] 4068 	lcall	_setTextColor
                                   4069 ;	ECEN4330Lab7.c:1153: key = keyDetect();
      000FB4 12 0A 9E         [24] 4070 	lcall	_keyDetect
      000FB7 85 82 37         [24] 4071 	mov	_key,dpl
                                   4072 ;	ECEN4330Lab7.c:1154: cursor_x = x;
      000FBA 85 5C 29         [24] 4073 	mov	_cursor_x,_x
      000FBD 75 2A 00         [24] 4074 	mov	(_cursor_x + 1),#0x00
                                   4075 ;	ECEN4330Lab7.c:1155: cursor_y = y;
      000FC0 85 5D 2B         [24] 4076 	mov	_cursor_y,_y
      000FC3 75 2C 00         [24] 4077 	mov	(_cursor_y + 1),#0x00
                                   4078 ;	ECEN4330Lab7.c:1156: textsize = ts;
      000FC6 85 5E 2D         [24] 4079 	mov	_textsize,_ts
                                   4080 ;	ECEN4330Lab7.c:1157: write(key);
      000FC9 85 37 82         [24] 4081 	mov	dpl,_key
      000FCC 12 09 F9         [24] 4082 	lcall	_write
                                   4083 ;	ECEN4330Lab7.c:1159: switch (key)
      000FCF 74 31            [12] 4084 	mov	a,#0x31
      000FD1 B5 37 02         [24] 4085 	cjne	a,_key,00127$
      000FD4 80 0E            [24] 4086 	sjmp	00101$
      000FD6                       4087 00127$:
      000FD6 74 32            [12] 4088 	mov	a,#0x32
      000FD8 B5 37 02         [24] 4089 	cjne	a,_key,00128$
      000FDB 80 0F            [24] 4090 	sjmp	00102$
      000FDD                       4091 00128$:
      000FDD 74 33            [12] 4092 	mov	a,#0x33
                                   4093 ;	ECEN4330Lab7.c:1162: case '1':
      000FDF B5 37 1A         [24] 4094 	cjne	a,_key,00104$
      000FE2 80 10            [24] 4095 	sjmp	00103$
      000FE4                       4096 00101$:
                                   4097 ;	ECEN4330Lab7.c:1163: dataType = 1;
      000FE4 75 3B 01         [24] 4098 	mov	_dataType,#0x01
                                   4099 ;	ECEN4330Lab7.c:1164: validInput = 1;
      000FE7 75 3E 01         [24] 4100 	mov	_validInput,#0x01
                                   4101 ;	ECEN4330Lab7.c:1165: break;
                                   4102 ;	ECEN4330Lab7.c:1168: case '2':
      000FEA 80 16            [24] 4103 	sjmp	00107$
      000FEC                       4104 00102$:
                                   4105 ;	ECEN4330Lab7.c:1169: dataType = 2;
      000FEC 75 3B 02         [24] 4106 	mov	_dataType,#0x02
                                   4107 ;	ECEN4330Lab7.c:1170: validInput = 1;
      000FEF 75 3E 01         [24] 4108 	mov	_validInput,#0x01
                                   4109 ;	ECEN4330Lab7.c:1171: break;
                                   4110 ;	ECEN4330Lab7.c:1174: case '3':
      000FF2 80 0E            [24] 4111 	sjmp	00107$
      000FF4                       4112 00103$:
                                   4113 ;	ECEN4330Lab7.c:1175: dataType = 4;
      000FF4 75 3B 04         [24] 4114 	mov	_dataType,#0x04
                                   4115 ;	ECEN4330Lab7.c:1176: validInput = 1;
      000FF7 75 3E 01         [24] 4116 	mov	_validInput,#0x01
                                   4117 ;	ECEN4330Lab7.c:1177: break;
                                   4118 ;	ECEN4330Lab7.c:1180: default:
      000FFA 80 06            [24] 4119 	sjmp	00107$
      000FFC                       4120 00104$:
                                   4121 ;	ECEN4330Lab7.c:1181: invalidInput();
      000FFC 12 0E 15         [24] 4122 	lcall	_invalidInput
                                   4123 ;	ECEN4330Lab7.c:1182: validInput = 0;
      000FFF 75 3E 00         [24] 4124 	mov	_validInput,#0x00
                                   4125 ;	ECEN4330Lab7.c:1184: }
      001002                       4126 00107$:
                                   4127 ;	ECEN4330Lab7.c:1185: } while (validInput == 0);
      001002 E5 3E            [12] 4128 	mov	a,_validInput
      001004 70 03            [24] 4129 	jnz	00130$
      001006 02 0F 53         [24] 4130 	ljmp	00106$
      001009                       4131 00130$:
                                   4132 ;	ECEN4330Lab7.c:1186: }
      001009 22               [24] 4133 	ret
                                   4134 ;------------------------------------------------------------
                                   4135 ;Allocation info for local variables in function 'inputDataSize'
                                   4136 ;------------------------------------------------------------
                                   4137 ;	ECEN4330Lab7.c:1197: void inputDataSize(){
                                   4138 ;	-----------------------------------------
                                   4139 ;	 function inputDataSize
                                   4140 ;	-----------------------------------------
      00100A                       4141 _inputDataSize:
                                   4142 ;	ECEN4330Lab7.c:1198: validInput = 0;
                                   4143 ;	ECEN4330Lab7.c:1199: dataSize = 0x0000;
      00100A E4               [12] 4144 	clr	a
      00100B F5 3E            [12] 4145 	mov	_validInput,a
      00100D F5 3C            [12] 4146 	mov	_dataSize,a
      00100F F5 3D            [12] 4147 	mov	(_dataSize + 1),a
                                   4148 ;	ECEN4330Lab7.c:1201: do
      001011                       4149 00104$:
                                   4150 ;	ECEN4330Lab7.c:1204: resetLCD();
      001011 12 0D ED         [24] 4151 	lcall	_resetLCD
                                   4152 ;	ECEN4330Lab7.c:1205: LCD_string_write("\nEnter Data\nSize:\n\n  0x____");
      001014 90 29 0B         [24] 4153 	mov	dptr,#___str_8
      001017 75 F0 80         [24] 4154 	mov	b,#0x80
      00101A 12 0A 5F         [24] 4155 	lcall	_LCD_string_write
                                   4156 ;	ECEN4330Lab7.c:1206: cursor_x -= 4 * textsize * 6;
      00101D E5 2D            [12] 4157 	mov	a,_textsize
      00101F 75 F0 18         [24] 4158 	mov	b,#0x18
      001022 A4               [48] 4159 	mul	ab
      001023 FE               [12] 4160 	mov	r6,a
      001024 AF F0            [24] 4161 	mov	r7,b
      001026 E5 29            [12] 4162 	mov	a,_cursor_x
      001028 C3               [12] 4163 	clr	c
      001029 9E               [12] 4164 	subb	a,r6
      00102A F5 29            [12] 4165 	mov	_cursor_x,a
      00102C E5 2A            [12] 4166 	mov	a,(_cursor_x + 1)
      00102E 9F               [12] 4167 	subb	a,r7
      00102F F5 2A            [12] 4168 	mov	(_cursor_x + 1),a
                                   4169 ;	ECEN4330Lab7.c:1207: x = cursor_x;
      001031 85 29 5C         [24] 4170 	mov	_x,_cursor_x
                                   4171 ;	ECEN4330Lab7.c:1208: y = cursor_y;
      001034 85 2B 5D         [24] 4172 	mov	_y,_cursor_y
                                   4173 ;	ECEN4330Lab7.c:1209: ts = textsize;
      001037 85 2D 5E         [24] 4174 	mov	_ts,_textsize
                                   4175 ;	ECEN4330Lab7.c:1211: input16 = 0x0000;
      00103A E4               [12] 4176 	clr	a
      00103B F5 38            [12] 4177 	mov	_input16,a
      00103D F5 39            [12] 4178 	mov	(_input16 + 1),a
                                   4179 ;	ECEN4330Lab7.c:1213: setTextColor(WHITE, BLACK);
      00103F F5 08            [12] 4180 	mov	_setTextColor_PARM_2,a
      001041 F5 09            [12] 4181 	mov	(_setTextColor_PARM_2 + 1),a
      001043 90 FF FF         [24] 4182 	mov	dptr,#0xffff
      001046 12 03 70         [24] 4183 	lcall	_setTextColor
                                   4184 ;	ECEN4330Lab7.c:1216: key = keyDetect();
      001049 12 0A 9E         [24] 4185 	lcall	_keyDetect
      00104C 85 82 37         [24] 4186 	mov	_key,dpl
                                   4187 ;	ECEN4330Lab7.c:1217: cursor_x = x;
      00104F 85 5C 29         [24] 4188 	mov	_cursor_x,_x
      001052 75 2A 00         [24] 4189 	mov	(_cursor_x + 1),#0x00
                                   4190 ;	ECEN4330Lab7.c:1218: cursor_y = y;
      001055 85 5D 2B         [24] 4191 	mov	_cursor_y,_y
      001058 75 2C 00         [24] 4192 	mov	(_cursor_y + 1),#0x00
                                   4193 ;	ECEN4330Lab7.c:1219: textsize = ts;
      00105B 85 5E 2D         [24] 4194 	mov	_textsize,_ts
                                   4195 ;	ECEN4330Lab7.c:1220: write(key);
      00105E 85 37 82         [24] 4196 	mov	dpl,_key
      001061 12 09 F9         [24] 4197 	lcall	_write
                                   4198 ;	ECEN4330Lab7.c:1221: x = cursor_x;
      001064 85 29 5C         [24] 4199 	mov	_x,_cursor_x
                                   4200 ;	ECEN4330Lab7.c:1222: y = cursor_y;
      001067 85 2B 5D         [24] 4201 	mov	_y,_cursor_y
                                   4202 ;	ECEN4330Lab7.c:1223: ts = textsize;
      00106A 85 2D 5E         [24] 4203 	mov	_ts,_textsize
                                   4204 ;	ECEN4330Lab7.c:1224: input16 |= (ASCIItoHEX(key) << 12);
      00106D 85 37 82         [24] 4205 	mov	dpl,_key
      001070 12 0B B1         [24] 4206 	lcall	_ASCIItoHEX
      001073 AF 82            [24] 4207 	mov	r7,dpl
      001075 EF               [12] 4208 	mov	a,r7
      001076 C4               [12] 4209 	swap	a
      001077 54 F0            [12] 4210 	anl	a,#0xf0
      001079 FE               [12] 4211 	mov	r6,a
      00107A E4               [12] 4212 	clr	a
      00107B 42 38            [12] 4213 	orl	_input16,a
      00107D EE               [12] 4214 	mov	a,r6
      00107E 42 39            [12] 4215 	orl	(_input16 + 1),a
                                   4216 ;	ECEN4330Lab7.c:1226: key = keyDetect();
      001080 12 0A 9E         [24] 4217 	lcall	_keyDetect
      001083 85 82 37         [24] 4218 	mov	_key,dpl
                                   4219 ;	ECEN4330Lab7.c:1227: cursor_x = x;
      001086 85 5C 29         [24] 4220 	mov	_cursor_x,_x
      001089 75 2A 00         [24] 4221 	mov	(_cursor_x + 1),#0x00
                                   4222 ;	ECEN4330Lab7.c:1228: cursor_y = y;
      00108C 85 5D 2B         [24] 4223 	mov	_cursor_y,_y
      00108F 75 2C 00         [24] 4224 	mov	(_cursor_y + 1),#0x00
                                   4225 ;	ECEN4330Lab7.c:1229: textsize = ts;
      001092 85 5E 2D         [24] 4226 	mov	_textsize,_ts
                                   4227 ;	ECEN4330Lab7.c:1230: write(key);
      001095 85 37 82         [24] 4228 	mov	dpl,_key
      001098 12 09 F9         [24] 4229 	lcall	_write
                                   4230 ;	ECEN4330Lab7.c:1231: x = cursor_x;
      00109B 85 29 5C         [24] 4231 	mov	_x,_cursor_x
                                   4232 ;	ECEN4330Lab7.c:1232: y = cursor_y;
      00109E 85 2B 5D         [24] 4233 	mov	_y,_cursor_y
                                   4234 ;	ECEN4330Lab7.c:1233: ts = textsize;
      0010A1 85 2D 5E         [24] 4235 	mov	_ts,_textsize
                                   4236 ;	ECEN4330Lab7.c:1234: input16 |= (ASCIItoHEX(key) << 8);
      0010A4 85 37 82         [24] 4237 	mov	dpl,_key
      0010A7 12 0B B1         [24] 4238 	lcall	_ASCIItoHEX
      0010AA AF 82            [24] 4239 	mov	r7,dpl
      0010AC 8F 06            [24] 4240 	mov	ar6,r7
      0010AE E4               [12] 4241 	clr	a
      0010AF 42 38            [12] 4242 	orl	_input16,a
      0010B1 EE               [12] 4243 	mov	a,r6
      0010B2 42 39            [12] 4244 	orl	(_input16 + 1),a
                                   4245 ;	ECEN4330Lab7.c:1236: key = keyDetect();
      0010B4 12 0A 9E         [24] 4246 	lcall	_keyDetect
      0010B7 85 82 37         [24] 4247 	mov	_key,dpl
                                   4248 ;	ECEN4330Lab7.c:1237: cursor_x = x;
      0010BA 85 5C 29         [24] 4249 	mov	_cursor_x,_x
      0010BD 75 2A 00         [24] 4250 	mov	(_cursor_x + 1),#0x00
                                   4251 ;	ECEN4330Lab7.c:1238: cursor_y = y;
      0010C0 85 5D 2B         [24] 4252 	mov	_cursor_y,_y
      0010C3 75 2C 00         [24] 4253 	mov	(_cursor_y + 1),#0x00
                                   4254 ;	ECEN4330Lab7.c:1239: textsize = ts;
      0010C6 85 5E 2D         [24] 4255 	mov	_textsize,_ts
                                   4256 ;	ECEN4330Lab7.c:1240: write(key);
      0010C9 85 37 82         [24] 4257 	mov	dpl,_key
      0010CC 12 09 F9         [24] 4258 	lcall	_write
                                   4259 ;	ECEN4330Lab7.c:1241: x = cursor_x;
      0010CF 85 29 5C         [24] 4260 	mov	_x,_cursor_x
                                   4261 ;	ECEN4330Lab7.c:1242: y = cursor_y;
      0010D2 85 2B 5D         [24] 4262 	mov	_y,_cursor_y
                                   4263 ;	ECEN4330Lab7.c:1243: ts = textsize;
      0010D5 85 2D 5E         [24] 4264 	mov	_ts,_textsize
                                   4265 ;	ECEN4330Lab7.c:1244: input16 |= (ASCIItoHEX(key) << 4);
      0010D8 85 37 82         [24] 4266 	mov	dpl,_key
      0010DB 12 0B B1         [24] 4267 	lcall	_ASCIItoHEX
      0010DE AF 82            [24] 4268 	mov	r7,dpl
      0010E0 E4               [12] 4269 	clr	a
      0010E1 C4               [12] 4270 	swap	a
      0010E2 54 F0            [12] 4271 	anl	a,#0xf0
      0010E4 CF               [12] 4272 	xch	a,r7
      0010E5 C4               [12] 4273 	swap	a
      0010E6 CF               [12] 4274 	xch	a,r7
      0010E7 6F               [12] 4275 	xrl	a,r7
      0010E8 CF               [12] 4276 	xch	a,r7
      0010E9 54 F0            [12] 4277 	anl	a,#0xf0
      0010EB CF               [12] 4278 	xch	a,r7
      0010EC 6F               [12] 4279 	xrl	a,r7
      0010ED FE               [12] 4280 	mov	r6,a
      0010EE EF               [12] 4281 	mov	a,r7
      0010EF 42 38            [12] 4282 	orl	_input16,a
      0010F1 EE               [12] 4283 	mov	a,r6
      0010F2 42 39            [12] 4284 	orl	(_input16 + 1),a
                                   4285 ;	ECEN4330Lab7.c:1246: key = keyDetect();
      0010F4 12 0A 9E         [24] 4286 	lcall	_keyDetect
      0010F7 85 82 37         [24] 4287 	mov	_key,dpl
                                   4288 ;	ECEN4330Lab7.c:1247: cursor_x = x;
      0010FA 85 5C 29         [24] 4289 	mov	_cursor_x,_x
      0010FD 75 2A 00         [24] 4290 	mov	(_cursor_x + 1),#0x00
                                   4291 ;	ECEN4330Lab7.c:1248: cursor_y = y;
      001100 85 5D 2B         [24] 4292 	mov	_cursor_y,_y
      001103 75 2C 00         [24] 4293 	mov	(_cursor_y + 1),#0x00
                                   4294 ;	ECEN4330Lab7.c:1249: textsize = ts;
      001106 85 5E 2D         [24] 4295 	mov	_textsize,_ts
                                   4296 ;	ECEN4330Lab7.c:1250: write(key);
      001109 85 37 82         [24] 4297 	mov	dpl,_key
      00110C 12 09 F9         [24] 4298 	lcall	_write
                                   4299 ;	ECEN4330Lab7.c:1251: x = cursor_x;
      00110F 85 29 5C         [24] 4300 	mov	_x,_cursor_x
                                   4301 ;	ECEN4330Lab7.c:1252: y = cursor_y;
      001112 85 2B 5D         [24] 4302 	mov	_y,_cursor_y
                                   4303 ;	ECEN4330Lab7.c:1253: ts = textsize;
      001115 85 2D 5E         [24] 4304 	mov	_ts,_textsize
                                   4305 ;	ECEN4330Lab7.c:1254: input16 |= ASCIItoHEX(key);
      001118 85 37 82         [24] 4306 	mov	dpl,_key
      00111B 12 0B B1         [24] 4307 	lcall	_ASCIItoHEX
      00111E AF 82            [24] 4308 	mov	r7,dpl
      001120 7E 00            [12] 4309 	mov	r6,#0x00
      001122 EF               [12] 4310 	mov	a,r7
      001123 42 38            [12] 4311 	orl	_input16,a
      001125 EE               [12] 4312 	mov	a,r6
      001126 42 39            [12] 4313 	orl	(_input16 + 1),a
                                   4314 ;	ECEN4330Lab7.c:1255: dataSize = input16;
      001128 85 38 3C         [24] 4315 	mov	_dataSize,_input16
      00112B 85 39 3D         [24] 4316 	mov	(_dataSize + 1),(_input16 + 1)
                                   4317 ;	ECEN4330Lab7.c:1258: if(dataSize == 0x0000){
      00112E E5 3C            [12] 4318 	mov	a,_dataSize
      001130 45 3D            [12] 4319 	orl	a,(_dataSize + 1)
      001132 70 09            [24] 4320 	jnz	00102$
                                   4321 ;	ECEN4330Lab7.c:1259: invalidInput();
      001134 12 0E 15         [24] 4322 	lcall	_invalidInput
                                   4323 ;	ECEN4330Lab7.c:1260: validInput = 0;
      001137 75 3E 00         [24] 4324 	mov	_validInput,#0x00
      00113A 02 10 11         [24] 4325 	ljmp	00104$
      00113D                       4326 00102$:
                                   4327 ;	ECEN4330Lab7.c:1263: validInput = 1;
      00113D 75 3E 01         [24] 4328 	mov	_validInput,#0x01
                                   4329 ;	ECEN4330Lab7.c:1265: } while (validInput == 0);
                                   4330 ;	ECEN4330Lab7.c:1266: }
      001140 22               [24] 4331 	ret
                                   4332 ;------------------------------------------------------------
                                   4333 ;Allocation info for local variables in function 'RAM_CHECK'
                                   4334 ;------------------------------------------------------------
                                   4335 ;i                         Allocated to registers r6 r7 
                                   4336 ;------------------------------------------------------------
                                   4337 ;	ECEN4330Lab7.c:1277: void RAM_CHECK(){
                                   4338 ;	-----------------------------------------
                                   4339 ;	 function RAM_CHECK
                                   4340 ;	-----------------------------------------
      001141                       4341 _RAM_CHECK:
                                   4342 ;	ECEN4330Lab7.c:1279: data = 0;
      001141 75 41 00         [24] 4343 	mov	_data,#0x00
                                   4344 ;	ECEN4330Lab7.c:1280: dataEnd = 0;
      001144 75 3F 00         [24] 4345 	mov	_dataEnd,#0x00
                                   4346 ;	ECEN4330Lab7.c:1283: resetLCD();
      001147 12 0D ED         [24] 4347 	lcall	_resetLCD
                                   4348 ;	ECEN4330Lab7.c:1284: LCD_string_write("\nWriting 0x55\nto all\nexternal RAM\nlocations.\n\n");
      00114A 90 29 27         [24] 4349 	mov	dptr,#___str_9
      00114D 75 F0 80         [24] 4350 	mov	b,#0x80
      001150 12 0A 5F         [24] 4351 	lcall	_LCD_string_write
                                   4352 ;	ECEN4330Lab7.c:1285: testRAM(RAMcheckVal1);
      001153 75 82 55         [24] 4353 	mov	dpl,#0x55
      001156 12 0D BB         [24] 4354 	lcall	_testRAM
                                   4355 ;	ECEN4330Lab7.c:1286: RAMwrite(0xFFFF, RAMcheckVal1);
      001159 75 08 55         [24] 4356 	mov	_RAMwrite_PARM_2,#0x55
      00115C 90 FF FF         [24] 4357 	mov	dptr,#0xffff
      00115F 12 0D AB         [24] 4358 	lcall	_RAMwrite
                                   4359 ;	ECEN4330Lab7.c:1288: setTextColor(GREEN, BLACK);
      001162 E4               [12] 4360 	clr	a
      001163 F5 08            [12] 4361 	mov	_setTextColor_PARM_2,a
      001165 F5 09            [12] 4362 	mov	(_setTextColor_PARM_2 + 1),a
      001167 90 07 E0         [24] 4363 	mov	dptr,#0x07e0
      00116A 12 03 70         [24] 4364 	lcall	_setTextColor
                                   4365 ;	ECEN4330Lab7.c:1289: LCD_string_write("Write\ncomplete.\n");
      00116D 90 29 56         [24] 4366 	mov	dptr,#___str_10
      001170 75 F0 80         [24] 4367 	mov	b,#0x80
      001173 12 0A 5F         [24] 4368 	lcall	_LCD_string_write
                                   4369 ;	ECEN4330Lab7.c:1290: delay(200);
      001176 90 00 C8         [24] 4370 	mov	dptr,#0x00c8
      001179 12 00 BF         [24] 4371 	lcall	_delay
                                   4372 ;	ECEN4330Lab7.c:1293: resetLCD();
      00117C 12 0D ED         [24] 4373 	lcall	_resetLCD
                                   4374 ;	ECEN4330Lab7.c:1294: LCD_string_write("\nVerifying all\nRAM locations\nequal 0x55.\n\n");
      00117F 90 29 67         [24] 4375 	mov	dptr,#___str_11
      001182 75 F0 80         [24] 4376 	mov	b,#0x80
      001185 12 0A 5F         [24] 4377 	lcall	_LCD_string_write
                                   4378 ;	ECEN4330Lab7.c:1296: do
      001188 7E 00            [12] 4379 	mov	r6,#0x00
      00118A 7F 00            [12] 4380 	mov	r7,#0x00
      00118C                       4381 00102$:
                                   4382 ;	ECEN4330Lab7.c:1298: data = RAMread(i);
      00118C 8E 82            [24] 4383 	mov	dpl,r6
      00118E 8F 83            [24] 4384 	mov	dph,r7
      001190 C0 07            [24] 4385 	push	ar7
      001192 C0 06            [24] 4386 	push	ar6
      001194 12 0D DA         [24] 4387 	lcall	_RAMread
      001197 85 82 41         [24] 4388 	mov	_data,dpl
      00119A D0 06            [24] 4389 	pop	ar6
      00119C D0 07            [24] 4390 	pop	ar7
                                   4391 ;	ECEN4330Lab7.c:1299: i++;
      00119E 0E               [12] 4392 	inc	r6
      00119F BE 00 01         [24] 4393 	cjne	r6,#0x00,00163$
      0011A2 0F               [12] 4394 	inc	r7
      0011A3                       4395 00163$:
                                   4396 ;	ECEN4330Lab7.c:1300: } while (data == RAMcheckVal1 && i <= __END_RAM__);
      0011A3 74 55            [12] 4397 	mov	a,#0x55
      0011A5 B5 41 04         [24] 4398 	cjne	a,_data,00164$
      0011A8 74 01            [12] 4399 	mov	a,#0x01
      0011AA 80 01            [24] 4400 	sjmp	00165$
      0011AC                       4401 00164$:
      0011AC E4               [12] 4402 	clr	a
      0011AD                       4403 00165$:
      0011AD FD               [12] 4404 	mov	r5,a
      0011AE 60 09            [24] 4405 	jz	00129$
      0011B0 C3               [12] 4406 	clr	c
      0011B1 74 FE            [12] 4407 	mov	a,#0xfe
      0011B3 9E               [12] 4408 	subb	a,r6
      0011B4 74 FF            [12] 4409 	mov	a,#0xff
      0011B6 9F               [12] 4410 	subb	a,r7
      0011B7 50 D3            [24] 4411 	jnc	00102$
      0011B9                       4412 00129$:
                                   4413 ;	ECEN4330Lab7.c:1301: if(data == RAMcheckVal1){
      0011B9 ED               [12] 4414 	mov	a,r5
      0011BA 60 11            [24] 4415 	jz	00106$
                                   4416 ;	ECEN4330Lab7.c:1302: data = RAMread(0xFFFF);
      0011BC 90 FF FF         [24] 4417 	mov	dptr,#0xffff
      0011BF C0 07            [24] 4418 	push	ar7
      0011C1 C0 06            [24] 4419 	push	ar6
      0011C3 12 0D DA         [24] 4420 	lcall	_RAMread
      0011C6 85 82 41         [24] 4421 	mov	_data,dpl
      0011C9 D0 06            [24] 4422 	pop	ar6
      0011CB D0 07            [24] 4423 	pop	ar7
      0011CD                       4424 00106$:
                                   4425 ;	ECEN4330Lab7.c:1306: if(data != RAMcheckVal1){
      0011CD 74 55            [12] 4426 	mov	a,#0x55
      0011CF B5 41 02         [24] 4427 	cjne	a,_data,00169$
      0011D2 80 61            [24] 4428 	sjmp	00117$
      0011D4                       4429 00169$:
                                   4430 ;	ECEN4330Lab7.c:1307: setTextColor(RED, BLACK);
      0011D4 E4               [12] 4431 	clr	a
      0011D5 F5 08            [12] 4432 	mov	_setTextColor_PARM_2,a
      0011D7 F5 09            [12] 4433 	mov	(_setTextColor_PARM_2 + 1),a
      0011D9 90 F8 00         [24] 4434 	mov	dptr,#0xf800
      0011DC C0 07            [24] 4435 	push	ar7
      0011DE C0 06            [24] 4436 	push	ar6
      0011E0 12 03 70         [24] 4437 	lcall	_setTextColor
                                   4438 ;	ECEN4330Lab7.c:1308: LCD_string_write("1st RAM check\nunsuccessful.\n\n");
      0011E3 90 29 92         [24] 4439 	mov	dptr,#___str_12
      0011E6 75 F0 80         [24] 4440 	mov	b,#0x80
      0011E9 12 0A 5F         [24] 4441 	lcall	_LCD_string_write
                                   4442 ;	ECEN4330Lab7.c:1309: delay(100);
      0011EC 90 00 64         [24] 4443 	mov	dptr,#0x0064
      0011EF 12 00 BF         [24] 4444 	lcall	_delay
                                   4445 ;	ECEN4330Lab7.c:1311: LCD_string_write("Error at:\n");
      0011F2 90 29 B0         [24] 4446 	mov	dptr,#___str_13
      0011F5 75 F0 80         [24] 4447 	mov	b,#0x80
      0011F8 12 0A 5F         [24] 4448 	lcall	_LCD_string_write
      0011FB D0 06            [24] 4449 	pop	ar6
      0011FD D0 07            [24] 4450 	pop	ar7
                                   4451 ;	ECEN4330Lab7.c:1312: HEXtoASCII_16write(i - 1);
      0011FF EE               [12] 4452 	mov	a,r6
      001200 24 FF            [12] 4453 	add	a,#0xff
      001202 F5 82            [12] 4454 	mov	dpl,a
      001204 EF               [12] 4455 	mov	a,r7
      001205 34 FF            [12] 4456 	addc	a,#0xff
      001207 F5 83            [12] 4457 	mov	dph,a
      001209 12 0D 06         [24] 4458 	lcall	_HEXtoASCII_16write
                                   4459 ;	ECEN4330Lab7.c:1313: LCD_string_write(": 0x");
      00120C 90 29 BB         [24] 4460 	mov	dptr,#___str_14
      00120F 75 F0 80         [24] 4461 	mov	b,#0x80
      001212 12 0A 5F         [24] 4462 	lcall	_LCD_string_write
                                   4463 ;	ECEN4330Lab7.c:1314: HEXtoASCII_8write(data);
      001215 85 41 82         [24] 4464 	mov	dpl,_data
      001218 12 0C C9         [24] 4465 	lcall	_HEXtoASCII_8write
                                   4466 ;	ECEN4330Lab7.c:1316: setTextColor(WHITE, BLACK);
      00121B E4               [12] 4467 	clr	a
      00121C F5 08            [12] 4468 	mov	_setTextColor_PARM_2,a
      00121E F5 09            [12] 4469 	mov	(_setTextColor_PARM_2 + 1),a
      001220 90 FF FF         [24] 4470 	mov	dptr,#0xffff
      001223 12 03 70         [24] 4471 	lcall	_setTextColor
                                   4472 ;	ECEN4330Lab7.c:1317: LCD_string_write("Returning to\nmain menu.");
      001226 90 29 C0         [24] 4473 	mov	dptr,#___str_15
      001229 75 F0 80         [24] 4474 	mov	b,#0x80
      00122C 12 0A 5F         [24] 4475 	lcall	_LCD_string_write
                                   4476 ;	ECEN4330Lab7.c:1318: delay(200);
      00122F 90 00 C8         [24] 4477 	mov	dptr,#0x00c8
      001232 02 00 BF         [24] 4478 	ljmp	_delay
      001235                       4479 00117$:
                                   4480 ;	ECEN4330Lab7.c:1323: setTextColor(GREEN, BLACK);
      001235 E4               [12] 4481 	clr	a
      001236 F5 08            [12] 4482 	mov	_setTextColor_PARM_2,a
      001238 F5 09            [12] 4483 	mov	(_setTextColor_PARM_2 + 1),a
      00123A 90 07 E0         [24] 4484 	mov	dptr,#0x07e0
      00123D 12 03 70         [24] 4485 	lcall	_setTextColor
                                   4486 ;	ECEN4330Lab7.c:1324: LCD_string_write("1st RAM check\nsuccessful.\n\n");
      001240 90 29 D8         [24] 4487 	mov	dptr,#___str_16
      001243 75 F0 80         [24] 4488 	mov	b,#0x80
      001246 12 0A 5F         [24] 4489 	lcall	_LCD_string_write
                                   4490 ;	ECEN4330Lab7.c:1325: delay(200);
      001249 90 00 C8         [24] 4491 	mov	dptr,#0x00c8
      00124C 12 00 BF         [24] 4492 	lcall	_delay
                                   4493 ;	ECEN4330Lab7.c:1327: resetLCD();
      00124F 12 0D ED         [24] 4494 	lcall	_resetLCD
                                   4495 ;	ECEN4330Lab7.c:1328: LCD_string_write("\nWriting 0xAA\nto all\nexternal RAM\nlocations.\n\n");
      001252 90 29 F4         [24] 4496 	mov	dptr,#___str_17
      001255 75 F0 80         [24] 4497 	mov	b,#0x80
      001258 12 0A 5F         [24] 4498 	lcall	_LCD_string_write
                                   4499 ;	ECEN4330Lab7.c:1329: testRAM(RAMcheckVal2);
      00125B 75 82 AA         [24] 4500 	mov	dpl,#0xaa
      00125E 12 0D BB         [24] 4501 	lcall	_testRAM
                                   4502 ;	ECEN4330Lab7.c:1330: RAMwrite(0xFFFF, RAMcheckVal2);
      001261 75 08 AA         [24] 4503 	mov	_RAMwrite_PARM_2,#0xaa
      001264 90 FF FF         [24] 4504 	mov	dptr,#0xffff
      001267 12 0D AB         [24] 4505 	lcall	_RAMwrite
                                   4506 ;	ECEN4330Lab7.c:1331: setTextColor(GREEN, BLACK);
      00126A E4               [12] 4507 	clr	a
      00126B F5 08            [12] 4508 	mov	_setTextColor_PARM_2,a
      00126D F5 09            [12] 4509 	mov	(_setTextColor_PARM_2 + 1),a
      00126F 90 07 E0         [24] 4510 	mov	dptr,#0x07e0
      001272 12 03 70         [24] 4511 	lcall	_setTextColor
                                   4512 ;	ECEN4330Lab7.c:1332: LCD_string_write("Write\ncomplete.\n");
      001275 90 29 56         [24] 4513 	mov	dptr,#___str_10
      001278 75 F0 80         [24] 4514 	mov	b,#0x80
      00127B 12 0A 5F         [24] 4515 	lcall	_LCD_string_write
                                   4516 ;	ECEN4330Lab7.c:1333: delay(200);
      00127E 90 00 C8         [24] 4517 	mov	dptr,#0x00c8
      001281 12 00 BF         [24] 4518 	lcall	_delay
                                   4519 ;	ECEN4330Lab7.c:1336: resetLCD();
      001284 12 0D ED         [24] 4520 	lcall	_resetLCD
                                   4521 ;	ECEN4330Lab7.c:1337: LCD_string_write("\nVerifying all\nRAM locations\nequal 0xAA.\n\n");
      001287 90 2A 23         [24] 4522 	mov	dptr,#___str_18
      00128A 75 F0 80         [24] 4523 	mov	b,#0x80
      00128D 12 0A 5F         [24] 4524 	lcall	_LCD_string_write
                                   4525 ;	ECEN4330Lab7.c:1339: do
      001290 7E 00            [12] 4526 	mov	r6,#0x00
      001292 7F 00            [12] 4527 	mov	r7,#0x00
      001294                       4528 00108$:
                                   4529 ;	ECEN4330Lab7.c:1341: data = RAMread(i);
      001294 8E 82            [24] 4530 	mov	dpl,r6
      001296 8F 83            [24] 4531 	mov	dph,r7
      001298 C0 07            [24] 4532 	push	ar7
      00129A C0 06            [24] 4533 	push	ar6
      00129C 12 0D DA         [24] 4534 	lcall	_RAMread
      00129F 85 82 41         [24] 4535 	mov	_data,dpl
      0012A2 D0 06            [24] 4536 	pop	ar6
      0012A4 D0 07            [24] 4537 	pop	ar7
                                   4538 ;	ECEN4330Lab7.c:1342: i++;
      0012A6 0E               [12] 4539 	inc	r6
      0012A7 BE 00 01         [24] 4540 	cjne	r6,#0x00,00170$
      0012AA 0F               [12] 4541 	inc	r7
      0012AB                       4542 00170$:
                                   4543 ;	ECEN4330Lab7.c:1343: } while (data == RAMcheckVal2 && i <= __END_RAM__);
      0012AB 74 AA            [12] 4544 	mov	a,#0xaa
      0012AD B5 41 04         [24] 4545 	cjne	a,_data,00171$
      0012B0 74 01            [12] 4546 	mov	a,#0x01
      0012B2 80 01            [24] 4547 	sjmp	00172$
      0012B4                       4548 00171$:
      0012B4 E4               [12] 4549 	clr	a
      0012B5                       4550 00172$:
      0012B5 FD               [12] 4551 	mov	r5,a
      0012B6 60 09            [24] 4552 	jz	00130$
      0012B8 C3               [12] 4553 	clr	c
      0012B9 74 FE            [12] 4554 	mov	a,#0xfe
      0012BB 9E               [12] 4555 	subb	a,r6
      0012BC 74 FF            [12] 4556 	mov	a,#0xff
      0012BE 9F               [12] 4557 	subb	a,r7
      0012BF 50 D3            [24] 4558 	jnc	00108$
      0012C1                       4559 00130$:
                                   4560 ;	ECEN4330Lab7.c:1344: if(data == RAMcheckVal2){
      0012C1 ED               [12] 4561 	mov	a,r5
      0012C2 60 11            [24] 4562 	jz	00112$
                                   4563 ;	ECEN4330Lab7.c:1345: data = RAMread(0xFFFF);
      0012C4 90 FF FF         [24] 4564 	mov	dptr,#0xffff
      0012C7 C0 07            [24] 4565 	push	ar7
      0012C9 C0 06            [24] 4566 	push	ar6
      0012CB 12 0D DA         [24] 4567 	lcall	_RAMread
      0012CE 85 82 41         [24] 4568 	mov	_data,dpl
      0012D1 D0 06            [24] 4569 	pop	ar6
      0012D3 D0 07            [24] 4570 	pop	ar7
      0012D5                       4571 00112$:
                                   4572 ;	ECEN4330Lab7.c:1348: if(data != RAMcheckVal2){
      0012D5 74 AA            [12] 4573 	mov	a,#0xaa
      0012D7 B5 41 02         [24] 4574 	cjne	a,_data,00176$
      0012DA 80 61            [24] 4575 	sjmp	00114$
      0012DC                       4576 00176$:
                                   4577 ;	ECEN4330Lab7.c:1349: setTextColor(RED, BLACK);
      0012DC E4               [12] 4578 	clr	a
      0012DD F5 08            [12] 4579 	mov	_setTextColor_PARM_2,a
      0012DF F5 09            [12] 4580 	mov	(_setTextColor_PARM_2 + 1),a
      0012E1 90 F8 00         [24] 4581 	mov	dptr,#0xf800
      0012E4 C0 07            [24] 4582 	push	ar7
      0012E6 C0 06            [24] 4583 	push	ar6
      0012E8 12 03 70         [24] 4584 	lcall	_setTextColor
                                   4585 ;	ECEN4330Lab7.c:1350: LCD_string_write("2nd RAM check\nunsuccessful.\n\n");
      0012EB 90 2A 4E         [24] 4586 	mov	dptr,#___str_19
      0012EE 75 F0 80         [24] 4587 	mov	b,#0x80
      0012F1 12 0A 5F         [24] 4588 	lcall	_LCD_string_write
                                   4589 ;	ECEN4330Lab7.c:1351: delay(100);
      0012F4 90 00 64         [24] 4590 	mov	dptr,#0x0064
      0012F7 12 00 BF         [24] 4591 	lcall	_delay
                                   4592 ;	ECEN4330Lab7.c:1353: LCD_string_write("Error at:\n");
      0012FA 90 29 B0         [24] 4593 	mov	dptr,#___str_13
      0012FD 75 F0 80         [24] 4594 	mov	b,#0x80
      001300 12 0A 5F         [24] 4595 	lcall	_LCD_string_write
      001303 D0 06            [24] 4596 	pop	ar6
      001305 D0 07            [24] 4597 	pop	ar7
                                   4598 ;	ECEN4330Lab7.c:1354: HEXtoASCII_16write(i - 1);
      001307 EE               [12] 4599 	mov	a,r6
      001308 24 FF            [12] 4600 	add	a,#0xff
      00130A F5 82            [12] 4601 	mov	dpl,a
      00130C EF               [12] 4602 	mov	a,r7
      00130D 34 FF            [12] 4603 	addc	a,#0xff
      00130F F5 83            [12] 4604 	mov	dph,a
      001311 12 0D 06         [24] 4605 	lcall	_HEXtoASCII_16write
                                   4606 ;	ECEN4330Lab7.c:1355: LCD_string_write(": 0x");
      001314 90 29 BB         [24] 4607 	mov	dptr,#___str_14
      001317 75 F0 80         [24] 4608 	mov	b,#0x80
      00131A 12 0A 5F         [24] 4609 	lcall	_LCD_string_write
                                   4610 ;	ECEN4330Lab7.c:1356: HEXtoASCII_8write(data);
      00131D 85 41 82         [24] 4611 	mov	dpl,_data
      001320 12 0C C9         [24] 4612 	lcall	_HEXtoASCII_8write
                                   4613 ;	ECEN4330Lab7.c:1358: setTextColor(WHITE, BLACK);
      001323 E4               [12] 4614 	clr	a
      001324 F5 08            [12] 4615 	mov	_setTextColor_PARM_2,a
      001326 F5 09            [12] 4616 	mov	(_setTextColor_PARM_2 + 1),a
      001328 90 FF FF         [24] 4617 	mov	dptr,#0xffff
      00132B 12 03 70         [24] 4618 	lcall	_setTextColor
                                   4619 ;	ECEN4330Lab7.c:1359: LCD_string_write("Returning to\nmain menu.");
      00132E 90 29 C0         [24] 4620 	mov	dptr,#___str_15
      001331 75 F0 80         [24] 4621 	mov	b,#0x80
      001334 12 0A 5F         [24] 4622 	lcall	_LCD_string_write
                                   4623 ;	ECEN4330Lab7.c:1360: delay(100);
      001337 90 00 64         [24] 4624 	mov	dptr,#0x0064
      00133A 02 00 BF         [24] 4625 	ljmp	_delay
      00133D                       4626 00114$:
                                   4627 ;	ECEN4330Lab7.c:1365: setTextColor(GREEN, BLACK);
      00133D E4               [12] 4628 	clr	a
      00133E F5 08            [12] 4629 	mov	_setTextColor_PARM_2,a
      001340 F5 09            [12] 4630 	mov	(_setTextColor_PARM_2 + 1),a
      001342 90 07 E0         [24] 4631 	mov	dptr,#0x07e0
      001345 12 03 70         [24] 4632 	lcall	_setTextColor
                                   4633 ;	ECEN4330Lab7.c:1366: LCD_string_write("2nd RAM check\nsuccessful.\n\n");
      001348 90 2A 6C         [24] 4634 	mov	dptr,#___str_20
      00134B 75 F0 80         [24] 4635 	mov	b,#0x80
      00134E 12 0A 5F         [24] 4636 	lcall	_LCD_string_write
                                   4637 ;	ECEN4330Lab7.c:1367: LCD_string_write("RAM check\ncomplete.\n\n");
      001351 90 2A 88         [24] 4638 	mov	dptr,#___str_21
      001354 75 F0 80         [24] 4639 	mov	b,#0x80
      001357 12 0A 5F         [24] 4640 	lcall	_LCD_string_write
                                   4641 ;	ECEN4330Lab7.c:1368: delay(100);
      00135A 90 00 64         [24] 4642 	mov	dptr,#0x0064
      00135D 12 00 BF         [24] 4643 	lcall	_delay
                                   4644 ;	ECEN4330Lab7.c:1369: setTextColor(WHITE, BLACK);
      001360 E4               [12] 4645 	clr	a
      001361 F5 08            [12] 4646 	mov	_setTextColor_PARM_2,a
      001363 F5 09            [12] 4647 	mov	(_setTextColor_PARM_2 + 1),a
      001365 90 FF FF         [24] 4648 	mov	dptr,#0xffff
      001368 12 03 70         [24] 4649 	lcall	_setTextColor
                                   4650 ;	ECEN4330Lab7.c:1370: LCD_string_write("Returning to\nmain menu.");
      00136B 90 29 C0         [24] 4651 	mov	dptr,#___str_15
      00136E 75 F0 80         [24] 4652 	mov	b,#0x80
      001371 12 0A 5F         [24] 4653 	lcall	_LCD_string_write
                                   4654 ;	ECEN4330Lab7.c:1371: delay(100);
      001374 90 00 64         [24] 4655 	mov	dptr,#0x0064
                                   4656 ;	ECEN4330Lab7.c:1374: }
      001377 02 00 BF         [24] 4657 	ljmp	_delay
                                   4658 ;------------------------------------------------------------
                                   4659 ;Allocation info for local variables in function 'MOVE'
                                   4660 ;------------------------------------------------------------
                                   4661 ;	ECEN4330Lab7.c:1397: void MOVE(){
                                   4662 ;	-----------------------------------------
                                   4663 ;	 function MOVE
                                   4664 ;	-----------------------------------------
      00137A                       4665 _MOVE:
                                   4666 ;	ECEN4330Lab7.c:1398: endAddrCalc = 0;
      00137A E4               [12] 4667 	clr	a
      00137B F5 55            [12] 4668 	mov	_endAddrCalc,a
      00137D F5 56            [12] 4669 	mov	(_endAddrCalc + 1),a
      00137F F5 57            [12] 4670 	mov	(_endAddrCalc + 2),a
      001381 F5 58            [12] 4671 	mov	(_endAddrCalc + 3),a
                                   4672 ;	ECEN4330Lab7.c:1399: addr0 = 0;                  // Source Address
      001383 F5 42            [12] 4673 	mov	_addr0,a
      001385 F5 43            [12] 4674 	mov	(_addr0 + 1),a
                                   4675 ;	ECEN4330Lab7.c:1400: addr1 = 0;                  // Source End Address
      001387 F5 44            [12] 4676 	mov	_addr1,a
      001389 F5 45            [12] 4677 	mov	(_addr1 + 1),a
                                   4678 ;	ECEN4330Lab7.c:1401: addr2 = 0;                  // Destination Address
      00138B F5 46            [12] 4679 	mov	_addr2,a
      00138D F5 47            [12] 4680 	mov	(_addr2 + 1),a
                                   4681 ;	ECEN4330Lab7.c:1402: addr3 = 0;                  // Destination End Address
      00138F F5 48            [12] 4682 	mov	_addr3,a
      001391 F5 49            [12] 4683 	mov	(_addr3 + 1),a
                                   4684 ;	ECEN4330Lab7.c:1403: currAddr0 = 0;              // Current Source Address
      001393 F5 4A            [12] 4685 	mov	_currAddr0,a
      001395 F5 4B            [12] 4686 	mov	(_currAddr0 + 1),a
                                   4687 ;	ECEN4330Lab7.c:1404: currAddr1 = 0;              // Current Destination Address
      001397 F5 4C            [12] 4688 	mov	_currAddr1,a
      001399 F5 4D            [12] 4689 	mov	(_currAddr1 + 1),a
                                   4690 ;	ECEN4330Lab7.c:1407: resetLCD();
      00139B 12 0D ED         [24] 4691 	lcall	_resetLCD
                                   4692 ;	ECEN4330Lab7.c:1408: LCD_string_write("\nEnter source\nstarting RAM\naddress:\n\n\n  0x____");
      00139E 90 2A 9E         [24] 4693 	mov	dptr,#___str_22
      0013A1 75 F0 80         [24] 4694 	mov	b,#0x80
      0013A4 12 0A 5F         [24] 4695 	lcall	_LCD_string_write
                                   4696 ;	ECEN4330Lab7.c:1409: cursor_x -= 4 * textsize * 6;
      0013A7 E5 2D            [12] 4697 	mov	a,_textsize
      0013A9 75 F0 18         [24] 4698 	mov	b,#0x18
      0013AC A4               [48] 4699 	mul	ab
      0013AD FE               [12] 4700 	mov	r6,a
      0013AE AF F0            [24] 4701 	mov	r7,b
      0013B0 E5 29            [12] 4702 	mov	a,_cursor_x
      0013B2 C3               [12] 4703 	clr	c
      0013B3 9E               [12] 4704 	subb	a,r6
      0013B4 F5 29            [12] 4705 	mov	_cursor_x,a
      0013B6 E5 2A            [12] 4706 	mov	a,(_cursor_x + 1)
      0013B8 9F               [12] 4707 	subb	a,r7
      0013B9 F5 2A            [12] 4708 	mov	(_cursor_x + 1),a
                                   4709 ;	ECEN4330Lab7.c:1410: inputRead16();
      0013BB 12 0E 3E         [24] 4710 	lcall	_inputRead16
                                   4711 ;	ECEN4330Lab7.c:1411: addr0 = input16;
      0013BE 85 38 42         [24] 4712 	mov	_addr0,_input16
      0013C1 85 39 43         [24] 4713 	mov	(_addr0 + 1),(_input16 + 1)
                                   4714 ;	ECEN4330Lab7.c:1414: resetLCD();
      0013C4 12 0D ED         [24] 4715 	lcall	_resetLCD
                                   4716 ;	ECEN4330Lab7.c:1415: LCD_string_write("\nEnter\ndestination\nstarting RAM\naddress:\n\n\n  0x____");
      0013C7 90 2A CD         [24] 4717 	mov	dptr,#___str_23
      0013CA 75 F0 80         [24] 4718 	mov	b,#0x80
      0013CD 12 0A 5F         [24] 4719 	lcall	_LCD_string_write
                                   4720 ;	ECEN4330Lab7.c:1416: cursor_x -= 4 * textsize * 6;
      0013D0 E5 2D            [12] 4721 	mov	a,_textsize
      0013D2 75 F0 18         [24] 4722 	mov	b,#0x18
      0013D5 A4               [48] 4723 	mul	ab
      0013D6 FE               [12] 4724 	mov	r6,a
      0013D7 AF F0            [24] 4725 	mov	r7,b
      0013D9 E5 29            [12] 4726 	mov	a,_cursor_x
      0013DB C3               [12] 4727 	clr	c
      0013DC 9E               [12] 4728 	subb	a,r6
      0013DD F5 29            [12] 4729 	mov	_cursor_x,a
      0013DF E5 2A            [12] 4730 	mov	a,(_cursor_x + 1)
      0013E1 9F               [12] 4731 	subb	a,r7
      0013E2 F5 2A            [12] 4732 	mov	(_cursor_x + 1),a
                                   4733 ;	ECEN4330Lab7.c:1417: inputRead16();
      0013E4 12 0E 3E         [24] 4734 	lcall	_inputRead16
                                   4735 ;	ECEN4330Lab7.c:1418: addr2 = input16;
      0013E7 85 38 46         [24] 4736 	mov	_addr2,_input16
      0013EA 85 39 47         [24] 4737 	mov	(_addr2 + 1),(_input16 + 1)
                                   4738 ;	ECEN4330Lab7.c:1421: inputDataType();
      0013ED 12 0F 4D         [24] 4739 	lcall	_inputDataType
                                   4740 ;	ECEN4330Lab7.c:1424: resetLCD();
      0013F0 12 0D ED         [24] 4741 	lcall	_resetLCD
                                   4742 ;	ECEN4330Lab7.c:1425: inputDataSize();
      0013F3 12 10 0A         [24] 4743 	lcall	_inputDataSize
                                   4744 ;	ECEN4330Lab7.c:1428: if(addr2 > addr0){
      0013F6 C3               [12] 4745 	clr	c
      0013F7 E5 42            [12] 4746 	mov	a,_addr0
      0013F9 95 46            [12] 4747 	subb	a,_addr2
      0013FB E5 43            [12] 4748 	mov	a,(_addr0 + 1)
      0013FD 95 47            [12] 4749 	subb	a,(_addr2 + 1)
      0013FF 50 63            [24] 4750 	jnc	00108$
                                   4751 ;	ECEN4330Lab7.c:1429: endAddrCalc = addr2 + (dataSize * dataType);
      001401 85 3B 08         [24] 4752 	mov	__mulint_PARM_2,_dataType
      001404 75 09 00         [24] 4753 	mov	(__mulint_PARM_2 + 1),#0x00
      001407 85 3C 82         [24] 4754 	mov	dpl,_dataSize
      00140A 85 3D 83         [24] 4755 	mov	dph,(_dataSize + 1)
      00140D 12 23 17         [24] 4756 	lcall	__mulint
      001410 AE 82            [24] 4757 	mov	r6,dpl
      001412 AF 83            [24] 4758 	mov	r7,dph
      001414 EE               [12] 4759 	mov	a,r6
      001415 25 46            [12] 4760 	add	a,_addr2
      001417 FC               [12] 4761 	mov	r4,a
      001418 EF               [12] 4762 	mov	a,r7
      001419 35 47            [12] 4763 	addc	a,(_addr2 + 1)
      00141B FD               [12] 4764 	mov	r5,a
      00141C 8C 55            [24] 4765 	mov	_endAddrCalc,r4
      00141E 8D 56            [24] 4766 	mov	(_endAddrCalc + 1),r5
      001420 75 57 00         [24] 4767 	mov	(_endAddrCalc + 2),#0x00
      001423 75 58 00         [24] 4768 	mov	(_endAddrCalc + 3),#0x00
                                   4769 ;	ECEN4330Lab7.c:1430: if(endAddrCalc > 0xFFFF){
      001426 C3               [12] 4770 	clr	c
      001427 74 FF            [12] 4771 	mov	a,#0xff
      001429 95 55            [12] 4772 	subb	a,_endAddrCalc
      00142B 74 FF            [12] 4773 	mov	a,#0xff
      00142D 95 56            [12] 4774 	subb	a,(_endAddrCalc + 1)
      00142F E4               [12] 4775 	clr	a
      001430 95 57            [12] 4776 	subb	a,(_endAddrCalc + 2)
      001432 E4               [12] 4777 	clr	a
      001433 95 58            [12] 4778 	subb	a,(_endAddrCalc + 3)
      001435 50 08            [24] 4779 	jnc	00102$
                                   4780 ;	ECEN4330Lab7.c:1431: addr3 = 0xFFFF;
      001437 75 48 FF         [24] 4781 	mov	_addr3,#0xff
      00143A 75 49 FF         [24] 4782 	mov	(_addr3 + 1),#0xff
      00143D 80 0A            [24] 4783 	sjmp	00103$
      00143F                       4784 00102$:
                                   4785 ;	ECEN4330Lab7.c:1434: addr3 = addr2 + (dataSize * dataType);
      00143F EE               [12] 4786 	mov	a,r6
      001440 25 46            [12] 4787 	add	a,_addr2
      001442 F5 48            [12] 4788 	mov	_addr3,a
      001444 EF               [12] 4789 	mov	a,r7
      001445 35 47            [12] 4790 	addc	a,(_addr2 + 1)
      001447 F5 49            [12] 4791 	mov	(_addr3 + 1),a
      001449                       4792 00103$:
                                   4793 ;	ECEN4330Lab7.c:1436: dataSize = addr3 - addr2;
      001449 E5 48            [12] 4794 	mov	a,_addr3
      00144B C3               [12] 4795 	clr	c
      00144C 95 46            [12] 4796 	subb	a,_addr2
      00144E F5 3C            [12] 4797 	mov	_dataSize,a
      001450 E5 49            [12] 4798 	mov	a,(_addr3 + 1)
      001452 95 47            [12] 4799 	subb	a,(_addr2 + 1)
      001454 F5 3D            [12] 4800 	mov	(_dataSize + 1),a
                                   4801 ;	ECEN4330Lab7.c:1437: addr1 = addr0 + dataSize;
      001456 E5 3C            [12] 4802 	mov	a,_dataSize
      001458 25 42            [12] 4803 	add	a,_addr0
      00145A F5 44            [12] 4804 	mov	_addr1,a
      00145C E5 3D            [12] 4805 	mov	a,(_dataSize + 1)
      00145E 35 43            [12] 4806 	addc	a,(_addr0 + 1)
      001460 F5 45            [12] 4807 	mov	(_addr1 + 1),a
      001462 80 61            [24] 4808 	sjmp	00109$
      001464                       4809 00108$:
                                   4810 ;	ECEN4330Lab7.c:1440: endAddrCalc = addr0 + (dataSize * dataType);
      001464 85 3B 08         [24] 4811 	mov	__mulint_PARM_2,_dataType
      001467 75 09 00         [24] 4812 	mov	(__mulint_PARM_2 + 1),#0x00
      00146A 85 3C 82         [24] 4813 	mov	dpl,_dataSize
      00146D 85 3D 83         [24] 4814 	mov	dph,(_dataSize + 1)
      001470 12 23 17         [24] 4815 	lcall	__mulint
      001473 AE 82            [24] 4816 	mov	r6,dpl
      001475 AF 83            [24] 4817 	mov	r7,dph
      001477 EE               [12] 4818 	mov	a,r6
      001478 25 42            [12] 4819 	add	a,_addr0
      00147A FC               [12] 4820 	mov	r4,a
      00147B EF               [12] 4821 	mov	a,r7
      00147C 35 43            [12] 4822 	addc	a,(_addr0 + 1)
      00147E FD               [12] 4823 	mov	r5,a
      00147F 8C 55            [24] 4824 	mov	_endAddrCalc,r4
      001481 8D 56            [24] 4825 	mov	(_endAddrCalc + 1),r5
      001483 75 57 00         [24] 4826 	mov	(_endAddrCalc + 2),#0x00
      001486 75 58 00         [24] 4827 	mov	(_endAddrCalc + 3),#0x00
                                   4828 ;	ECEN4330Lab7.c:1441: if(endAddrCalc > 0xFFFF){
      001489 C3               [12] 4829 	clr	c
      00148A 74 FF            [12] 4830 	mov	a,#0xff
      00148C 95 55            [12] 4831 	subb	a,_endAddrCalc
      00148E 74 FF            [12] 4832 	mov	a,#0xff
      001490 95 56            [12] 4833 	subb	a,(_endAddrCalc + 1)
      001492 E4               [12] 4834 	clr	a
      001493 95 57            [12] 4835 	subb	a,(_endAddrCalc + 2)
      001495 E4               [12] 4836 	clr	a
      001496 95 58            [12] 4837 	subb	a,(_endAddrCalc + 3)
      001498 50 08            [24] 4838 	jnc	00105$
                                   4839 ;	ECEN4330Lab7.c:1442: addr1 = 0xFFFF;
      00149A 75 44 FF         [24] 4840 	mov	_addr1,#0xff
      00149D 75 45 FF         [24] 4841 	mov	(_addr1 + 1),#0xff
      0014A0 80 0A            [24] 4842 	sjmp	00106$
      0014A2                       4843 00105$:
                                   4844 ;	ECEN4330Lab7.c:1445: addr1 = addr0 + (dataSize * dataType);
      0014A2 EE               [12] 4845 	mov	a,r6
      0014A3 25 42            [12] 4846 	add	a,_addr0
      0014A5 F5 44            [12] 4847 	mov	_addr1,a
      0014A7 EF               [12] 4848 	mov	a,r7
      0014A8 35 43            [12] 4849 	addc	a,(_addr0 + 1)
      0014AA F5 45            [12] 4850 	mov	(_addr1 + 1),a
      0014AC                       4851 00106$:
                                   4852 ;	ECEN4330Lab7.c:1447: dataSize = addr1 - addr0;
      0014AC E5 44            [12] 4853 	mov	a,_addr1
      0014AE C3               [12] 4854 	clr	c
      0014AF 95 42            [12] 4855 	subb	a,_addr0
      0014B1 F5 3C            [12] 4856 	mov	_dataSize,a
      0014B3 E5 45            [12] 4857 	mov	a,(_addr1 + 1)
      0014B5 95 43            [12] 4858 	subb	a,(_addr0 + 1)
      0014B7 F5 3D            [12] 4859 	mov	(_dataSize + 1),a
                                   4860 ;	ECEN4330Lab7.c:1448: addr3 = addr2 + dataSize;
      0014B9 E5 3C            [12] 4861 	mov	a,_dataSize
      0014BB 25 46            [12] 4862 	add	a,_addr2
      0014BD F5 48            [12] 4863 	mov	_addr3,a
      0014BF E5 3D            [12] 4864 	mov	a,(_dataSize + 1)
      0014C1 35 47            [12] 4865 	addc	a,(_addr2 + 1)
      0014C3 F5 49            [12] 4866 	mov	(_addr3 + 1),a
      0014C5                       4867 00109$:
                                   4868 ;	ECEN4330Lab7.c:1453: if(addr0 < addr2 && addr1 > addr2){
      0014C5 C3               [12] 4869 	clr	c
      0014C6 E5 42            [12] 4870 	mov	a,_addr0
      0014C8 95 46            [12] 4871 	subb	a,_addr2
      0014CA E5 43            [12] 4872 	mov	a,(_addr0 + 1)
      0014CC 95 47            [12] 4873 	subb	a,(_addr2 + 1)
      0014CE 50 4E            [24] 4874 	jnc	00113$
      0014D0 C3               [12] 4875 	clr	c
      0014D1 E5 46            [12] 4876 	mov	a,_addr2
      0014D3 95 44            [12] 4877 	subb	a,_addr1
      0014D5 E5 47            [12] 4878 	mov	a,(_addr2 + 1)
      0014D7 95 45            [12] 4879 	subb	a,(_addr1 + 1)
      0014D9 50 43            [24] 4880 	jnc	00113$
                                   4881 ;	ECEN4330Lab7.c:1454: currAddr0 = addr1;
      0014DB 85 44 4A         [24] 4882 	mov	_currAddr0,_addr1
      0014DE 85 45 4B         [24] 4883 	mov	(_currAddr0 + 1),(_addr1 + 1)
                                   4884 ;	ECEN4330Lab7.c:1455: for(currAddr1 = addr3; currAddr1 >= addr2; currAddr1--){
      0014E1 85 48 4C         [24] 4885 	mov	_currAddr1,_addr3
      0014E4 85 49 4D         [24] 4886 	mov	(_currAddr1 + 1),(_addr3 + 1)
      0014E7                       4887 00117$:
      0014E7 C3               [12] 4888 	clr	c
      0014E8 E5 4C            [12] 4889 	mov	a,_currAddr1
      0014EA 95 46            [12] 4890 	subb	a,_addr2
      0014EC E5 4D            [12] 4891 	mov	a,(_currAddr1 + 1)
      0014EE 95 47            [12] 4892 	subb	a,(_addr2 + 1)
      0014F0 40 6D            [24] 4893 	jc	00114$
                                   4894 ;	ECEN4330Lab7.c:1456: data = RAMread(currAddr0);
      0014F2 85 4A 82         [24] 4895 	mov	dpl,_currAddr0
      0014F5 85 4B 83         [24] 4896 	mov	dph,(_currAddr0 + 1)
      0014F8 12 0D DA         [24] 4897 	lcall	_RAMread
      0014FB 85 82 41         [24] 4898 	mov	_data,dpl
                                   4899 ;	ECEN4330Lab7.c:1457: RAMwrite(currAddr1, data);
      0014FE 85 41 08         [24] 4900 	mov	_RAMwrite_PARM_2,_data
      001501 85 4C 82         [24] 4901 	mov	dpl,_currAddr1
      001504 85 4D 83         [24] 4902 	mov	dph,(_currAddr1 + 1)
      001507 12 0D AB         [24] 4903 	lcall	_RAMwrite
                                   4904 ;	ECEN4330Lab7.c:1458: currAddr0--;
      00150A 15 4A            [12] 4905 	dec	_currAddr0
      00150C 74 FF            [12] 4906 	mov	a,#0xff
      00150E B5 4A 02         [24] 4907 	cjne	a,_currAddr0,00166$
      001511 15 4B            [12] 4908 	dec	(_currAddr0 + 1)
      001513                       4909 00166$:
                                   4910 ;	ECEN4330Lab7.c:1455: for(currAddr1 = addr3; currAddr1 >= addr2; currAddr1--){
      001513 15 4C            [12] 4911 	dec	_currAddr1
      001515 74 FF            [12] 4912 	mov	a,#0xff
      001517 B5 4C 02         [24] 4913 	cjne	a,_currAddr1,00167$
      00151A 15 4D            [12] 4914 	dec	(_currAddr1 + 1)
      00151C                       4915 00167$:
      00151C 80 C9            [24] 4916 	sjmp	00117$
      00151E                       4917 00113$:
                                   4918 ;	ECEN4330Lab7.c:1465: currAddr0 = addr0;
      00151E 85 42 4A         [24] 4919 	mov	_currAddr0,_addr0
      001521 85 43 4B         [24] 4920 	mov	(_currAddr0 + 1),(_addr0 + 1)
                                   4921 ;	ECEN4330Lab7.c:1466: for(currAddr1 = addr2; currAddr1 <= addr3; currAddr1++){
      001524 85 46 4C         [24] 4922 	mov	_currAddr1,_addr2
      001527 85 47 4D         [24] 4923 	mov	(_currAddr1 + 1),(_addr2 + 1)
      00152A                       4924 00120$:
      00152A C3               [12] 4925 	clr	c
      00152B E5 48            [12] 4926 	mov	a,_addr3
      00152D 95 4C            [12] 4927 	subb	a,_currAddr1
      00152F E5 49            [12] 4928 	mov	a,(_addr3 + 1)
      001531 95 4D            [12] 4929 	subb	a,(_currAddr1 + 1)
      001533 40 2A            [24] 4930 	jc	00114$
                                   4931 ;	ECEN4330Lab7.c:1467: data = RAMread(currAddr0);
      001535 85 4A 82         [24] 4932 	mov	dpl,_currAddr0
      001538 85 4B 83         [24] 4933 	mov	dph,(_currAddr0 + 1)
      00153B 12 0D DA         [24] 4934 	lcall	_RAMread
      00153E 85 82 41         [24] 4935 	mov	_data,dpl
                                   4936 ;	ECEN4330Lab7.c:1468: RAMwrite(currAddr1, data);
      001541 85 41 08         [24] 4937 	mov	_RAMwrite_PARM_2,_data
      001544 85 4C 82         [24] 4938 	mov	dpl,_currAddr1
      001547 85 4D 83         [24] 4939 	mov	dph,(_currAddr1 + 1)
      00154A 12 0D AB         [24] 4940 	lcall	_RAMwrite
                                   4941 ;	ECEN4330Lab7.c:1469: currAddr0++;
      00154D 05 4A            [12] 4942 	inc	_currAddr0
      00154F E4               [12] 4943 	clr	a
      001550 B5 4A 02         [24] 4944 	cjne	a,_currAddr0,00169$
      001553 05 4B            [12] 4945 	inc	(_currAddr0 + 1)
      001555                       4946 00169$:
                                   4947 ;	ECEN4330Lab7.c:1466: for(currAddr1 = addr2; currAddr1 <= addr3; currAddr1++){
      001555 05 4C            [12] 4948 	inc	_currAddr1
      001557 E4               [12] 4949 	clr	a
      001558 B5 4C CF         [24] 4950 	cjne	a,_currAddr1,00120$
      00155B 05 4D            [12] 4951 	inc	(_currAddr1 + 1)
      00155D 80 CB            [24] 4952 	sjmp	00120$
      00155F                       4953 00114$:
                                   4954 ;	ECEN4330Lab7.c:1474: resetLCD();
      00155F 12 0D ED         [24] 4955 	lcall	_resetLCD
                                   4956 ;	ECEN4330Lab7.c:1475: setTextColor(GREEN, BLACK);
      001562 E4               [12] 4957 	clr	a
      001563 F5 08            [12] 4958 	mov	_setTextColor_PARM_2,a
      001565 F5 09            [12] 4959 	mov	(_setTextColor_PARM_2 + 1),a
      001567 90 07 E0         [24] 4960 	mov	dptr,#0x07e0
      00156A 12 03 70         [24] 4961 	lcall	_setTextColor
                                   4962 ;	ECEN4330Lab7.c:1476: LCD_string_write("\nMove complete.\n\n");
      00156D 90 2B 01         [24] 4963 	mov	dptr,#___str_24
      001570 75 F0 80         [24] 4964 	mov	b,#0x80
      001573 12 0A 5F         [24] 4965 	lcall	_LCD_string_write
                                   4966 ;	ECEN4330Lab7.c:1477: delay(100);
      001576 90 00 64         [24] 4967 	mov	dptr,#0x0064
      001579 12 00 BF         [24] 4968 	lcall	_delay
                                   4969 ;	ECEN4330Lab7.c:1478: setTextColor(WHITE, BLACK);
      00157C E4               [12] 4970 	clr	a
      00157D F5 08            [12] 4971 	mov	_setTextColor_PARM_2,a
      00157F F5 09            [12] 4972 	mov	(_setTextColor_PARM_2 + 1),a
      001581 90 FF FF         [24] 4973 	mov	dptr,#0xffff
      001584 12 03 70         [24] 4974 	lcall	_setTextColor
                                   4975 ;	ECEN4330Lab7.c:1479: LCD_string_write("Returning to\nmain menu.");
      001587 90 29 C0         [24] 4976 	mov	dptr,#___str_15
      00158A 75 F0 80         [24] 4977 	mov	b,#0x80
      00158D 12 0A 5F         [24] 4978 	lcall	_LCD_string_write
                                   4979 ;	ECEN4330Lab7.c:1480: delay(100);
      001590 90 00 64         [24] 4980 	mov	dptr,#0x0064
                                   4981 ;	ECEN4330Lab7.c:1481: }
      001593 02 00 BF         [24] 4982 	ljmp	_delay
                                   4983 ;------------------------------------------------------------
                                   4984 ;Allocation info for local variables in function 'COUNT'
                                   4985 ;------------------------------------------------------------
                                   4986 ;i                         Allocated to registers 
                                   4987 ;------------------------------------------------------------
                                   4988 ;	ECEN4330Lab7.c:1489: void COUNT(){
                                   4989 ;	-----------------------------------------
                                   4990 ;	 function COUNT
                                   4991 ;	-----------------------------------------
      001596                       4992 _COUNT:
                                   4993 ;	ECEN4330Lab7.c:1490: endAddrCalc = 0;
      001596 E4               [12] 4994 	clr	a
      001597 F5 55            [12] 4995 	mov	_endAddrCalc,a
      001599 F5 56            [12] 4996 	mov	(_endAddrCalc + 1),a
      00159B F5 57            [12] 4997 	mov	(_endAddrCalc + 2),a
      00159D F5 58            [12] 4998 	mov	(_endAddrCalc + 3),a
                                   4999 ;	ECEN4330Lab7.c:1491: addr0 = 0;                      // Starting Address
      00159F F5 42            [12] 5000 	mov	_addr0,a
      0015A1 F5 43            [12] 5001 	mov	(_addr0 + 1),a
                                   5002 ;	ECEN4330Lab7.c:1492: addr1 = 0;                      // End Address
      0015A3 F5 44            [12] 5003 	mov	_addr1,a
      0015A5 F5 45            [12] 5004 	mov	(_addr1 + 1),a
                                   5005 ;	ECEN4330Lab7.c:1493: dataSize = 0;                   // Data Size
      0015A7 F5 3C            [12] 5006 	mov	_dataSize,a
      0015A9 F5 3D            [12] 5007 	mov	(_dataSize + 1),a
                                   5008 ;	ECEN4330Lab7.c:1494: byte1 = 0;                       // Find Value
      0015AB F5 50            [12] 5009 	mov	_byte1,a
      0015AD F5 51            [12] 5010 	mov	(_byte1 + 1),a
                                   5011 ;	ECEN4330Lab7.c:1495: count = 0;
      0015AF F5 53            [12] 5012 	mov	_count,a
      0015B1 F5 54            [12] 5013 	mov	(_count + 1),a
                                   5014 ;	ECEN4330Lab7.c:1496: addr3 = 0;						// Count overflow
      0015B3 F5 48            [12] 5015 	mov	_addr3,a
      0015B5 F5 49            [12] 5016 	mov	(_addr3 + 1),a
                                   5017 ;	ECEN4330Lab7.c:1497: dataEnd = 0;
                                   5018 ;	1-genFromRTrack replaced	mov	_dataEnd,#0x00
      0015B7 F5 3F            [12] 5019 	mov	_dataEnd,a
                                   5020 ;	ECEN4330Lab7.c:1500: resetLCD();
      0015B9 12 0D ED         [24] 5021 	lcall	_resetLCD
                                   5022 ;	ECEN4330Lab7.c:1501: LCD_string_write("\nEnter\nstarting RAM\naddress:\n\n  0x____");
      0015BC 90 2B 13         [24] 5023 	mov	dptr,#___str_25
      0015BF 75 F0 80         [24] 5024 	mov	b,#0x80
      0015C2 12 0A 5F         [24] 5025 	lcall	_LCD_string_write
                                   5026 ;	ECEN4330Lab7.c:1502: cursor_x -= 4 * textsize * 6;
      0015C5 E5 2D            [12] 5027 	mov	a,_textsize
      0015C7 75 F0 18         [24] 5028 	mov	b,#0x18
      0015CA A4               [48] 5029 	mul	ab
      0015CB FE               [12] 5030 	mov	r6,a
      0015CC AF F0            [24] 5031 	mov	r7,b
      0015CE E5 29            [12] 5032 	mov	a,_cursor_x
      0015D0 C3               [12] 5033 	clr	c
      0015D1 9E               [12] 5034 	subb	a,r6
      0015D2 F5 29            [12] 5035 	mov	_cursor_x,a
      0015D4 E5 2A            [12] 5036 	mov	a,(_cursor_x + 1)
      0015D6 9F               [12] 5037 	subb	a,r7
      0015D7 F5 2A            [12] 5038 	mov	(_cursor_x + 1),a
                                   5039 ;	ECEN4330Lab7.c:1503: inputRead16();                  // Read input
      0015D9 12 0E 3E         [24] 5040 	lcall	_inputRead16
                                   5041 ;	ECEN4330Lab7.c:1504: addr0 = input16;                // Start address
      0015DC 85 38 42         [24] 5042 	mov	_addr0,_input16
      0015DF 85 39 43         [24] 5043 	mov	(_addr0 + 1),(_input16 + 1)
                                   5044 ;	ECEN4330Lab7.c:1507: resetLCD();
      0015E2 12 0D ED         [24] 5045 	lcall	_resetLCD
                                   5046 ;	ECEN4330Lab7.c:1508: inputDataSize();                // Prompt & read input
      0015E5 12 10 0A         [24] 5047 	lcall	_inputDataSize
                                   5048 ;	ECEN4330Lab7.c:1511: resetLCD();
      0015E8 12 0D ED         [24] 5049 	lcall	_resetLCD
                                   5050 ;	ECEN4330Lab7.c:1512: LCD_string_write("\nEnter search\nvalue:\n\n  0x__");
      0015EB 90 2B 3A         [24] 5051 	mov	dptr,#___str_26
      0015EE 75 F0 80         [24] 5052 	mov	b,#0x80
      0015F1 12 0A 5F         [24] 5053 	lcall	_LCD_string_write
                                   5054 ;	ECEN4330Lab7.c:1513: cursor_x -= 2 * textsize * 6;
      0015F4 E5 2D            [12] 5055 	mov	a,_textsize
      0015F6 75 F0 0C         [24] 5056 	mov	b,#0x0c
      0015F9 A4               [48] 5057 	mul	ab
      0015FA FE               [12] 5058 	mov	r6,a
      0015FB AF F0            [24] 5059 	mov	r7,b
      0015FD E5 29            [12] 5060 	mov	a,_cursor_x
      0015FF C3               [12] 5061 	clr	c
      001600 9E               [12] 5062 	subb	a,r6
      001601 F5 29            [12] 5063 	mov	_cursor_x,a
      001603 E5 2A            [12] 5064 	mov	a,(_cursor_x + 1)
      001605 9F               [12] 5065 	subb	a,r7
      001606 F5 2A            [12] 5066 	mov	(_cursor_x + 1),a
                                   5067 ;	ECEN4330Lab7.c:1514: inputRead8();                  // Read input
      001608 12 0E F9         [24] 5068 	lcall	_inputRead8
                                   5069 ;	ECEN4330Lab7.c:1515: byte1 = input8;                 // Find value
      00160B 85 3A 50         [24] 5070 	mov	_byte1,_input8
      00160E 75 51 00         [24] 5071 	mov	(_byte1 + 1),#0x00
                                   5072 ;	ECEN4330Lab7.c:1518: endAddrCalc = addr0 + dataSize;
      001611 E5 3C            [12] 5073 	mov	a,_dataSize
      001613 25 42            [12] 5074 	add	a,_addr0
      001615 FE               [12] 5075 	mov	r6,a
      001616 E5 3D            [12] 5076 	mov	a,(_dataSize + 1)
      001618 35 43            [12] 5077 	addc	a,(_addr0 + 1)
      00161A FF               [12] 5078 	mov	r7,a
      00161B 8E 55            [24] 5079 	mov	_endAddrCalc,r6
      00161D 8F 56            [24] 5080 	mov	(_endAddrCalc + 1),r7
      00161F 75 57 00         [24] 5081 	mov	(_endAddrCalc + 2),#0x00
      001622 75 58 00         [24] 5082 	mov	(_endAddrCalc + 3),#0x00
                                   5083 ;	ECEN4330Lab7.c:1519: if(endAddrCalc < addr0){ // RAM overflow
      001625 AC 42            [24] 5084 	mov	r4,_addr0
      001627 AD 43            [24] 5085 	mov	r5,(_addr0 + 1)
      001629 7E 00            [12] 5086 	mov	r6,#0x00
      00162B 7F 00            [12] 5087 	mov	r7,#0x00
      00162D C3               [12] 5088 	clr	c
      00162E E5 55            [12] 5089 	mov	a,_endAddrCalc
      001630 9C               [12] 5090 	subb	a,r4
      001631 E5 56            [12] 5091 	mov	a,(_endAddrCalc + 1)
      001633 9D               [12] 5092 	subb	a,r5
      001634 E5 57            [12] 5093 	mov	a,(_endAddrCalc + 2)
      001636 9E               [12] 5094 	subb	a,r6
      001637 E5 58            [12] 5095 	mov	a,(_endAddrCalc + 3)
      001639 9F               [12] 5096 	subb	a,r7
      00163A 50 14            [24] 5097 	jnc	00102$
                                   5098 ;	ECEN4330Lab7.c:1520: addr1 = 0xFFFF;             // Set end address
      00163C 75 44 FF         [24] 5099 	mov	_addr1,#0xff
                                   5100 ;	ECEN4330Lab7.c:1521: dataSize = addr1 - addr0;   // Recalculate data size
      00163F 74 FF            [12] 5101 	mov	a,#0xff
      001641 F5 45            [12] 5102 	mov	(_addr1 + 1),a
      001643 C3               [12] 5103 	clr	c
      001644 95 42            [12] 5104 	subb	a,_addr0
      001646 F5 3C            [12] 5105 	mov	_dataSize,a
      001648 74 FF            [12] 5106 	mov	a,#0xff
      00164A 95 43            [12] 5107 	subb	a,(_addr0 + 1)
      00164C F5 3D            [12] 5108 	mov	(_dataSize + 1),a
      00164E 80 0C            [24] 5109 	sjmp	00103$
      001650                       5110 00102$:
                                   5111 ;	ECEN4330Lab7.c:1524: addr1 = addr0 + dataSize;
      001650 E5 3C            [12] 5112 	mov	a,_dataSize
      001652 25 42            [12] 5113 	add	a,_addr0
      001654 F5 44            [12] 5114 	mov	_addr1,a
      001656 E5 3D            [12] 5115 	mov	a,(_dataSize + 1)
      001658 35 43            [12] 5116 	addc	a,(_addr0 + 1)
      00165A F5 45            [12] 5117 	mov	(_addr1 + 1),a
      00165C                       5118 00103$:
                                   5119 ;	ECEN4330Lab7.c:1542: int i = addr0;
      00165C AE 42            [24] 5120 	mov	r6,_addr0
      00165E AF 43            [24] 5121 	mov	r7,(_addr0 + 1)
                                   5122 ;	ECEN4330Lab7.c:1543: while(i <= addr1 && dataEnd == 0){
      001660                       5123 00111$:
      001660 8E 04            [24] 5124 	mov	ar4,r6
      001662 8F 05            [24] 5125 	mov	ar5,r7
      001664 C3               [12] 5126 	clr	c
      001665 E5 44            [12] 5127 	mov	a,_addr1
      001667 9C               [12] 5128 	subb	a,r4
      001668 E5 45            [12] 5129 	mov	a,(_addr1 + 1)
      00166A 9D               [12] 5130 	subb	a,r5
      00166B 40 4C            [24] 5131 	jc	00113$
      00166D E5 3F            [12] 5132 	mov	a,_dataEnd
      00166F 70 48            [24] 5133 	jnz	00113$
                                   5134 ;	ECEN4330Lab7.c:1544: data = RAMread(i);
      001671 8E 82            [24] 5135 	mov	dpl,r6
      001673 8F 83            [24] 5136 	mov	dph,r7
      001675 C0 07            [24] 5137 	push	ar7
      001677 C0 06            [24] 5138 	push	ar6
      001679 12 0D DA         [24] 5139 	lcall	_RAMread
      00167C 85 82 41         [24] 5140 	mov	_data,dpl
      00167F D0 06            [24] 5141 	pop	ar6
      001681 D0 07            [24] 5142 	pop	ar7
                                   5143 ;	ECEN4330Lab7.c:1545: if(data == byte1){
      001683 AC 41            [24] 5144 	mov	r4,_data
      001685 7D 00            [12] 5145 	mov	r5,#0x00
      001687 EC               [12] 5146 	mov	a,r4
      001688 B5 50 1A         [24] 5147 	cjne	a,_byte1,00107$
      00168B ED               [12] 5148 	mov	a,r5
      00168C B5 51 16         [24] 5149 	cjne	a,(_byte1 + 1),00107$
                                   5150 ;	ECEN4330Lab7.c:1546: if(count == 0xFFFF){
      00168F 74 FF            [12] 5151 	mov	a,#0xff
      001691 B5 53 09         [24] 5152 	cjne	a,_count,00105$
      001694 B5 54 06         [24] 5153 	cjne	a,(_count + 1),00105$
                                   5154 ;	ECEN4330Lab7.c:1547: addr3 = 1;
      001697 75 48 01         [24] 5155 	mov	_addr3,#0x01
      00169A 75 49 00         [24] 5156 	mov	(_addr3 + 1),#0x00
      00169D                       5157 00105$:
                                   5158 ;	ECEN4330Lab7.c:1549: count++;
      00169D 05 53            [12] 5159 	inc	_count
      00169F E4               [12] 5160 	clr	a
      0016A0 B5 53 02         [24] 5161 	cjne	a,_count,00173$
      0016A3 05 54            [12] 5162 	inc	(_count + 1)
      0016A5                       5163 00173$:
      0016A5                       5164 00107$:
                                   5165 ;	ECEN4330Lab7.c:1551: if(i == 0xFFFF){
      0016A5 8E 04            [24] 5166 	mov	ar4,r6
      0016A7 8F 05            [24] 5167 	mov	ar5,r7
      0016A9 BC FF 06         [24] 5168 	cjne	r4,#0xff,00109$
      0016AC BD FF 03         [24] 5169 	cjne	r5,#0xff,00109$
                                   5170 ;	ECEN4330Lab7.c:1552: dataEnd = 1;
      0016AF 75 3F 01         [24] 5171 	mov	_dataEnd,#0x01
      0016B2                       5172 00109$:
                                   5173 ;	ECEN4330Lab7.c:1554: i++;
      0016B2 0E               [12] 5174 	inc	r6
      0016B3 BE 00 AA         [24] 5175 	cjne	r6,#0x00,00111$
      0016B6 0F               [12] 5176 	inc	r7
      0016B7 80 A7            [24] 5177 	sjmp	00111$
      0016B9                       5178 00113$:
                                   5179 ;	ECEN4330Lab7.c:1557: if(count > 0 || addr3 == 1){
      0016B9 E5 53            [12] 5180 	mov	a,_count
      0016BB 45 54            [12] 5181 	orl	a,(_count + 1)
      0016BD 70 0D            [24] 5182 	jnz	00119$
      0016BF 74 01            [12] 5183 	mov	a,#0x01
      0016C1 B5 48 06         [24] 5184 	cjne	a,_addr3,00178$
      0016C4 14               [12] 5185 	dec	a
      0016C5 B5 49 02         [24] 5186 	cjne	a,(_addr3 + 1),00178$
      0016C8 80 02            [24] 5187 	sjmp	00179$
      0016CA                       5188 00178$:
      0016CA 80 5F            [24] 5189 	sjmp	00120$
      0016CC                       5190 00179$:
      0016CC                       5191 00119$:
                                   5192 ;	ECEN4330Lab7.c:1558: resetLCD();
      0016CC 12 0D ED         [24] 5193 	lcall	_resetLCD
                                   5194 ;	ECEN4330Lab7.c:1559: setTextColor(GREEN, BLACK);
      0016CF E4               [12] 5195 	clr	a
      0016D0 F5 08            [12] 5196 	mov	_setTextColor_PARM_2,a
      0016D2 F5 09            [12] 5197 	mov	(_setTextColor_PARM_2 + 1),a
      0016D4 90 07 E0         [24] 5198 	mov	dptr,#0x07e0
      0016D7 12 03 70         [24] 5199 	lcall	_setTextColor
                                   5200 ;	ECEN4330Lab7.c:1560: LCD_string_write("\n0x");
      0016DA 90 2B 57         [24] 5201 	mov	dptr,#___str_27
      0016DD 75 F0 80         [24] 5202 	mov	b,#0x80
      0016E0 12 0A 5F         [24] 5203 	lcall	_LCD_string_write
                                   5204 ;	ECEN4330Lab7.c:1561: HEXtoASCII_8write(byte1);
      0016E3 85 50 82         [24] 5205 	mov	dpl,_byte1
      0016E6 12 0C C9         [24] 5206 	lcall	_HEXtoASCII_8write
                                   5207 ;	ECEN4330Lab7.c:1562: LCD_string_write(" found\n");
      0016E9 90 2B 5B         [24] 5208 	mov	dptr,#___str_28
      0016EC 75 F0 80         [24] 5209 	mov	b,#0x80
      0016EF 12 0A 5F         [24] 5210 	lcall	_LCD_string_write
                                   5211 ;	ECEN4330Lab7.c:1564: if(count > 0){
      0016F2 E5 53            [12] 5212 	mov	a,_count
      0016F4 45 54            [12] 5213 	orl	a,(_count + 1)
      0016F6 60 0B            [24] 5214 	jz	00117$
                                   5215 ;	ECEN4330Lab7.c:1565: HEXtoASCII_16write(count);
      0016F8 85 53 82         [24] 5216 	mov	dpl,_count
      0016FB 85 54 83         [24] 5217 	mov	dph,(_count + 1)
      0016FE 12 0D 06         [24] 5218 	lcall	_HEXtoASCII_16write
      001701 80 16            [24] 5219 	sjmp	00118$
      001703                       5220 00117$:
                                   5221 ;	ECEN4330Lab7.c:1567: else if(addr3 == 1){
      001703 74 01            [12] 5222 	mov	a,#0x01
      001705 B5 48 06         [24] 5223 	cjne	a,_addr3,00181$
      001708 14               [12] 5224 	dec	a
      001709 B5 49 02         [24] 5225 	cjne	a,(_addr3 + 1),00181$
      00170C 80 02            [24] 5226 	sjmp	00182$
      00170E                       5227 00181$:
      00170E 80 09            [24] 5228 	sjmp	00118$
      001710                       5229 00182$:
                                   5230 ;	ECEN4330Lab7.c:1568: LCD_string_write("0x10000");
      001710 90 2B 63         [24] 5231 	mov	dptr,#___str_29
      001713 75 F0 80         [24] 5232 	mov	b,#0x80
      001716 12 0A 5F         [24] 5233 	lcall	_LCD_string_write
      001719                       5234 00118$:
                                   5235 ;	ECEN4330Lab7.c:1570: LCD_string_write("\ntimes.");
      001719 90 2B 6B         [24] 5236 	mov	dptr,#___str_30
      00171C 75 F0 80         [24] 5237 	mov	b,#0x80
      00171F 12 0A 5F         [24] 5238 	lcall	_LCD_string_write
                                   5239 ;	ECEN4330Lab7.c:1571: delay(300);
      001722 90 01 2C         [24] 5240 	mov	dptr,#0x012c
      001725 12 00 BF         [24] 5241 	lcall	_delay
                                   5242 ;	ECEN4330Lab7.c:1572: FIND_display();                 // Display dump data
      001728 02 1D 66         [24] 5243 	ljmp	_FIND_display
      00172B                       5244 00120$:
                                   5245 ;	ECEN4330Lab7.c:1575: resetLCD();
      00172B 12 0D ED         [24] 5246 	lcall	_resetLCD
                                   5247 ;	ECEN4330Lab7.c:1576: LCD_string_write("\n0x");
      00172E 90 2B 57         [24] 5248 	mov	dptr,#___str_27
      001731 75 F0 80         [24] 5249 	mov	b,#0x80
      001734 12 0A 5F         [24] 5250 	lcall	_LCD_string_write
                                   5251 ;	ECEN4330Lab7.c:1577: HEXtoASCII_8write(byte1);
      001737 85 50 82         [24] 5252 	mov	dpl,_byte1
      00173A 12 0C C9         [24] 5253 	lcall	_HEXtoASCII_8write
                                   5254 ;	ECEN4330Lab7.c:1578: LCD_string_write(" not\nfound in\nexternal RAM\n");
      00173D 90 2B 73         [24] 5255 	mov	dptr,#___str_31
      001740 75 F0 80         [24] 5256 	mov	b,#0x80
      001743 12 0A 5F         [24] 5257 	lcall	_LCD_string_write
                                   5258 ;	ECEN4330Lab7.c:1579: HEXtoASCII_16write(addr0);
      001746 85 42 82         [24] 5259 	mov	dpl,_addr0
      001749 85 43 83         [24] 5260 	mov	dph,(_addr0 + 1)
      00174C 12 0D 06         [24] 5261 	lcall	_HEXtoASCII_16write
                                   5262 ;	ECEN4330Lab7.c:1580: LCD_string_write(" -\n");
      00174F 90 2B 8F         [24] 5263 	mov	dptr,#___str_32
      001752 75 F0 80         [24] 5264 	mov	b,#0x80
      001755 12 0A 5F         [24] 5265 	lcall	_LCD_string_write
                                   5266 ;	ECEN4330Lab7.c:1581: HEXtoASCII_16write(addr1);
      001758 85 44 82         [24] 5267 	mov	dpl,_addr1
      00175B 85 45 83         [24] 5268 	mov	dph,(_addr1 + 1)
      00175E 12 0D 06         [24] 5269 	lcall	_HEXtoASCII_16write
                                   5270 ;	ECEN4330Lab7.c:1582: delay(300);
      001761 90 01 2C         [24] 5271 	mov	dptr,#0x012c
      001764 12 00 BF         [24] 5272 	lcall	_delay
                                   5273 ;	ECEN4330Lab7.c:1583: resetLCD();
      001767 12 0D ED         [24] 5274 	lcall	_resetLCD
                                   5275 ;	ECEN4330Lab7.c:1584: LCD_string_write("Returning to\nmain menu.");
      00176A 90 29 C0         [24] 5276 	mov	dptr,#___str_15
      00176D 75 F0 80         [24] 5277 	mov	b,#0x80
      001770 12 0A 5F         [24] 5278 	lcall	_LCD_string_write
                                   5279 ;	ECEN4330Lab7.c:1585: delay(200);
      001773 90 00 C8         [24] 5280 	mov	dptr,#0x00c8
                                   5281 ;	ECEN4330Lab7.c:1587: }
      001776 02 00 BF         [24] 5282 	ljmp	_delay
                                   5283 ;------------------------------------------------------------
                                   5284 ;Allocation info for local variables in function 'DUMP_display'
                                   5285 ;------------------------------------------------------------
                                   5286 ;i                         Allocated to registers r6 r7 
                                   5287 ;j                         Allocated to registers r4 r5 
                                   5288 ;------------------------------------------------------------
                                   5289 ;	ECEN4330Lab7.c:1595: void DUMP_display(){
                                   5290 ;	-----------------------------------------
                                   5291 ;	 function DUMP_display
                                   5292 ;	-----------------------------------------
      001779                       5293 _DUMP_display:
                                   5294 ;	ECEN4330Lab7.c:1598: currAddr1 = 0;              // Page Count
      001779 E4               [12] 5295 	clr	a
      00177A F5 4C            [12] 5296 	mov	_currAddr1,a
      00177C F5 4D            [12] 5297 	mov	(_currAddr1 + 1),a
                                   5298 ;	ECEN4330Lab7.c:1599: dataEnd = 0;
                                   5299 ;	1-genFromRTrack replaced	mov	_dataEnd,#0x00
      00177E F5 3F            [12] 5300 	mov	_dataEnd,a
                                   5301 ;	ECEN4330Lab7.c:1600: addr2 = 0;					// Prev data count
      001780 F5 46            [12] 5302 	mov	_addr2,a
      001782 F5 47            [12] 5303 	mov	(_addr2 + 1),a
                                   5304 ;	ECEN4330Lab7.c:1602: currAddr0 = addr0;          // Set current address
      001784 85 42 4A         [24] 5305 	mov	_currAddr0,_addr0
      001787 85 43 4B         [24] 5306 	mov	(_currAddr0 + 1),(_addr0 + 1)
                                   5307 ;	ECEN4330Lab7.c:1604: do{
      00178A                       5308 00134$:
                                   5309 ;	ECEN4330Lab7.c:1605: resetLCD();
      00178A 12 0D ED         [24] 5310 	lcall	_resetLCD
                                   5311 ;	ECEN4330Lab7.c:1606: setTextSize(2);
      00178D 75 82 02         [24] 5312 	mov	dpl,#0x02
      001790 12 03 7D         [24] 5313 	lcall	_setTextSize
                                   5314 ;	ECEN4330Lab7.c:1607: LCD_string_write("\n");
      001793 90 2B 93         [24] 5315 	mov	dptr,#___str_33
      001796 75 F0 80         [24] 5316 	mov	b,#0x80
      001799 12 0A 5F         [24] 5317 	lcall	_LCD_string_write
                                   5318 ;	ECEN4330Lab7.c:1610: if(dataSize >= 10){
      00179C C3               [12] 5319 	clr	c
      00179D E5 3C            [12] 5320 	mov	a,_dataSize
      00179F 94 0A            [12] 5321 	subb	a,#0x0a
      0017A1 E5 3D            [12] 5322 	mov	a,(_dataSize + 1)
      0017A3 94 00            [12] 5323 	subb	a,#0x00
      0017A5 50 03            [24] 5324 	jnc	00258$
      0017A7 02 18 48         [24] 5325 	ljmp	00119$
      0017AA                       5326 00258$:
                                   5327 ;	ECEN4330Lab7.c:1611: addr2 = 10;
      0017AA 75 46 0A         [24] 5328 	mov	_addr2,#0x0a
      0017AD 75 47 00         [24] 5329 	mov	(_addr2 + 1),#0x00
                                   5330 ;	ECEN4330Lab7.c:1613: for(i = 0; i < 10; i++){
      0017B0 7E 00            [12] 5331 	mov	r6,#0x00
      0017B2 7F 00            [12] 5332 	mov	r7,#0x00
      0017B4                       5333 00140$:
                                   5334 ;	ECEN4330Lab7.c:1614: HEXtoASCII_16write(currAddr0);
      0017B4 85 4A 82         [24] 5335 	mov	dpl,_currAddr0
      0017B7 85 4B 83         [24] 5336 	mov	dph,(_currAddr0 + 1)
      0017BA C0 07            [24] 5337 	push	ar7
      0017BC C0 06            [24] 5338 	push	ar6
      0017BE 12 0D 06         [24] 5339 	lcall	_HEXtoASCII_16write
                                   5340 ;	ECEN4330Lab7.c:1615: LCD_string_write(": 0x");
      0017C1 90 29 BB         [24] 5341 	mov	dptr,#___str_14
      0017C4 75 F0 80         [24] 5342 	mov	b,#0x80
      0017C7 12 0A 5F         [24] 5343 	lcall	_LCD_string_write
      0017CA D0 06            [24] 5344 	pop	ar6
      0017CC D0 07            [24] 5345 	pop	ar7
                                   5346 ;	ECEN4330Lab7.c:1616: for(j = 0; j < dataType; j++){
      0017CE 7C 00            [12] 5347 	mov	r4,#0x00
      0017D0 7D 00            [12] 5348 	mov	r5,#0x00
      0017D2                       5349 00138$:
      0017D2 AA 3B            [24] 5350 	mov	r2,_dataType
      0017D4 7B 00            [12] 5351 	mov	r3,#0x00
      0017D6 C3               [12] 5352 	clr	c
      0017D7 EC               [12] 5353 	mov	a,r4
      0017D8 9A               [12] 5354 	subb	a,r2
      0017D9 ED               [12] 5355 	mov	a,r5
      0017DA 64 80            [12] 5356 	xrl	a,#0x80
      0017DC 8B F0            [24] 5357 	mov	b,r3
      0017DE 63 F0 80         [24] 5358 	xrl	b,#0x80
      0017E1 95 F0            [12] 5359 	subb	a,b
      0017E3 50 2B            [24] 5360 	jnc	00101$
                                   5361 ;	ECEN4330Lab7.c:1617: HEXtoASCII_8write(RAMread(currAddr0));
      0017E5 85 4A 82         [24] 5362 	mov	dpl,_currAddr0
      0017E8 85 4B 83         [24] 5363 	mov	dph,(_currAddr0 + 1)
      0017EB C0 07            [24] 5364 	push	ar7
      0017ED C0 06            [24] 5365 	push	ar6
      0017EF C0 05            [24] 5366 	push	ar5
      0017F1 C0 04            [24] 5367 	push	ar4
      0017F3 12 0D DA         [24] 5368 	lcall	_RAMread
      0017F6 12 0C C9         [24] 5369 	lcall	_HEXtoASCII_8write
      0017F9 D0 04            [24] 5370 	pop	ar4
      0017FB D0 05            [24] 5371 	pop	ar5
      0017FD D0 06            [24] 5372 	pop	ar6
      0017FF D0 07            [24] 5373 	pop	ar7
                                   5374 ;	ECEN4330Lab7.c:1618: currAddr0++;
      001801 05 4A            [12] 5375 	inc	_currAddr0
      001803 E4               [12] 5376 	clr	a
      001804 B5 4A 02         [24] 5377 	cjne	a,_currAddr0,00260$
      001807 05 4B            [12] 5378 	inc	(_currAddr0 + 1)
      001809                       5379 00260$:
                                   5380 ;	ECEN4330Lab7.c:1616: for(j = 0; j < dataType; j++){
      001809 0C               [12] 5381 	inc	r4
      00180A BC 00 C5         [24] 5382 	cjne	r4,#0x00,00138$
      00180D 0D               [12] 5383 	inc	r5
      00180E 80 C2            [24] 5384 	sjmp	00138$
      001810                       5385 00101$:
                                   5386 ;	ECEN4330Lab7.c:1620: LCD_string_write("\n");
      001810 90 2B 93         [24] 5387 	mov	dptr,#___str_33
      001813 75 F0 80         [24] 5388 	mov	b,#0x80
      001816 C0 07            [24] 5389 	push	ar7
      001818 C0 06            [24] 5390 	push	ar6
      00181A 12 0A 5F         [24] 5391 	lcall	_LCD_string_write
      00181D D0 06            [24] 5392 	pop	ar6
      00181F D0 07            [24] 5393 	pop	ar7
                                   5394 ;	ECEN4330Lab7.c:1621: dataSize--;
      001821 15 3C            [12] 5395 	dec	_dataSize
      001823 74 FF            [12] 5396 	mov	a,#0xff
      001825 B5 3C 02         [24] 5397 	cjne	a,_dataSize,00262$
      001828 15 3D            [12] 5398 	dec	(_dataSize + 1)
      00182A                       5399 00262$:
                                   5400 ;	ECEN4330Lab7.c:1613: for(i = 0; i < 10; i++){
      00182A 0E               [12] 5401 	inc	r6
      00182B BE 00 01         [24] 5402 	cjne	r6,#0x00,00263$
      00182E 0F               [12] 5403 	inc	r7
      00182F                       5404 00263$:
      00182F C3               [12] 5405 	clr	c
      001830 EE               [12] 5406 	mov	a,r6
      001831 94 0A            [12] 5407 	subb	a,#0x0a
      001833 EF               [12] 5408 	mov	a,r7
      001834 64 80            [12] 5409 	xrl	a,#0x80
      001836 94 80            [12] 5410 	subb	a,#0x80
      001838 50 03            [24] 5411 	jnc	00264$
      00183A 02 17 B4         [24] 5412 	ljmp	00140$
      00183D                       5413 00264$:
                                   5414 ;	ECEN4330Lab7.c:1623: currAddr1++;        // Next page
      00183D 05 4C            [12] 5415 	inc	_currAddr1
      00183F E4               [12] 5416 	clr	a
      001840 B5 4C 02         [24] 5417 	cjne	a,_currAddr1,00265$
      001843 05 4D            [12] 5418 	inc	(_currAddr1 + 1)
      001845                       5419 00265$:
      001845 02 19 AD         [24] 5420 	ljmp	00120$
      001848                       5421 00119$:
                                   5422 ;	ECEN4330Lab7.c:1627: else if(dataSize > 0 && dataSize < 10){
      001848 E5 3C            [12] 5423 	mov	a,_dataSize
      00184A 45 3D            [12] 5424 	orl	a,(_dataSize + 1)
      00184C 70 03            [24] 5425 	jnz	00266$
      00184E 02 19 37         [24] 5426 	ljmp	00115$
      001851                       5427 00266$:
      001851 C3               [12] 5428 	clr	c
      001852 E5 3C            [12] 5429 	mov	a,_dataSize
      001854 94 0A            [12] 5430 	subb	a,#0x0a
      001856 E5 3D            [12] 5431 	mov	a,(_dataSize + 1)
      001858 94 00            [12] 5432 	subb	a,#0x00
      00185A 40 03            [24] 5433 	jc	00267$
      00185C 02 19 37         [24] 5434 	ljmp	00115$
      00185F                       5435 00267$:
                                   5436 ;	ECEN4330Lab7.c:1628: addr2 = dataSize;
      00185F 85 3C 46         [24] 5437 	mov	_addr2,_dataSize
      001862 85 3D 47         [24] 5438 	mov	(_addr2 + 1),(_dataSize + 1)
                                   5439 ;	ECEN4330Lab7.c:1630: while(dataSize > 0){
      001865                       5440 00104$:
      001865 E5 3C            [12] 5441 	mov	a,_dataSize
      001867 45 3D            [12] 5442 	orl	a,(_dataSize + 1)
      001869 60 60            [24] 5443 	jz	00106$
                                   5444 ;	ECEN4330Lab7.c:1631: HEXtoASCII_16write(currAddr0);
      00186B 85 4A 82         [24] 5445 	mov	dpl,_currAddr0
      00186E 85 4B 83         [24] 5446 	mov	dph,(_currAddr0 + 1)
      001871 12 0D 06         [24] 5447 	lcall	_HEXtoASCII_16write
                                   5448 ;	ECEN4330Lab7.c:1632: LCD_string_write(": 0x");
      001874 90 29 BB         [24] 5449 	mov	dptr,#___str_14
      001877 75 F0 80         [24] 5450 	mov	b,#0x80
      00187A 12 0A 5F         [24] 5451 	lcall	_LCD_string_write
                                   5452 ;	ECEN4330Lab7.c:1633: for(j = 0; j < dataType; j++){
      00187D 7E 00            [12] 5453 	mov	r6,#0x00
      00187F 7F 00            [12] 5454 	mov	r7,#0x00
      001881                       5455 00143$:
      001881 AC 3B            [24] 5456 	mov	r4,_dataType
      001883 7D 00            [12] 5457 	mov	r5,#0x00
      001885 C3               [12] 5458 	clr	c
      001886 EE               [12] 5459 	mov	a,r6
      001887 9C               [12] 5460 	subb	a,r4
      001888 EF               [12] 5461 	mov	a,r7
      001889 64 80            [12] 5462 	xrl	a,#0x80
      00188B 8D F0            [24] 5463 	mov	b,r5
      00188D 63 F0 80         [24] 5464 	xrl	b,#0x80
      001890 95 F0            [12] 5465 	subb	a,b
      001892 50 23            [24] 5466 	jnc	00103$
                                   5467 ;	ECEN4330Lab7.c:1634: HEXtoASCII_8write(RAMread(currAddr0));
      001894 85 4A 82         [24] 5468 	mov	dpl,_currAddr0
      001897 85 4B 83         [24] 5469 	mov	dph,(_currAddr0 + 1)
      00189A C0 07            [24] 5470 	push	ar7
      00189C C0 06            [24] 5471 	push	ar6
      00189E 12 0D DA         [24] 5472 	lcall	_RAMread
      0018A1 12 0C C9         [24] 5473 	lcall	_HEXtoASCII_8write
      0018A4 D0 06            [24] 5474 	pop	ar6
      0018A6 D0 07            [24] 5475 	pop	ar7
                                   5476 ;	ECEN4330Lab7.c:1635: currAddr0++;
      0018A8 05 4A            [12] 5477 	inc	_currAddr0
      0018AA E4               [12] 5478 	clr	a
      0018AB B5 4A 02         [24] 5479 	cjne	a,_currAddr0,00270$
      0018AE 05 4B            [12] 5480 	inc	(_currAddr0 + 1)
      0018B0                       5481 00270$:
                                   5482 ;	ECEN4330Lab7.c:1633: for(j = 0; j < dataType; j++){
      0018B0 0E               [12] 5483 	inc	r6
      0018B1 BE 00 CD         [24] 5484 	cjne	r6,#0x00,00143$
      0018B4 0F               [12] 5485 	inc	r7
      0018B5 80 CA            [24] 5486 	sjmp	00143$
      0018B7                       5487 00103$:
                                   5488 ;	ECEN4330Lab7.c:1637: LCD_string_write("\n");
      0018B7 90 2B 93         [24] 5489 	mov	dptr,#___str_33
      0018BA 75 F0 80         [24] 5490 	mov	b,#0x80
      0018BD 12 0A 5F         [24] 5491 	lcall	_LCD_string_write
                                   5492 ;	ECEN4330Lab7.c:1638: dataSize--;
      0018C0 15 3C            [12] 5493 	dec	_dataSize
      0018C2 74 FF            [12] 5494 	mov	a,#0xff
      0018C4 B5 3C 02         [24] 5495 	cjne	a,_dataSize,00272$
      0018C7 15 3D            [12] 5496 	dec	(_dataSize + 1)
      0018C9                       5497 00272$:
      0018C9 80 9A            [24] 5498 	sjmp	00104$
      0018CB                       5499 00106$:
                                   5500 ;	ECEN4330Lab7.c:1640: if(addr3 > 0){
      0018CB E5 48            [12] 5501 	mov	a,_addr3
      0018CD 45 49            [12] 5502 	orl	a,(_addr3 + 1)
      0018CF 60 5C            [24] 5503 	jz	00109$
                                   5504 ;	ECEN4330Lab7.c:1641: HEXtoASCII_16write(currAddr0);
      0018D1 85 4A 82         [24] 5505 	mov	dpl,_currAddr0
      0018D4 85 4B 83         [24] 5506 	mov	dph,(_currAddr0 + 1)
      0018D7 12 0D 06         [24] 5507 	lcall	_HEXtoASCII_16write
                                   5508 ;	ECEN4330Lab7.c:1642: LCD_string_write(": 0x");
      0018DA 90 29 BB         [24] 5509 	mov	dptr,#___str_14
      0018DD 75 F0 80         [24] 5510 	mov	b,#0x80
      0018E0 12 0A 5F         [24] 5511 	lcall	_LCD_string_write
                                   5512 ;	ECEN4330Lab7.c:1643: for(j = 0; j < addr3; j++){
      0018E3 7E 00            [12] 5513 	mov	r6,#0x00
      0018E5 7F 00            [12] 5514 	mov	r7,#0x00
      0018E7                       5515 00146$:
      0018E7 8E 04            [24] 5516 	mov	ar4,r6
      0018E9 8F 05            [24] 5517 	mov	ar5,r7
      0018EB C3               [12] 5518 	clr	c
      0018EC EC               [12] 5519 	mov	a,r4
      0018ED 95 48            [12] 5520 	subb	a,_addr3
      0018EF ED               [12] 5521 	mov	a,r5
      0018F0 95 49            [12] 5522 	subb	a,(_addr3 + 1)
      0018F2 50 23            [24] 5523 	jnc	00107$
                                   5524 ;	ECEN4330Lab7.c:1644: HEXtoASCII_8write(RAMread(currAddr0));
      0018F4 85 4A 82         [24] 5525 	mov	dpl,_currAddr0
      0018F7 85 4B 83         [24] 5526 	mov	dph,(_currAddr0 + 1)
      0018FA C0 07            [24] 5527 	push	ar7
      0018FC C0 06            [24] 5528 	push	ar6
      0018FE 12 0D DA         [24] 5529 	lcall	_RAMread
      001901 12 0C C9         [24] 5530 	lcall	_HEXtoASCII_8write
      001904 D0 06            [24] 5531 	pop	ar6
      001906 D0 07            [24] 5532 	pop	ar7
                                   5533 ;	ECEN4330Lab7.c:1645: currAddr0++;
      001908 05 4A            [12] 5534 	inc	_currAddr0
      00190A E4               [12] 5535 	clr	a
      00190B B5 4A 02         [24] 5536 	cjne	a,_currAddr0,00275$
      00190E 05 4B            [12] 5537 	inc	(_currAddr0 + 1)
      001910                       5538 00275$:
                                   5539 ;	ECEN4330Lab7.c:1643: for(j = 0; j < addr3; j++){
      001910 0E               [12] 5540 	inc	r6
      001911 BE 00 D3         [24] 5541 	cjne	r6,#0x00,00146$
      001914 0F               [12] 5542 	inc	r7
      001915 80 D0            [24] 5543 	sjmp	00146$
      001917                       5544 00107$:
                                   5545 ;	ECEN4330Lab7.c:1647: currAddr0 -= addr3;
      001917 E5 4A            [12] 5546 	mov	a,_currAddr0
      001919 C3               [12] 5547 	clr	c
      00191A 95 48            [12] 5548 	subb	a,_addr3
      00191C F5 4A            [12] 5549 	mov	_currAddr0,a
      00191E E5 4B            [12] 5550 	mov	a,(_currAddr0 + 1)
      001920 95 49            [12] 5551 	subb	a,(_addr3 + 1)
      001922 F5 4B            [12] 5552 	mov	(_currAddr0 + 1),a
                                   5553 ;	ECEN4330Lab7.c:1648: LCD_string_write("\n");
      001924 90 2B 93         [24] 5554 	mov	dptr,#___str_33
      001927 75 F0 80         [24] 5555 	mov	b,#0x80
      00192A 12 0A 5F         [24] 5556 	lcall	_LCD_string_write
      00192D                       5557 00109$:
                                   5558 ;	ECEN4330Lab7.c:1650: currAddr1++; 
      00192D 05 4C            [12] 5559 	inc	_currAddr1
      00192F E4               [12] 5560 	clr	a
      001930 B5 4C 7A         [24] 5561 	cjne	a,_currAddr1,00120$
      001933 05 4D            [12] 5562 	inc	(_currAddr1 + 1)
      001935 80 76            [24] 5563 	sjmp	00120$
      001937                       5564 00115$:
                                   5565 ;	ECEN4330Lab7.c:1653: else if(dataSize == 0 && addr3 > 0){
      001937 E5 3C            [12] 5566 	mov	a,_dataSize
      001939 45 3D            [12] 5567 	orl	a,(_dataSize + 1)
      00193B 70 70            [24] 5568 	jnz	00120$
      00193D E5 48            [12] 5569 	mov	a,_addr3
      00193F 45 49            [12] 5570 	orl	a,(_addr3 + 1)
      001941 60 6A            [24] 5571 	jz	00120$
                                   5572 ;	ECEN4330Lab7.c:1654: addr2 = dataSize;
      001943 85 3C 46         [24] 5573 	mov	_addr2,_dataSize
      001946 85 3D 47         [24] 5574 	mov	(_addr2 + 1),(_dataSize + 1)
                                   5575 ;	ECEN4330Lab7.c:1655: HEXtoASCII_16write(currAddr0);
      001949 85 4A 82         [24] 5576 	mov	dpl,_currAddr0
      00194C 85 4B 83         [24] 5577 	mov	dph,(_currAddr0 + 1)
      00194F 12 0D 06         [24] 5578 	lcall	_HEXtoASCII_16write
                                   5579 ;	ECEN4330Lab7.c:1656: LCD_string_write(": 0x");
      001952 90 29 BB         [24] 5580 	mov	dptr,#___str_14
      001955 75 F0 80         [24] 5581 	mov	b,#0x80
      001958 12 0A 5F         [24] 5582 	lcall	_LCD_string_write
                                   5583 ;	ECEN4330Lab7.c:1657: for(j = 0; j < addr3; j++){
      00195B 7E 00            [12] 5584 	mov	r6,#0x00
      00195D 7F 00            [12] 5585 	mov	r7,#0x00
      00195F                       5586 00149$:
      00195F 8E 04            [24] 5587 	mov	ar4,r6
      001961 8F 05            [24] 5588 	mov	ar5,r7
      001963 C3               [12] 5589 	clr	c
      001964 EC               [12] 5590 	mov	a,r4
      001965 95 48            [12] 5591 	subb	a,_addr3
      001967 ED               [12] 5592 	mov	a,r5
      001968 95 49            [12] 5593 	subb	a,(_addr3 + 1)
      00196A 50 23            [24] 5594 	jnc	00110$
                                   5595 ;	ECEN4330Lab7.c:1658: HEXtoASCII_8write(RAMread(currAddr0));
      00196C 85 4A 82         [24] 5596 	mov	dpl,_currAddr0
      00196F 85 4B 83         [24] 5597 	mov	dph,(_currAddr0 + 1)
      001972 C0 07            [24] 5598 	push	ar7
      001974 C0 06            [24] 5599 	push	ar6
      001976 12 0D DA         [24] 5600 	lcall	_RAMread
      001979 12 0C C9         [24] 5601 	lcall	_HEXtoASCII_8write
      00197C D0 06            [24] 5602 	pop	ar6
      00197E D0 07            [24] 5603 	pop	ar7
                                   5604 ;	ECEN4330Lab7.c:1659: currAddr0++;
      001980 05 4A            [12] 5605 	inc	_currAddr0
      001982 E4               [12] 5606 	clr	a
      001983 B5 4A 02         [24] 5607 	cjne	a,_currAddr0,00281$
      001986 05 4B            [12] 5608 	inc	(_currAddr0 + 1)
      001988                       5609 00281$:
                                   5610 ;	ECEN4330Lab7.c:1657: for(j = 0; j < addr3; j++){
      001988 0E               [12] 5611 	inc	r6
      001989 BE 00 D3         [24] 5612 	cjne	r6,#0x00,00149$
      00198C 0F               [12] 5613 	inc	r7
      00198D 80 D0            [24] 5614 	sjmp	00149$
      00198F                       5615 00110$:
                                   5616 ;	ECEN4330Lab7.c:1661: LCD_string_write("\n");
      00198F 90 2B 93         [24] 5617 	mov	dptr,#___str_33
      001992 75 F0 80         [24] 5618 	mov	b,#0x80
      001995 12 0A 5F         [24] 5619 	lcall	_LCD_string_write
                                   5620 ;	ECEN4330Lab7.c:1662: currAddr1++; 
      001998 05 4C            [12] 5621 	inc	_currAddr1
      00199A E4               [12] 5622 	clr	a
      00199B B5 4C 02         [24] 5623 	cjne	a,_currAddr1,00283$
      00199E 05 4D            [12] 5624 	inc	(_currAddr1 + 1)
      0019A0                       5625 00283$:
                                   5626 ;	ECEN4330Lab7.c:1663: currAddr0 -= addr3;
      0019A0 E5 4A            [12] 5627 	mov	a,_currAddr0
      0019A2 C3               [12] 5628 	clr	c
      0019A3 95 48            [12] 5629 	subb	a,_addr3
      0019A5 F5 4A            [12] 5630 	mov	_currAddr0,a
      0019A7 E5 4B            [12] 5631 	mov	a,(_currAddr0 + 1)
      0019A9 95 49            [12] 5632 	subb	a,(_addr3 + 1)
      0019AB F5 4B            [12] 5633 	mov	(_currAddr0 + 1),a
      0019AD                       5634 00120$:
                                   5635 ;	ECEN4330Lab7.c:1667: setCursor(0, 250);
      0019AD 75 08 FA         [24] 5636 	mov	_setCursor_PARM_2,#0xfa
      0019B0 75 09 00         [24] 5637 	mov	(_setCursor_PARM_2 + 1),#0x00
      0019B3 90 00 00         [24] 5638 	mov	dptr,#0x0000
      0019B6 12 03 63         [24] 5639 	lcall	_setCursor
                                   5640 ;	ECEN4330Lab7.c:1668: LCD_string_write("  (0) - Next Page\n  (1) - Prev Page\n  (E) - END\n");
      0019B9 90 2B 95         [24] 5641 	mov	dptr,#___str_34
      0019BC 75 F0 80         [24] 5642 	mov	b,#0x80
      0019BF 12 0A 5F         [24] 5643 	lcall	_LCD_string_write
                                   5644 ;	ECEN4330Lab7.c:1669: HEXtoASCII_16write(currAddr1);
      0019C2 85 4C 82         [24] 5645 	mov	dpl,_currAddr1
      0019C5 85 4D 83         [24] 5646 	mov	dph,(_currAddr1 + 1)
      0019C8 12 0D 06         [24] 5647 	lcall	_HEXtoASCII_16write
                                   5648 ;	ECEN4330Lab7.c:1670: key = keyDetect();
      0019CB 12 0A 9E         [24] 5649 	lcall	_keyDetect
      0019CE 85 82 37         [24] 5650 	mov	_key,dpl
                                   5651 ;	ECEN4330Lab7.c:1671: switch (key)
      0019D1 74 30            [12] 5652 	mov	a,#0x30
      0019D3 B5 37 02         [24] 5653 	cjne	a,_key,00284$
      0019D6 80 12            [24] 5654 	sjmp	00121$
      0019D8                       5655 00284$:
      0019D8 74 31            [12] 5656 	mov	a,#0x31
      0019DA B5 37 02         [24] 5657 	cjne	a,_key,00285$
      0019DD 80 65            [24] 5658 	sjmp	00125$
      0019DF                       5659 00285$:
      0019DF 74 45            [12] 5660 	mov	a,#0x45
      0019E1 B5 37 03         [24] 5661 	cjne	a,_key,00286$
      0019E4 02 1A E1         [24] 5662 	ljmp	00129$
      0019E7                       5663 00286$:
      0019E7 02 1A F8         [24] 5664 	ljmp	00130$
                                   5665 ;	ECEN4330Lab7.c:1675: case '0':
      0019EA                       5666 00121$:
                                   5667 ;	ECEN4330Lab7.c:1676: validInput = 1;
      0019EA 75 3E 01         [24] 5668 	mov	_validInput,#0x01
                                   5669 ;	ECEN4330Lab7.c:1679: if(dataSize > 0){
      0019ED E5 3C            [12] 5670 	mov	a,_dataSize
      0019EF 45 3D            [12] 5671 	orl	a,(_dataSize + 1)
      0019F1 60 06            [24] 5672 	jz	00123$
                                   5673 ;	ECEN4330Lab7.c:1680: dataEnd = 0;
      0019F3 75 3F 00         [24] 5674 	mov	_dataEnd,#0x00
      0019F6 02 1B 3C         [24] 5675 	ljmp	00135$
      0019F9                       5676 00123$:
                                   5677 ;	ECEN4330Lab7.c:1686: dataEnd = 0;
      0019F9 75 3F 00         [24] 5678 	mov	_dataEnd,#0x00
                                   5679 ;	ECEN4330Lab7.c:1687: currAddr0 -= (addr2 * dataType); // 1st address of previous page displayed
      0019FC 85 3B 08         [24] 5680 	mov	__mulint_PARM_2,_dataType
      0019FF 75 09 00         [24] 5681 	mov	(__mulint_PARM_2 + 1),#0x00
      001A02 85 46 82         [24] 5682 	mov	dpl,_addr2
      001A05 85 47 83         [24] 5683 	mov	dph,(_addr2 + 1)
      001A08 12 23 17         [24] 5684 	lcall	__mulint
      001A0B AE 82            [24] 5685 	mov	r6,dpl
      001A0D AF 83            [24] 5686 	mov	r7,dph
      001A0F E5 4A            [12] 5687 	mov	a,_currAddr0
      001A11 C3               [12] 5688 	clr	c
      001A12 9E               [12] 5689 	subb	a,r6
      001A13 F5 4A            [12] 5690 	mov	_currAddr0,a
      001A15 E5 4B            [12] 5691 	mov	a,(_currAddr0 + 1)
      001A17 9F               [12] 5692 	subb	a,r7
      001A18 F5 4B            [12] 5693 	mov	(_currAddr0 + 1),a
                                   5694 ;	ECEN4330Lab7.c:1688: dataSize += addr2;  // restore data size of previous page
      001A1A E5 46            [12] 5695 	mov	a,_addr2
      001A1C 25 3C            [12] 5696 	add	a,_dataSize
      001A1E F5 3C            [12] 5697 	mov	_dataSize,a
      001A20 E5 47            [12] 5698 	mov	a,(_addr2 + 1)
      001A22 35 3D            [12] 5699 	addc	a,(_dataSize + 1)
      001A24 F5 3D            [12] 5700 	mov	(_dataSize + 1),a
                                   5701 ;	ECEN4330Lab7.c:1689: currAddr1--;
      001A26 15 4C            [12] 5702 	dec	_currAddr1
      001A28 74 FF            [12] 5703 	mov	a,#0xff
      001A2A B5 4C 02         [24] 5704 	cjne	a,_currAddr1,00288$
      001A2D 15 4D            [12] 5705 	dec	(_currAddr1 + 1)
      001A2F                       5706 00288$:
                                   5707 ;	ECEN4330Lab7.c:1690: resetLCD();
      001A2F 12 0D ED         [24] 5708 	lcall	_resetLCD
                                   5709 ;	ECEN4330Lab7.c:1691: LCD_string_write("\nEnd of Data.");
      001A32 90 2B C6         [24] 5710 	mov	dptr,#___str_35
      001A35 75 F0 80         [24] 5711 	mov	b,#0x80
      001A38 12 0A 5F         [24] 5712 	lcall	_LCD_string_write
                                   5713 ;	ECEN4330Lab7.c:1692: delay(200);
      001A3B 90 00 C8         [24] 5714 	mov	dptr,#0x00c8
      001A3E 12 00 BF         [24] 5715 	lcall	_delay
                                   5716 ;	ECEN4330Lab7.c:1694: break;
      001A41 02 1B 3C         [24] 5717 	ljmp	00135$
                                   5718 ;	ECEN4330Lab7.c:1697: case '1':
      001A44                       5719 00125$:
                                   5720 ;	ECEN4330Lab7.c:1700: if(currAddr1 > 1){
      001A44 C3               [12] 5721 	clr	c
      001A45 74 01            [12] 5722 	mov	a,#0x01
      001A47 95 4C            [12] 5723 	subb	a,_currAddr1
      001A49 E4               [12] 5724 	clr	a
      001A4A 95 4D            [12] 5725 	subb	a,(_currAddr1 + 1)
      001A4C 50 49            [24] 5726 	jnc	00127$
                                   5727 ;	ECEN4330Lab7.c:1701: dataEnd = 0;
      001A4E 75 3F 00         [24] 5728 	mov	_dataEnd,#0x00
                                   5729 ;	ECEN4330Lab7.c:1702: currAddr0 -= ((addr2 + 10) * dataType);
      001A51 74 0A            [12] 5730 	mov	a,#0x0a
      001A53 25 46            [12] 5731 	add	a,_addr2
      001A55 FE               [12] 5732 	mov	r6,a
      001A56 E4               [12] 5733 	clr	a
      001A57 35 47            [12] 5734 	addc	a,(_addr2 + 1)
      001A59 FF               [12] 5735 	mov	r7,a
      001A5A 85 3B 08         [24] 5736 	mov	__mulint_PARM_2,_dataType
      001A5D 75 09 00         [24] 5737 	mov	(__mulint_PARM_2 + 1),#0x00
      001A60 8E 82            [24] 5738 	mov	dpl,r6
      001A62 8F 83            [24] 5739 	mov	dph,r7
      001A64 C0 07            [24] 5740 	push	ar7
      001A66 C0 06            [24] 5741 	push	ar6
      001A68 12 23 17         [24] 5742 	lcall	__mulint
      001A6B AC 82            [24] 5743 	mov	r4,dpl
      001A6D AD 83            [24] 5744 	mov	r5,dph
      001A6F D0 06            [24] 5745 	pop	ar6
      001A71 D0 07            [24] 5746 	pop	ar7
      001A73 E5 4A            [12] 5747 	mov	a,_currAddr0
      001A75 C3               [12] 5748 	clr	c
      001A76 9C               [12] 5749 	subb	a,r4
      001A77 F5 4A            [12] 5750 	mov	_currAddr0,a
      001A79 E5 4B            [12] 5751 	mov	a,(_currAddr0 + 1)
      001A7B 9D               [12] 5752 	subb	a,r5
      001A7C F5 4B            [12] 5753 	mov	(_currAddr0 + 1),a
                                   5754 ;	ECEN4330Lab7.c:1703: currAddr1 -= 2;
      001A7E E5 4C            [12] 5755 	mov	a,_currAddr1
      001A80 24 FE            [12] 5756 	add	a,#0xfe
      001A82 F5 4C            [12] 5757 	mov	_currAddr1,a
      001A84 E5 4D            [12] 5758 	mov	a,(_currAddr1 + 1)
      001A86 34 FF            [12] 5759 	addc	a,#0xff
      001A88 F5 4D            [12] 5760 	mov	(_currAddr1 + 1),a
                                   5761 ;	ECEN4330Lab7.c:1704: dataSize += (addr2 + 10);
      001A8A EE               [12] 5762 	mov	a,r6
      001A8B 25 3C            [12] 5763 	add	a,_dataSize
      001A8D F5 3C            [12] 5764 	mov	_dataSize,a
      001A8F EF               [12] 5765 	mov	a,r7
      001A90 35 3D            [12] 5766 	addc	a,(_dataSize + 1)
      001A92 F5 3D            [12] 5767 	mov	(_dataSize + 1),a
      001A94 02 1B 3C         [24] 5768 	ljmp	00135$
      001A97                       5769 00127$:
                                   5770 ;	ECEN4330Lab7.c:1709: dataEnd = 0;
      001A97 75 3F 00         [24] 5771 	mov	_dataEnd,#0x00
                                   5772 ;	ECEN4330Lab7.c:1710: resetLCD();
      001A9A 12 0D ED         [24] 5773 	lcall	_resetLCD
                                   5774 ;	ECEN4330Lab7.c:1711: LCD_string_write("End of Data");
      001A9D 90 2B D4         [24] 5775 	mov	dptr,#___str_36
      001AA0 75 F0 80         [24] 5776 	mov	b,#0x80
      001AA3 12 0A 5F         [24] 5777 	lcall	_LCD_string_write
                                   5778 ;	ECEN4330Lab7.c:1712: delay(200);
      001AA6 90 00 C8         [24] 5779 	mov	dptr,#0x00c8
      001AA9 12 00 BF         [24] 5780 	lcall	_delay
                                   5781 ;	ECEN4330Lab7.c:1713: currAddr0 -= (addr2 * dataType);
      001AAC 85 3B 08         [24] 5782 	mov	__mulint_PARM_2,_dataType
      001AAF 75 09 00         [24] 5783 	mov	(__mulint_PARM_2 + 1),#0x00
      001AB2 85 46 82         [24] 5784 	mov	dpl,_addr2
      001AB5 85 47 83         [24] 5785 	mov	dph,(_addr2 + 1)
      001AB8 12 23 17         [24] 5786 	lcall	__mulint
      001ABB AE 82            [24] 5787 	mov	r6,dpl
      001ABD AF 83            [24] 5788 	mov	r7,dph
      001ABF E5 4A            [12] 5789 	mov	a,_currAddr0
      001AC1 C3               [12] 5790 	clr	c
      001AC2 9E               [12] 5791 	subb	a,r6
      001AC3 F5 4A            [12] 5792 	mov	_currAddr0,a
      001AC5 E5 4B            [12] 5793 	mov	a,(_currAddr0 + 1)
      001AC7 9F               [12] 5794 	subb	a,r7
      001AC8 F5 4B            [12] 5795 	mov	(_currAddr0 + 1),a
                                   5796 ;	ECEN4330Lab7.c:1714: currAddr1--;
      001ACA 15 4C            [12] 5797 	dec	_currAddr1
      001ACC 74 FF            [12] 5798 	mov	a,#0xff
      001ACE B5 4C 02         [24] 5799 	cjne	a,_currAddr1,00290$
      001AD1 15 4D            [12] 5800 	dec	(_currAddr1 + 1)
      001AD3                       5801 00290$:
                                   5802 ;	ECEN4330Lab7.c:1715: dataSize += addr2;
      001AD3 E5 46            [12] 5803 	mov	a,_addr2
      001AD5 25 3C            [12] 5804 	add	a,_dataSize
      001AD7 F5 3C            [12] 5805 	mov	_dataSize,a
      001AD9 E5 47            [12] 5806 	mov	a,(_addr2 + 1)
      001ADB 35 3D            [12] 5807 	addc	a,(_dataSize + 1)
      001ADD F5 3D            [12] 5808 	mov	(_dataSize + 1),a
                                   5809 ;	ECEN4330Lab7.c:1717: break;
                                   5810 ;	ECEN4330Lab7.c:1720: case 'E':
      001ADF 80 5B            [24] 5811 	sjmp	00135$
      001AE1                       5812 00129$:
                                   5813 ;	ECEN4330Lab7.c:1721: resetLCD();
      001AE1 12 0D ED         [24] 5814 	lcall	_resetLCD
                                   5815 ;	ECEN4330Lab7.c:1722: LCD_string_write("\nReturning to\nMain Menu.");
      001AE4 90 2B E0         [24] 5816 	mov	dptr,#___str_37
      001AE7 75 F0 80         [24] 5817 	mov	b,#0x80
      001AEA 12 0A 5F         [24] 5818 	lcall	_LCD_string_write
                                   5819 ;	ECEN4330Lab7.c:1723: delay(200);
      001AED 90 00 C8         [24] 5820 	mov	dptr,#0x00c8
      001AF0 12 00 BF         [24] 5821 	lcall	_delay
                                   5822 ;	ECEN4330Lab7.c:1724: dataEnd = 1;
      001AF3 75 3F 01         [24] 5823 	mov	_dataEnd,#0x01
                                   5824 ;	ECEN4330Lab7.c:1725: break;
                                   5825 ;	ECEN4330Lab7.c:1728: default:
      001AF6 80 44            [24] 5826 	sjmp	00135$
      001AF8                       5827 00130$:
                                   5828 ;	ECEN4330Lab7.c:1729: dataEnd = 0;
      001AF8 75 3F 00         [24] 5829 	mov	_dataEnd,#0x00
                                   5830 ;	ECEN4330Lab7.c:1730: invalidInput();
      001AFB 12 0E 15         [24] 5831 	lcall	_invalidInput
                                   5832 ;	ECEN4330Lab7.c:1731: if(addr2 > 0 ){
      001AFE E5 46            [12] 5833 	mov	a,_addr2
      001B00 45 47            [12] 5834 	orl	a,(_addr2 + 1)
      001B02 60 38            [24] 5835 	jz	00135$
                                   5836 ;	ECEN4330Lab7.c:1732: currAddr0 -= (addr2 * dataType);
      001B04 85 3B 08         [24] 5837 	mov	__mulint_PARM_2,_dataType
      001B07 75 09 00         [24] 5838 	mov	(__mulint_PARM_2 + 1),#0x00
      001B0A 85 46 82         [24] 5839 	mov	dpl,_addr2
      001B0D 85 47 83         [24] 5840 	mov	dph,(_addr2 + 1)
      001B10 12 23 17         [24] 5841 	lcall	__mulint
      001B13 AE 82            [24] 5842 	mov	r6,dpl
      001B15 AF 83            [24] 5843 	mov	r7,dph
      001B17 E5 4A            [12] 5844 	mov	a,_currAddr0
      001B19 C3               [12] 5845 	clr	c
      001B1A 9E               [12] 5846 	subb	a,r6
      001B1B F5 4A            [12] 5847 	mov	_currAddr0,a
      001B1D E5 4B            [12] 5848 	mov	a,(_currAddr0 + 1)
      001B1F 9F               [12] 5849 	subb	a,r7
      001B20 F5 4B            [12] 5850 	mov	(_currAddr0 + 1),a
                                   5851 ;	ECEN4330Lab7.c:1733: currAddr1 --;
      001B22 15 4C            [12] 5852 	dec	_currAddr1
      001B24 74 FF            [12] 5853 	mov	a,#0xff
      001B26 B5 4C 02         [24] 5854 	cjne	a,_currAddr1,00292$
      001B29 15 4D            [12] 5855 	dec	(_currAddr1 + 1)
      001B2B                       5856 00292$:
                                   5857 ;	ECEN4330Lab7.c:1734: dataSize += addr2;
      001B2B E5 46            [12] 5858 	mov	a,_addr2
      001B2D 25 3C            [12] 5859 	add	a,_dataSize
      001B2F F5 3C            [12] 5860 	mov	_dataSize,a
      001B31 E5 47            [12] 5861 	mov	a,(_addr2 + 1)
      001B33 35 3D            [12] 5862 	addc	a,(_dataSize + 1)
      001B35 F5 3D            [12] 5863 	mov	(_dataSize + 1),a
                                   5864 ;	ECEN4330Lab7.c:1735: addr2 = 0;
      001B37 E4               [12] 5865 	clr	a
      001B38 F5 46            [12] 5866 	mov	_addr2,a
      001B3A F5 47            [12] 5867 	mov	(_addr2 + 1),a
                                   5868 ;	ECEN4330Lab7.c:1738: }
      001B3C                       5869 00135$:
                                   5870 ;	ECEN4330Lab7.c:1739: } while(dataEnd == 0);
      001B3C E5 3F            [12] 5871 	mov	a,_dataEnd
      001B3E 70 03            [24] 5872 	jnz	00293$
      001B40 02 17 8A         [24] 5873 	ljmp	00134$
      001B43                       5874 00293$:
                                   5875 ;	ECEN4330Lab7.c:1740: }
      001B43 22               [24] 5876 	ret
                                   5877 ;------------------------------------------------------------
                                   5878 ;Allocation info for local variables in function 'DUMP'
                                   5879 ;------------------------------------------------------------
                                   5880 ;	ECEN4330Lab7.c:1748: void DUMP(){
                                   5881 ;	-----------------------------------------
                                   5882 ;	 function DUMP
                                   5883 ;	-----------------------------------------
      001B44                       5884 _DUMP:
                                   5885 ;	ECEN4330Lab7.c:1749: endAddrCalc = 0;
      001B44 E4               [12] 5886 	clr	a
      001B45 F5 55            [12] 5887 	mov	_endAddrCalc,a
      001B47 F5 56            [12] 5888 	mov	(_endAddrCalc + 1),a
      001B49 F5 57            [12] 5889 	mov	(_endAddrCalc + 2),a
      001B4B F5 58            [12] 5890 	mov	(_endAddrCalc + 3),a
                                   5891 ;	ECEN4330Lab7.c:1750: addr0 = 0;                      // Source Address
      001B4D F5 42            [12] 5892 	mov	_addr0,a
      001B4F F5 43            [12] 5893 	mov	(_addr0 + 1),a
                                   5894 ;	ECEN4330Lab7.c:1751: addr1 = 0;                      // Source End Address
      001B51 F5 44            [12] 5895 	mov	_addr1,a
      001B53 F5 45            [12] 5896 	mov	(_addr1 + 1),a
                                   5897 ;	ECEN4330Lab7.c:1752: dataType = 0;                   // Data Type
                                   5898 ;	1-genFromRTrack replaced	mov	_dataType,#0x00
      001B55 F5 3B            [12] 5899 	mov	_dataType,a
                                   5900 ;	ECEN4330Lab7.c:1753: dataSize = 0;                   // Data Size
      001B57 F5 3C            [12] 5901 	mov	_dataSize,a
      001B59 F5 3D            [12] 5902 	mov	(_dataSize + 1),a
                                   5903 ;	ECEN4330Lab7.c:1754: addr3 = 0;						// Remainder
      001B5B F5 48            [12] 5904 	mov	_addr3,a
      001B5D F5 49            [12] 5905 	mov	(_addr3 + 1),a
                                   5906 ;	ECEN4330Lab7.c:1757: resetLCD();
      001B5F 12 0D ED         [24] 5907 	lcall	_resetLCD
                                   5908 ;	ECEN4330Lab7.c:1758: LCD_string_write("\nEnter source\nstarting RAM\naddress:\n\n  0x____");
      001B62 90 2B F9         [24] 5909 	mov	dptr,#___str_38
      001B65 75 F0 80         [24] 5910 	mov	b,#0x80
      001B68 12 0A 5F         [24] 5911 	lcall	_LCD_string_write
                                   5912 ;	ECEN4330Lab7.c:1759: cursor_x -= 4 * textsize * 6;
      001B6B E5 2D            [12] 5913 	mov	a,_textsize
      001B6D 75 F0 18         [24] 5914 	mov	b,#0x18
      001B70 A4               [48] 5915 	mul	ab
      001B71 FE               [12] 5916 	mov	r6,a
      001B72 AF F0            [24] 5917 	mov	r7,b
      001B74 E5 29            [12] 5918 	mov	a,_cursor_x
      001B76 C3               [12] 5919 	clr	c
      001B77 9E               [12] 5920 	subb	a,r6
      001B78 F5 29            [12] 5921 	mov	_cursor_x,a
      001B7A E5 2A            [12] 5922 	mov	a,(_cursor_x + 1)
      001B7C 9F               [12] 5923 	subb	a,r7
      001B7D F5 2A            [12] 5924 	mov	(_cursor_x + 1),a
                                   5925 ;	ECEN4330Lab7.c:1760: inputRead16();                  // Read input
      001B7F 12 0E 3E         [24] 5926 	lcall	_inputRead16
                                   5927 ;	ECEN4330Lab7.c:1761: addr0 = input16;                // Set starting address
      001B82 85 38 42         [24] 5928 	mov	_addr0,_input16
      001B85 85 39 43         [24] 5929 	mov	(_addr0 + 1),(_input16 + 1)
                                   5930 ;	ECEN4330Lab7.c:1764: inputDataType();                // Prompt & read input
      001B88 12 0F 4D         [24] 5931 	lcall	_inputDataType
                                   5932 ;	ECEN4330Lab7.c:1767: resetLCD();
      001B8B 12 0D ED         [24] 5933 	lcall	_resetLCD
                                   5934 ;	ECEN4330Lab7.c:1768: inputDataSize();                // Prompt & read input
      001B8E 12 10 0A         [24] 5935 	lcall	_inputDataSize
                                   5936 ;	ECEN4330Lab7.c:1771: endAddrCalc = addr0 + (dataType * dataSize);
      001B91 AE 3B            [24] 5937 	mov	r6,_dataType
      001B93 7F 00            [12] 5938 	mov	r7,#0x00
      001B95 85 3C 08         [24] 5939 	mov	__mulint_PARM_2,_dataSize
      001B98 85 3D 09         [24] 5940 	mov	(__mulint_PARM_2 + 1),(_dataSize + 1)
      001B9B 8E 82            [24] 5941 	mov	dpl,r6
      001B9D 8F 83            [24] 5942 	mov	dph,r7
      001B9F C0 07            [24] 5943 	push	ar7
      001BA1 C0 06            [24] 5944 	push	ar6
      001BA3 12 23 17         [24] 5945 	lcall	__mulint
      001BA6 AC 82            [24] 5946 	mov	r4,dpl
      001BA8 AD 83            [24] 5947 	mov	r5,dph
      001BAA D0 06            [24] 5948 	pop	ar6
      001BAC D0 07            [24] 5949 	pop	ar7
      001BAE EC               [12] 5950 	mov	a,r4
      001BAF 25 42            [12] 5951 	add	a,_addr0
      001BB1 FA               [12] 5952 	mov	r2,a
      001BB2 ED               [12] 5953 	mov	a,r5
      001BB3 35 43            [12] 5954 	addc	a,(_addr0 + 1)
      001BB5 FB               [12] 5955 	mov	r3,a
      001BB6 8A 55            [24] 5956 	mov	_endAddrCalc,r2
      001BB8 8B 56            [24] 5957 	mov	(_endAddrCalc + 1),r3
      001BBA 75 57 00         [24] 5958 	mov	(_endAddrCalc + 2),#0x00
      001BBD 75 58 00         [24] 5959 	mov	(_endAddrCalc + 3),#0x00
                                   5960 ;	ECEN4330Lab7.c:1772: if(endAddrCalc < addr0){ // RAM overflow
      001BC0 A8 42            [24] 5961 	mov	r0,_addr0
      001BC2 A9 43            [24] 5962 	mov	r1,(_addr0 + 1)
      001BC4 7A 00            [12] 5963 	mov	r2,#0x00
      001BC6 7B 00            [12] 5964 	mov	r3,#0x00
      001BC8 C3               [12] 5965 	clr	c
      001BC9 E5 55            [12] 5966 	mov	a,_endAddrCalc
      001BCB 98               [12] 5967 	subb	a,r0
      001BCC E5 56            [12] 5968 	mov	a,(_endAddrCalc + 1)
      001BCE 99               [12] 5969 	subb	a,r1
      001BCF E5 57            [12] 5970 	mov	a,(_endAddrCalc + 2)
      001BD1 9A               [12] 5971 	subb	a,r2
      001BD2 E5 58            [12] 5972 	mov	a,(_endAddrCalc + 3)
      001BD4 9B               [12] 5973 	subb	a,r3
      001BD5 50 08            [24] 5974 	jnc	00102$
                                   5975 ;	ECEN4330Lab7.c:1773: addr1 = 0xFFFF;             // Set end address
      001BD7 75 44 FF         [24] 5976 	mov	_addr1,#0xff
      001BDA 75 45 FF         [24] 5977 	mov	(_addr1 + 1),#0xff
      001BDD 80 12            [24] 5978 	sjmp	00103$
      001BDF                       5979 00102$:
                                   5980 ;	ECEN4330Lab7.c:1776: addr1 = addr0 + (dataType * dataSize) - 1;
      001BDF EC               [12] 5981 	mov	a,r4
      001BE0 25 42            [12] 5982 	add	a,_addr0
      001BE2 FC               [12] 5983 	mov	r4,a
      001BE3 ED               [12] 5984 	mov	a,r5
      001BE4 35 43            [12] 5985 	addc	a,(_addr0 + 1)
      001BE6 FD               [12] 5986 	mov	r5,a
      001BE7 EC               [12] 5987 	mov	a,r4
      001BE8 24 FF            [12] 5988 	add	a,#0xff
      001BEA F5 44            [12] 5989 	mov	_addr1,a
      001BEC ED               [12] 5990 	mov	a,r5
      001BED 34 FF            [12] 5991 	addc	a,#0xff
      001BEF F5 45            [12] 5992 	mov	(_addr1 + 1),a
      001BF1                       5993 00103$:
                                   5994 ;	ECEN4330Lab7.c:1778: dataSize = ((addr1 - addr0) + 1) / dataType;   // Recalculate data size
      001BF1 E5 44            [12] 5995 	mov	a,_addr1
      001BF3 C3               [12] 5996 	clr	c
      001BF4 95 42            [12] 5997 	subb	a,_addr0
      001BF6 FC               [12] 5998 	mov	r4,a
      001BF7 E5 45            [12] 5999 	mov	a,(_addr1 + 1)
      001BF9 95 43            [12] 6000 	subb	a,(_addr0 + 1)
      001BFB FD               [12] 6001 	mov	r5,a
      001BFC 0C               [12] 6002 	inc	r4
      001BFD BC 00 01         [24] 6003 	cjne	r4,#0x00,00111$
      001C00 0D               [12] 6004 	inc	r5
      001C01                       6005 00111$:
      001C01 8E 08            [24] 6006 	mov	__divuint_PARM_2,r6
      001C03 8F 09            [24] 6007 	mov	(__divuint_PARM_2 + 1),r7
      001C05 8C 82            [24] 6008 	mov	dpl,r4
      001C07 8D 83            [24] 6009 	mov	dph,r5
      001C09 C0 07            [24] 6010 	push	ar7
      001C0B C0 06            [24] 6011 	push	ar6
      001C0D C0 05            [24] 6012 	push	ar5
      001C0F C0 04            [24] 6013 	push	ar4
      001C11 12 22 EE         [24] 6014 	lcall	__divuint
      001C14 85 82 3C         [24] 6015 	mov	_dataSize,dpl
      001C17 85 83 3D         [24] 6016 	mov	(_dataSize + 1),dph
      001C1A D0 04            [24] 6017 	pop	ar4
      001C1C D0 05            [24] 6018 	pop	ar5
      001C1E D0 06            [24] 6019 	pop	ar6
      001C20 D0 07            [24] 6020 	pop	ar7
                                   6021 ;	ECEN4330Lab7.c:1779: addr3 = ((addr1 - addr0) + 1) % dataType;
      001C22 8E 08            [24] 6022 	mov	__moduint_PARM_2,r6
      001C24 8F 09            [24] 6023 	mov	(__moduint_PARM_2 + 1),r7
      001C26 8C 82            [24] 6024 	mov	dpl,r4
      001C28 8D 83            [24] 6025 	mov	dph,r5
      001C2A 12 23 34         [24] 6026 	lcall	__moduint
      001C2D 85 82 48         [24] 6027 	mov	_addr3,dpl
      001C30 85 83 49         [24] 6028 	mov	(_addr3 + 1),dph
                                   6029 ;	ECEN4330Lab7.c:1798: DUMP_display();                 // Display dump data
                                   6030 ;	ECEN4330Lab7.c:1799: }
      001C33 02 17 79         [24] 6031 	ljmp	_DUMP_display
                                   6032 ;------------------------------------------------------------
                                   6033 ;Allocation info for local variables in function 'EDIT_display'
                                   6034 ;------------------------------------------------------------
                                   6035 ;addr                      Allocated to registers r6 r7 
                                   6036 ;------------------------------------------------------------
                                   6037 ;	ECEN4330Lab7.c:1809: void EDIT_display(unsigned int addr){
                                   6038 ;	-----------------------------------------
                                   6039 ;	 function EDIT_display
                                   6040 ;	-----------------------------------------
      001C36                       6041 _EDIT_display:
                                   6042 ;	ECEN4330Lab7.c:1812: data = RAMread(addr);
      001C36 AE 82            [24] 6043 	mov	r6,dpl
      001C38 AF 83            [24] 6044 	mov  r7,dph
      001C3A C0 07            [24] 6045 	push	ar7
      001C3C C0 06            [24] 6046 	push	ar6
      001C3E 12 0D DA         [24] 6047 	lcall	_RAMread
      001C41 85 82 41         [24] 6048 	mov	_data,dpl
                                   6049 ;	ECEN4330Lab7.c:1815: resetLCD();
      001C44 12 0D ED         [24] 6050 	lcall	_resetLCD
                                   6051 ;	ECEN4330Lab7.c:1816: LCD_string_write("\n");
      001C47 90 2B 93         [24] 6052 	mov	dptr,#___str_33
      001C4A 75 F0 80         [24] 6053 	mov	b,#0x80
      001C4D 12 0A 5F         [24] 6054 	lcall	_LCD_string_write
      001C50 D0 06            [24] 6055 	pop	ar6
      001C52 D0 07            [24] 6056 	pop	ar7
                                   6057 ;	ECEN4330Lab7.c:1817: HEXtoASCII_16write(addr);
      001C54 8E 82            [24] 6058 	mov	dpl,r6
      001C56 8F 83            [24] 6059 	mov	dph,r7
      001C58 C0 07            [24] 6060 	push	ar7
      001C5A C0 06            [24] 6061 	push	ar6
      001C5C 12 0D 06         [24] 6062 	lcall	_HEXtoASCII_16write
                                   6063 ;	ECEN4330Lab7.c:1818: LCD_string_write(": 0x");
      001C5F 90 29 BB         [24] 6064 	mov	dptr,#___str_14
      001C62 75 F0 80         [24] 6065 	mov	b,#0x80
      001C65 12 0A 5F         [24] 6066 	lcall	_LCD_string_write
                                   6067 ;	ECEN4330Lab7.c:1819: HEXtoASCII_8write(data);
      001C68 85 41 82         [24] 6068 	mov	dpl,_data
      001C6B 12 0C C9         [24] 6069 	lcall	_HEXtoASCII_8write
                                   6070 ;	ECEN4330Lab7.c:1822: LCD_string_write("\n\nNew value:\n  0x__");
      001C6E 90 2C 27         [24] 6071 	mov	dptr,#___str_39
      001C71 75 F0 80         [24] 6072 	mov	b,#0x80
      001C74 12 0A 5F         [24] 6073 	lcall	_LCD_string_write
                                   6074 ;	ECEN4330Lab7.c:1823: cursor_x -= 2 * textsize * 6;
      001C77 E5 2D            [12] 6075 	mov	a,_textsize
      001C79 75 F0 0C         [24] 6076 	mov	b,#0x0c
      001C7C A4               [48] 6077 	mul	ab
      001C7D FC               [12] 6078 	mov	r4,a
      001C7E AD F0            [24] 6079 	mov	r5,b
      001C80 E5 29            [12] 6080 	mov	a,_cursor_x
      001C82 C3               [12] 6081 	clr	c
      001C83 9C               [12] 6082 	subb	a,r4
      001C84 F5 29            [12] 6083 	mov	_cursor_x,a
      001C86 E5 2A            [12] 6084 	mov	a,(_cursor_x + 1)
      001C88 9D               [12] 6085 	subb	a,r5
      001C89 F5 2A            [12] 6086 	mov	(_cursor_x + 1),a
                                   6087 ;	ECEN4330Lab7.c:1824: inputRead8();
      001C8B 12 0E F9         [24] 6088 	lcall	_inputRead8
      001C8E D0 06            [24] 6089 	pop	ar6
      001C90 D0 07            [24] 6090 	pop	ar7
                                   6091 ;	ECEN4330Lab7.c:1825: RAMwrite(addr, input8);
      001C92 85 3A 08         [24] 6092 	mov	_RAMwrite_PARM_2,_input8
      001C95 8E 82            [24] 6093 	mov	dpl,r6
      001C97 8F 83            [24] 6094 	mov	dph,r7
      001C99 12 0D AB         [24] 6095 	lcall	_RAMwrite
                                   6096 ;	ECEN4330Lab7.c:1828: LCD_string_write("\n\n\n\n(1) Edit next\nRAM location\n\n");
      001C9C 90 2C 3B         [24] 6097 	mov	dptr,#___str_40
      001C9F 75 F0 80         [24] 6098 	mov	b,#0x80
      001CA2 12 0A 5F         [24] 6099 	lcall	_LCD_string_write
                                   6100 ;	ECEN4330Lab7.c:1829: LCD_string_write("(E) End");
      001CA5 90 2C 5C         [24] 6101 	mov	dptr,#___str_41
      001CA8 75 F0 80         [24] 6102 	mov	b,#0x80
                                   6103 ;	ECEN4330Lab7.c:1830: }
      001CAB 02 0A 5F         [24] 6104 	ljmp	_LCD_string_write
                                   6105 ;------------------------------------------------------------
                                   6106 ;Allocation info for local variables in function 'EDIT'
                                   6107 ;------------------------------------------------------------
                                   6108 ;	ECEN4330Lab7.c:1843: void EDIT(){
                                   6109 ;	-----------------------------------------
                                   6110 ;	 function EDIT
                                   6111 ;	-----------------------------------------
      001CAE                       6112 _EDIT:
                                   6113 ;	ECEN4330Lab7.c:1844: dataEnd = 0;
      001CAE 75 3F 00         [24] 6114 	mov	_dataEnd,#0x00
                                   6115 ;	ECEN4330Lab7.c:1845: scrollEnd = 0;
      001CB1 75 40 00         [24] 6116 	mov	_scrollEnd,#0x00
                                   6117 ;	ECEN4330Lab7.c:1846: validInput = 0;
      001CB4 75 3E 00         [24] 6118 	mov	_validInput,#0x00
                                   6119 ;	ECEN4330Lab7.c:1849: resetLCD();
      001CB7 12 0D ED         [24] 6120 	lcall	_resetLCD
                                   6121 ;	ECEN4330Lab7.c:1850: LCD_string_write("\nEnter\nstarting RAM\naddress:\n\n  0x____");
      001CBA 90 2B 13         [24] 6122 	mov	dptr,#___str_25
      001CBD 75 F0 80         [24] 6123 	mov	b,#0x80
      001CC0 12 0A 5F         [24] 6124 	lcall	_LCD_string_write
                                   6125 ;	ECEN4330Lab7.c:1851: cursor_x -= 4 * textsize * 6;
      001CC3 E5 2D            [12] 6126 	mov	a,_textsize
      001CC5 75 F0 18         [24] 6127 	mov	b,#0x18
      001CC8 A4               [48] 6128 	mul	ab
      001CC9 FE               [12] 6129 	mov	r6,a
      001CCA AF F0            [24] 6130 	mov	r7,b
      001CCC E5 29            [12] 6131 	mov	a,_cursor_x
      001CCE C3               [12] 6132 	clr	c
      001CCF 9E               [12] 6133 	subb	a,r6
      001CD0 F5 29            [12] 6134 	mov	_cursor_x,a
      001CD2 E5 2A            [12] 6135 	mov	a,(_cursor_x + 1)
      001CD4 9F               [12] 6136 	subb	a,r7
      001CD5 F5 2A            [12] 6137 	mov	(_cursor_x + 1),a
                                   6138 ;	ECEN4330Lab7.c:1854: inputRead16();
      001CD7 12 0E 3E         [24] 6139 	lcall	_inputRead16
                                   6140 ;	ECEN4330Lab7.c:1857: while(scrollEnd == 0 && dataEnd == 0){
      001CDA                       6141 00112$:
      001CDA E5 40            [12] 6142 	mov	a,_scrollEnd
      001CDC 70 52            [24] 6143 	jnz	00114$
      001CDE E5 3F            [12] 6144 	mov	a,_dataEnd
      001CE0 70 4E            [24] 6145 	jnz	00114$
                                   6146 ;	ECEN4330Lab7.c:1860: do
      001CE2                       6147 00108$:
                                   6148 ;	ECEN4330Lab7.c:1862: EDIT_display(input16);
      001CE2 85 38 82         [24] 6149 	mov	dpl,_input16
      001CE5 85 39 83         [24] 6150 	mov	dph,(_input16 + 1)
      001CE8 12 1C 36         [24] 6151 	lcall	_EDIT_display
                                   6152 ;	ECEN4330Lab7.c:1863: key = keyDetect();
      001CEB 12 0A 9E         [24] 6153 	lcall	_keyDetect
      001CEE 85 82 37         [24] 6154 	mov	_key,dpl
                                   6155 ;	ECEN4330Lab7.c:1865: switch (key)
      001CF1 74 31            [12] 6156 	mov	a,#0x31
      001CF3 B5 37 02         [24] 6157 	cjne	a,_key,00153$
      001CF6 80 07            [24] 6158 	sjmp	00101$
      001CF8                       6159 00153$:
      001CF8 74 45            [12] 6160 	mov	a,#0x45
                                   6161 ;	ECEN4330Lab7.c:1869: case '1':
      001CFA B5 37 27         [24] 6162 	cjne	a,_key,00106$
      001CFD 80 1D            [24] 6163 	sjmp	00105$
      001CFF                       6164 00101$:
                                   6165 ;	ECEN4330Lab7.c:1870: validInput = 1;
      001CFF 75 3E 01         [24] 6166 	mov	_validInput,#0x01
                                   6167 ;	ECEN4330Lab7.c:1873: if(input16 == 0xFFFF){
      001D02 74 FF            [12] 6168 	mov	a,#0xff
      001D04 B5 38 08         [24] 6169 	cjne	a,_input16,00103$
      001D07 B5 39 05         [24] 6170 	cjne	a,(_input16 + 1),00103$
                                   6171 ;	ECEN4330Lab7.c:1874: scrollEnd = 1;
      001D0A 75 40 01         [24] 6172 	mov	_scrollEnd,#0x01
      001D0D 80 1B            [24] 6173 	sjmp	00109$
      001D0F                       6174 00103$:
                                   6175 ;	ECEN4330Lab7.c:1879: input16++;
      001D0F 05 38            [12] 6176 	inc	_input16
      001D11 E4               [12] 6177 	clr	a
      001D12 B5 38 02         [24] 6178 	cjne	a,_input16,00157$
      001D15 05 39            [12] 6179 	inc	(_input16 + 1)
      001D17                       6180 00157$:
                                   6181 ;	ECEN4330Lab7.c:1880: scrollEnd = 0;
      001D17 75 40 00         [24] 6182 	mov	_scrollEnd,#0x00
                                   6183 ;	ECEN4330Lab7.c:1882: break;
                                   6184 ;	ECEN4330Lab7.c:1885: case 'E':
      001D1A 80 0E            [24] 6185 	sjmp	00109$
      001D1C                       6186 00105$:
                                   6187 ;	ECEN4330Lab7.c:1886: validInput = 1;
      001D1C 75 3E 01         [24] 6188 	mov	_validInput,#0x01
                                   6189 ;	ECEN4330Lab7.c:1887: dataEnd = 1;
      001D1F 75 3F 01         [24] 6190 	mov	_dataEnd,#0x01
                                   6191 ;	ECEN4330Lab7.c:1888: break;
                                   6192 ;	ECEN4330Lab7.c:1891: default:
      001D22 80 06            [24] 6193 	sjmp	00109$
      001D24                       6194 00106$:
                                   6195 ;	ECEN4330Lab7.c:1892: validInput = 0;
      001D24 75 3E 00         [24] 6196 	mov	_validInput,#0x00
                                   6197 ;	ECEN4330Lab7.c:1893: invalidInput();
      001D27 12 0E 15         [24] 6198 	lcall	_invalidInput
                                   6199 ;	ECEN4330Lab7.c:1895: }
      001D2A                       6200 00109$:
                                   6201 ;	ECEN4330Lab7.c:1896: } while (validInput == 0);
      001D2A E5 3E            [12] 6202 	mov	a,_validInput
      001D2C 60 B4            [24] 6203 	jz	00108$
      001D2E 80 AA            [24] 6204 	sjmp	00112$
      001D30                       6205 00114$:
                                   6206 ;	ECEN4330Lab7.c:1900: resetLCD();
      001D30 12 0D ED         [24] 6207 	lcall	_resetLCD
                                   6208 ;	ECEN4330Lab7.c:1901: if(scrollEnd == 1){
      001D33 74 01            [12] 6209 	mov	a,#0x01
      001D35 B5 40 14         [24] 6210 	cjne	a,_scrollEnd,00116$
                                   6211 ;	ECEN4330Lab7.c:1902: setTextColor(RED, BLACK);
      001D38 E4               [12] 6212 	clr	a
      001D39 F5 08            [12] 6213 	mov	_setTextColor_PARM_2,a
      001D3B F5 09            [12] 6214 	mov	(_setTextColor_PARM_2 + 1),a
      001D3D 90 F8 00         [24] 6215 	mov	dptr,#0xf800
      001D40 12 03 70         [24] 6216 	lcall	_setTextColor
                                   6217 ;	ECEN4330Lab7.c:1903: LCD_string_write("\nEnd of data.\n");
      001D43 90 2C 64         [24] 6218 	mov	dptr,#___str_42
      001D46 75 F0 80         [24] 6219 	mov	b,#0x80
      001D49 12 0A 5F         [24] 6220 	lcall	_LCD_string_write
      001D4C                       6221 00116$:
                                   6222 ;	ECEN4330Lab7.c:1907: setTextColor(WHITE, BLACK);
      001D4C E4               [12] 6223 	clr	a
      001D4D F5 08            [12] 6224 	mov	_setTextColor_PARM_2,a
      001D4F F5 09            [12] 6225 	mov	(_setTextColor_PARM_2 + 1),a
      001D51 90 FF FF         [24] 6226 	mov	dptr,#0xffff
      001D54 12 03 70         [24] 6227 	lcall	_setTextColor
                                   6228 ;	ECEN4330Lab7.c:1908: LCD_string_write("\nReturning to\nmain menu.");
      001D57 90 2C 73         [24] 6229 	mov	dptr,#___str_43
      001D5A 75 F0 80         [24] 6230 	mov	b,#0x80
      001D5D 12 0A 5F         [24] 6231 	lcall	_LCD_string_write
                                   6232 ;	ECEN4330Lab7.c:1909: delay(200);
      001D60 90 00 C8         [24] 6233 	mov	dptr,#0x00c8
                                   6234 ;	ECEN4330Lab7.c:1910: }
      001D63 02 00 BF         [24] 6235 	ljmp	_delay
                                   6236 ;------------------------------------------------------------
                                   6237 ;Allocation info for local variables in function 'FIND_display'
                                   6238 ;------------------------------------------------------------
                                   6239 ;	ECEN4330Lab7.c:1924: void FIND_display(){
                                   6240 ;	-----------------------------------------
                                   6241 ;	 function FIND_display
                                   6242 ;	-----------------------------------------
      001D66                       6243 _FIND_display:
                                   6244 ;	ECEN4330Lab7.c:1925: addr2 = 0;						// first addr of page
      001D66 E4               [12] 6245 	clr	a
      001D67 F5 46            [12] 6246 	mov	_addr2,a
      001D69 F5 47            [12] 6247 	mov	(_addr2 + 1),a
                                   6248 ;	ECEN4330Lab7.c:1926: currAddr1 = 0;					// page count
      001D6B F5 4C            [12] 6249 	mov	_currAddr1,a
      001D6D F5 4D            [12] 6250 	mov	(_currAddr1 + 1),a
                                   6251 ;	ECEN4330Lab7.c:1927: resetLCD();
      001D6F 12 0D ED         [24] 6252 	lcall	_resetLCD
                                   6253 ;	ECEN4330Lab7.c:1928: currAddr0 = addr0;				// Load starting address
      001D72 85 42 4A         [24] 6254 	mov	_currAddr0,_addr0
      001D75 85 43 4B         [24] 6255 	mov	(_currAddr0 + 1),(_addr0 + 1)
                                   6256 ;	ECEN4330Lab7.c:1929: data = RAMread(currAddr0);		// Read data from starting address
      001D78 85 4A 82         [24] 6257 	mov	dpl,_currAddr0
      001D7B 85 4B 83         [24] 6258 	mov	dph,(_currAddr0 + 1)
      001D7E 12 0D DA         [24] 6259 	lcall	_RAMread
      001D81 85 82 41         [24] 6260 	mov	_data,dpl
                                   6261 ;	ECEN4330Lab7.c:1932: while(data != byte1 && currAddr0 < addr1){
      001D84                       6262 00102$:
      001D84 AE 41            [24] 6263 	mov	r6,_data
      001D86 7F 00            [12] 6264 	mov	r7,#0x00
      001D88 EE               [12] 6265 	mov	a,r6
      001D89 B5 50 06         [24] 6266 	cjne	a,_byte1,00235$
      001D8C EF               [12] 6267 	mov	a,r7
      001D8D B5 51 02         [24] 6268 	cjne	a,(_byte1 + 1),00235$
      001D90 80 21            [24] 6269 	sjmp	00104$
      001D92                       6270 00235$:
      001D92 C3               [12] 6271 	clr	c
      001D93 E5 4A            [12] 6272 	mov	a,_currAddr0
      001D95 95 44            [12] 6273 	subb	a,_addr1
      001D97 E5 4B            [12] 6274 	mov	a,(_currAddr0 + 1)
      001D99 95 45            [12] 6275 	subb	a,(_addr1 + 1)
      001D9B 50 16            [24] 6276 	jnc	00104$
                                   6277 ;	ECEN4330Lab7.c:1933: currAddr0++;				// Next RAM address
      001D9D 05 4A            [12] 6278 	inc	_currAddr0
      001D9F E4               [12] 6279 	clr	a
      001DA0 B5 4A 02         [24] 6280 	cjne	a,_currAddr0,00237$
      001DA3 05 4B            [12] 6281 	inc	(_currAddr0 + 1)
      001DA5                       6282 00237$:
                                   6283 ;	ECEN4330Lab7.c:1934: data = RAMread(currAddr0);	// Read data from RAM
      001DA5 85 4A 82         [24] 6284 	mov	dpl,_currAddr0
      001DA8 85 4B 83         [24] 6285 	mov	dph,(_currAddr0 + 1)
      001DAB 12 0D DA         [24] 6286 	lcall	_RAMread
      001DAE 85 82 41         [24] 6287 	mov	_data,dpl
      001DB1 80 D1            [24] 6288 	sjmp	00102$
      001DB3                       6289 00104$:
                                   6290 ;	ECEN4330Lab7.c:1938: if(data != byte1 && currAddr0 == addr1){
      001DB3 AE 41            [24] 6291 	mov	r6,_data
      001DB5 7F 00            [12] 6292 	mov	r7,#0x00
      001DB7 EE               [12] 6293 	mov	a,r6
      001DB8 B5 50 06         [24] 6294 	cjne	a,_byte1,00238$
      001DBB EF               [12] 6295 	mov	a,r7
      001DBC B5 51 02         [24] 6296 	cjne	a,(_byte1 + 1),00238$
      001DBF 80 58            [24] 6297 	sjmp	00142$
      001DC1                       6298 00238$:
      001DC1 E5 44            [12] 6299 	mov	a,_addr1
      001DC3 B5 4A 53         [24] 6300 	cjne	a,_currAddr0,00142$
      001DC6 E5 45            [12] 6301 	mov	a,(_addr1 + 1)
      001DC8 B5 4B 4E         [24] 6302 	cjne	a,(_currAddr0 + 1),00142$
                                   6303 ;	ECEN4330Lab7.c:1939: resetLCD();
      001DCB 12 0D ED         [24] 6304 	lcall	_resetLCD
                                   6305 ;	ECEN4330Lab7.c:1940: LCD_string_write("\n0x");
      001DCE 90 2B 57         [24] 6306 	mov	dptr,#___str_27
      001DD1 75 F0 80         [24] 6307 	mov	b,#0x80
      001DD4 12 0A 5F         [24] 6308 	lcall	_LCD_string_write
                                   6309 ;	ECEN4330Lab7.c:1941: HEXtoASCII_8write(byte1);
      001DD7 85 50 82         [24] 6310 	mov	dpl,_byte1
      001DDA 12 0C C9         [24] 6311 	lcall	_HEXtoASCII_8write
                                   6312 ;	ECEN4330Lab7.c:1942: LCD_string_write(" not\nfound in\naddress range\n\n");
      001DDD 90 2C 8C         [24] 6313 	mov	dptr,#___str_44
      001DE0 75 F0 80         [24] 6314 	mov	b,#0x80
      001DE3 12 0A 5F         [24] 6315 	lcall	_LCD_string_write
                                   6316 ;	ECEN4330Lab7.c:1943: HEXtoASCII_16write(addr0);
      001DE6 85 42 82         [24] 6317 	mov	dpl,_addr0
      001DE9 85 43 83         [24] 6318 	mov	dph,(_addr0 + 1)
      001DEC 12 0D 06         [24] 6319 	lcall	_HEXtoASCII_16write
                                   6320 ;	ECEN4330Lab7.c:1944: LCD_string_write(" -\n");
      001DEF 90 2B 8F         [24] 6321 	mov	dptr,#___str_32
      001DF2 75 F0 80         [24] 6322 	mov	b,#0x80
      001DF5 12 0A 5F         [24] 6323 	lcall	_LCD_string_write
                                   6324 ;	ECEN4330Lab7.c:1945: HEXtoASCII_16write(addr1);
      001DF8 85 44 82         [24] 6325 	mov	dpl,_addr1
      001DFB 85 45 83         [24] 6326 	mov	dph,(_addr1 + 1)
      001DFE 12 0D 06         [24] 6327 	lcall	_HEXtoASCII_16write
                                   6328 ;	ECEN4330Lab7.c:1946: delay(200);
      001E01 90 00 C8         [24] 6329 	mov	dptr,#0x00c8
      001E04 12 00 BF         [24] 6330 	lcall	_delay
                                   6331 ;	ECEN4330Lab7.c:1947: resetLCD();
      001E07 12 0D ED         [24] 6332 	lcall	_resetLCD
                                   6333 ;	ECEN4330Lab7.c:1948: LCD_string_write("Returning to\nmain menu.");
      001E0A 90 29 C0         [24] 6334 	mov	dptr,#___str_15
      001E0D 75 F0 80         [24] 6335 	mov	b,#0x80
      001E10 12 0A 5F         [24] 6336 	lcall	_LCD_string_write
                                   6337 ;	ECEN4330Lab7.c:1949: delay(100);
      001E13 90 00 64         [24] 6338 	mov	dptr,#0x0064
      001E16 02 00 BF         [24] 6339 	ljmp	_delay
      001E19                       6340 00142$:
                                   6341 ;	ECEN4330Lab7.c:1957: resetLCD();
      001E19 12 0D ED         [24] 6342 	lcall	_resetLCD
                                   6343 ;	ECEN4330Lab7.c:1958: setTextColor(GREEN, BLACK);
      001E1C E4               [12] 6344 	clr	a
      001E1D F5 08            [12] 6345 	mov	_setTextColor_PARM_2,a
      001E1F F5 09            [12] 6346 	mov	(_setTextColor_PARM_2 + 1),a
      001E21 90 07 E0         [24] 6347 	mov	dptr,#0x07e0
      001E24 12 03 70         [24] 6348 	lcall	_setTextColor
                                   6349 ;	ECEN4330Lab7.c:1959: LCD_string_write("\n0x");
      001E27 90 2B 57         [24] 6350 	mov	dptr,#___str_27
      001E2A 75 F0 80         [24] 6351 	mov	b,#0x80
      001E2D 12 0A 5F         [24] 6352 	lcall	_LCD_string_write
                                   6353 ;	ECEN4330Lab7.c:1960: HEXtoASCII_8write(byte1);
      001E30 85 50 82         [24] 6354 	mov	dpl,_byte1
      001E33 12 0C C9         [24] 6355 	lcall	_HEXtoASCII_8write
                                   6356 ;	ECEN4330Lab7.c:1961: LCD_string_write(" found at\nthe following\naddresses:\n\n");
      001E36 90 2C AA         [24] 6357 	mov	dptr,#___str_45
      001E39 75 F0 80         [24] 6358 	mov	b,#0x80
      001E3C 12 0A 5F         [24] 6359 	lcall	_LCD_string_write
                                   6360 ;	ECEN4330Lab7.c:1962: delay(200);
      001E3F 90 00 C8         [24] 6361 	mov	dptr,#0x00c8
      001E42 12 00 BF         [24] 6362 	lcall	_delay
                                   6363 ;	ECEN4330Lab7.c:1963: addr2 = currAddr0;					// Load first found address of page
      001E45 85 4A 46         [24] 6364 	mov	_addr2,_currAddr0
      001E48 85 4B 47         [24] 6365 	mov	(_addr2 + 1),(_currAddr0 + 1)
                                   6366 ;	ECEN4330Lab7.c:1968: do{
      001E4B                       6367 00138$:
                                   6368 ;	ECEN4330Lab7.c:1969: resetLCD();
      001E4B 12 0D ED         [24] 6369 	lcall	_resetLCD
                                   6370 ;	ECEN4330Lab7.c:1970: currAddr0 = addr2;				// Load current address	
      001E4E 85 46 4A         [24] 6371 	mov	_currAddr0,_addr2
      001E51 85 47 4B         [24] 6372 	mov	(_currAddr0 + 1),(_addr2 + 1)
                                   6373 ;	ECEN4330Lab7.c:1971: HEXtoASCII_16write(currAddr0);	// Write found address to LCD
      001E54 85 4A 82         [24] 6374 	mov	dpl,_currAddr0
      001E57 85 4B 83         [24] 6375 	mov	dph,(_currAddr0 + 1)
      001E5A 12 0D 06         [24] 6376 	lcall	_HEXtoASCII_16write
                                   6377 ;	ECEN4330Lab7.c:1972: count = 7;						// Set page address display counter
      001E5D 75 53 07         [24] 6378 	mov	_count,#0x07
      001E60 75 54 00         [24] 6379 	mov	(_count + 1),#0x00
                                   6380 ;	ECEN4330Lab7.c:1973: currAddr1++;					// Increment page count
      001E63 05 4C            [12] 6381 	inc	_currAddr1
      001E65 E4               [12] 6382 	clr	a
      001E66 B5 4C 02         [24] 6383 	cjne	a,_currAddr1,00241$
      001E69 05 4D            [12] 6384 	inc	(_currAddr1 + 1)
      001E6B                       6385 00241$:
                                   6386 ;	ECEN4330Lab7.c:1979: if(currAddr0 != 0xFFFF){
      001E6B 74 FF            [12] 6387 	mov	a,#0xff
      001E6D B5 4A 05         [24] 6388 	cjne	a,_currAddr0,00242$
      001E70 B5 4B 02         [24] 6389 	cjne	a,(_currAddr0 + 1),00242$
      001E73 80 4C            [24] 6390 	sjmp	00112$
      001E75                       6391 00242$:
                                   6392 ;	ECEN4330Lab7.c:1980: do{
      001E75                       6393 00108$:
                                   6394 ;	ECEN4330Lab7.c:1981: currAddr0++;				// Next RAM address
      001E75 05 4A            [12] 6395 	inc	_currAddr0
      001E77 E4               [12] 6396 	clr	a
      001E78 B5 4A 02         [24] 6397 	cjne	a,_currAddr0,00243$
      001E7B 05 4B            [12] 6398 	inc	(_currAddr0 + 1)
      001E7D                       6399 00243$:
                                   6400 ;	ECEN4330Lab7.c:1982: data = RAMread(currAddr0);	// Read data
      001E7D 85 4A 82         [24] 6401 	mov	dpl,_currAddr0
      001E80 85 4B 83         [24] 6402 	mov	dph,(_currAddr0 + 1)
      001E83 12 0D DA         [24] 6403 	lcall	_RAMread
      001E86 85 82 41         [24] 6404 	mov	_data,dpl
                                   6405 ;	ECEN4330Lab7.c:1983: if(data == byte1){			// If data = search value
      001E89 AE 41            [24] 6406 	mov	r6,_data
      001E8B 7F 00            [12] 6407 	mov	r7,#0x00
      001E8D EE               [12] 6408 	mov	a,r6
      001E8E B5 50 1F         [24] 6409 	cjne	a,_byte1,00109$
      001E91 EF               [12] 6410 	mov	a,r7
      001E92 B5 51 1B         [24] 6411 	cjne	a,(_byte1 + 1),00109$
                                   6412 ;	ECEN4330Lab7.c:1984: count--;				// Decrement page address display counter
      001E95 15 53            [12] 6413 	dec	_count
      001E97 74 FF            [12] 6414 	mov	a,#0xff
      001E99 B5 53 02         [24] 6415 	cjne	a,_count,00246$
      001E9C 15 54            [12] 6416 	dec	(_count + 1)
      001E9E                       6417 00246$:
                                   6418 ;	ECEN4330Lab7.c:1985: LCD_string_write("\n");	// Next line
      001E9E 90 2B 93         [24] 6419 	mov	dptr,#___str_33
      001EA1 75 F0 80         [24] 6420 	mov	b,#0x80
      001EA4 12 0A 5F         [24] 6421 	lcall	_LCD_string_write
                                   6422 ;	ECEN4330Lab7.c:1986: HEXtoASCII_16write(currAddr0);	// Display found address
      001EA7 85 4A 82         [24] 6423 	mov	dpl,_currAddr0
      001EAA 85 4B 83         [24] 6424 	mov	dph,(_currAddr0 + 1)
      001EAD 12 0D 06         [24] 6425 	lcall	_HEXtoASCII_16write
      001EB0                       6426 00109$:
                                   6427 ;	ECEN4330Lab7.c:1988: }while(currAddr0 < addr1 && count > 0);
      001EB0 C3               [12] 6428 	clr	c
      001EB1 E5 4A            [12] 6429 	mov	a,_currAddr0
      001EB3 95 44            [12] 6430 	subb	a,_addr1
      001EB5 E5 4B            [12] 6431 	mov	a,(_currAddr0 + 1)
      001EB7 95 45            [12] 6432 	subb	a,(_addr1 + 1)
      001EB9 50 06            [24] 6433 	jnc	00112$
      001EBB E5 53            [12] 6434 	mov	a,_count
      001EBD 45 54            [12] 6435 	orl	a,(_count + 1)
      001EBF 70 B4            [24] 6436 	jnz	00108$
      001EC1                       6437 00112$:
                                   6438 ;	ECEN4330Lab7.c:1995: setCursor(0, 250);
      001EC1 75 08 FA         [24] 6439 	mov	_setCursor_PARM_2,#0xfa
      001EC4 75 09 00         [24] 6440 	mov	(_setCursor_PARM_2 + 1),#0x00
      001EC7 90 00 00         [24] 6441 	mov	dptr,#0x0000
      001ECA 12 03 63         [24] 6442 	lcall	_setCursor
                                   6443 ;	ECEN4330Lab7.c:1996: setTextSize(2);
      001ECD 75 82 02         [24] 6444 	mov	dpl,#0x02
      001ED0 12 03 7D         [24] 6445 	lcall	_setTextSize
                                   6446 ;	ECEN4330Lab7.c:1997: setTextColor(WHITE, BLACK);
      001ED3 E4               [12] 6447 	clr	a
      001ED4 F5 08            [12] 6448 	mov	_setTextColor_PARM_2,a
      001ED6 F5 09            [12] 6449 	mov	(_setTextColor_PARM_2 + 1),a
      001ED8 90 FF FF         [24] 6450 	mov	dptr,#0xffff
      001EDB 12 03 70         [24] 6451 	lcall	_setTextColor
                                   6452 ;	ECEN4330Lab7.c:1998: LCD_string_write("  (0) - Next Page\n  (1) - Prev Page\n  (E) - END\n");
      001EDE 90 2B 95         [24] 6453 	mov	dptr,#___str_34
      001EE1 75 F0 80         [24] 6454 	mov	b,#0x80
      001EE4 12 0A 5F         [24] 6455 	lcall	_LCD_string_write
                                   6456 ;	ECEN4330Lab7.c:1999: HEXtoASCII_16write(currAddr1);
      001EE7 85 4C 82         [24] 6457 	mov	dpl,_currAddr1
      001EEA 85 4D 83         [24] 6458 	mov	dph,(_currAddr1 + 1)
      001EED 12 0D 06         [24] 6459 	lcall	_HEXtoASCII_16write
                                   6460 ;	ECEN4330Lab7.c:2005: key = keyDetect();
      001EF0 12 0A 9E         [24] 6461 	lcall	_keyDetect
      001EF3 85 82 37         [24] 6462 	mov	_key,dpl
                                   6463 ;	ECEN4330Lab7.c:2006: switch (key)
      001EF6 74 30            [12] 6464 	mov	a,#0x30
      001EF8 B5 37 02         [24] 6465 	cjne	a,_key,00249$
      001EFB 80 13            [24] 6466 	sjmp	00113$
      001EFD                       6467 00249$:
      001EFD 74 31            [12] 6468 	mov	a,#0x31
      001EFF B5 37 03         [24] 6469 	cjne	a,_key,00250$
      001F02 02 1F B1         [24] 6470 	ljmp	00126$
      001F05                       6471 00250$:
      001F05 74 45            [12] 6472 	mov	a,#0x45
      001F07 B5 37 03         [24] 6473 	cjne	a,_key,00251$
      001F0A 02 20 31         [24] 6474 	ljmp	00135$
      001F0D                       6475 00251$:
      001F0D 02 20 45         [24] 6476 	ljmp	00136$
                                   6477 ;	ECEN4330Lab7.c:2012: case '0':
      001F10                       6478 00113$:
                                   6479 ;	ECEN4330Lab7.c:2017: if(currAddr0 >= addr1){
      001F10 C3               [12] 6480 	clr	c
      001F11 E5 4A            [12] 6481 	mov	a,_currAddr0
      001F13 95 44            [12] 6482 	subb	a,_addr1
      001F15 E5 4B            [12] 6483 	mov	a,(_currAddr0 + 1)
      001F17 95 45            [12] 6484 	subb	a,(_addr1 + 1)
      001F19 40 1E            [24] 6485 	jc	00117$
                                   6486 ;	ECEN4330Lab7.c:2018: resetLCD();
      001F1B 12 0D ED         [24] 6487 	lcall	_resetLCD
                                   6488 ;	ECEN4330Lab7.c:2019: LCD_string_write("End of Data.");
      001F1E 90 2C CF         [24] 6489 	mov	dptr,#___str_46
      001F21 75 F0 80         [24] 6490 	mov	b,#0x80
      001F24 12 0A 5F         [24] 6491 	lcall	_LCD_string_write
                                   6492 ;	ECEN4330Lab7.c:2020: delay(200);
      001F27 90 00 C8         [24] 6493 	mov	dptr,#0x00c8
      001F2A 12 00 BF         [24] 6494 	lcall	_delay
                                   6495 ;	ECEN4330Lab7.c:2021: currAddr1--;	// Reset page count to last displayed page 
      001F2D 15 4C            [12] 6496 	dec	_currAddr1
      001F2F 74 FF            [12] 6497 	mov	a,#0xff
      001F31 B5 4C 02         [24] 6498 	cjne	a,_currAddr1,00253$
      001F34 15 4D            [12] 6499 	dec	(_currAddr1 + 1)
      001F36                       6500 00253$:
      001F36 02 20 51         [24] 6501 	ljmp	00139$
                                   6502 ;	ECEN4330Lab7.c:2034: do{
      001F39                       6503 00117$:
                                   6504 ;	ECEN4330Lab7.c:2035: currAddr0++;			// Next RAM address
      001F39 05 4A            [12] 6505 	inc	_currAddr0
      001F3B E4               [12] 6506 	clr	a
      001F3C B5 4A 02         [24] 6507 	cjne	a,_currAddr0,00254$
      001F3F 05 4B            [12] 6508 	inc	(_currAddr0 + 1)
      001F41                       6509 00254$:
                                   6510 ;	ECEN4330Lab7.c:2036: data = RAMread(currAddr0);	// Read data
      001F41 85 4A 82         [24] 6511 	mov	dpl,_currAddr0
      001F44 85 4B 83         [24] 6512 	mov	dph,(_currAddr0 + 1)
      001F47 12 0D DA         [24] 6513 	lcall	_RAMread
      001F4A 85 82 41         [24] 6514 	mov	_data,dpl
                                   6515 ;	ECEN4330Lab7.c:2037: if(data == byte1){			// If data matches search value
      001F4D AE 41            [24] 6516 	mov	r6,_data
      001F4F 7F 00            [12] 6517 	mov	r7,#0x00
      001F51 EE               [12] 6518 	mov	a,r6
      001F52 B5 50 0A         [24] 6519 	cjne	a,_byte1,00118$
      001F55 EF               [12] 6520 	mov	a,r7
      001F56 B5 51 06         [24] 6521 	cjne	a,(_byte1 + 1),00118$
                                   6522 ;	ECEN4330Lab7.c:2038: addr2 = currAddr0;		// Set first address of display page
      001F59 85 4A 46         [24] 6523 	mov	_addr2,_currAddr0
      001F5C 85 4B 47         [24] 6524 	mov	(_addr2 + 1),(_currAddr0 + 1)
      001F5F                       6525 00118$:
                                   6526 ;	ECEN4330Lab7.c:2040: }while(currAddr0 < addr1 && data != byte1);
      001F5F C3               [12] 6527 	clr	c
      001F60 E5 4A            [12] 6528 	mov	a,_currAddr0
      001F62 95 44            [12] 6529 	subb	a,_addr1
      001F64 E5 4B            [12] 6530 	mov	a,(_currAddr0 + 1)
      001F66 95 45            [12] 6531 	subb	a,(_addr1 + 1)
      001F68 50 0C            [24] 6532 	jnc	00119$
      001F6A AE 41            [24] 6533 	mov	r6,_data
      001F6C 7F 00            [12] 6534 	mov	r7,#0x00
      001F6E EE               [12] 6535 	mov	a,r6
      001F6F B5 50 C7         [24] 6536 	cjne	a,_byte1,00117$
      001F72 EF               [12] 6537 	mov	a,r7
      001F73 B5 51 C3         [24] 6538 	cjne	a,(_byte1 + 1),00117$
      001F76                       6539 00119$:
                                   6540 ;	ECEN4330Lab7.c:2046: if(currAddr0 >= addr1 && data != byte1){
      001F76 C3               [12] 6541 	clr	c
      001F77 E5 4A            [12] 6542 	mov	a,_currAddr0
      001F79 95 44            [12] 6543 	subb	a,_addr1
      001F7B E5 4B            [12] 6544 	mov	a,(_currAddr0 + 1)
      001F7D 95 45            [12] 6545 	subb	a,(_addr1 + 1)
      001F7F 50 03            [24] 6546 	jnc	00260$
      001F81 02 20 51         [24] 6547 	ljmp	00139$
      001F84                       6548 00260$:
      001F84 AE 41            [24] 6549 	mov	r6,_data
      001F86 7F 00            [12] 6550 	mov	r7,#0x00
      001F88 EE               [12] 6551 	mov	a,r6
      001F89 B5 50 07         [24] 6552 	cjne	a,_byte1,00261$
      001F8C EF               [12] 6553 	mov	a,r7
      001F8D B5 51 03         [24] 6554 	cjne	a,(_byte1 + 1),00261$
      001F90 02 20 51         [24] 6555 	ljmp	00139$
      001F93                       6556 00261$:
                                   6557 ;	ECEN4330Lab7.c:2047: resetLCD();
      001F93 12 0D ED         [24] 6558 	lcall	_resetLCD
                                   6559 ;	ECEN4330Lab7.c:2048: LCD_string_write("End of Data.");
      001F96 90 2C CF         [24] 6560 	mov	dptr,#___str_46
      001F99 75 F0 80         [24] 6561 	mov	b,#0x80
      001F9C 12 0A 5F         [24] 6562 	lcall	_LCD_string_write
                                   6563 ;	ECEN4330Lab7.c:2049: delay(200);
      001F9F 90 00 C8         [24] 6564 	mov	dptr,#0x00c8
      001FA2 12 00 BF         [24] 6565 	lcall	_delay
                                   6566 ;	ECEN4330Lab7.c:2050: currAddr1--;	// Reset page count to last displayed page
      001FA5 15 4C            [12] 6567 	dec	_currAddr1
      001FA7 74 FF            [12] 6568 	mov	a,#0xff
      001FA9 B5 4C 02         [24] 6569 	cjne	a,_currAddr1,00262$
      001FAC 15 4D            [12] 6570 	dec	(_currAddr1 + 1)
      001FAE                       6571 00262$:
                                   6572 ;	ECEN4330Lab7.c:2055: break;
      001FAE 02 20 51         [24] 6573 	ljmp	00139$
                                   6574 ;	ECEN4330Lab7.c:2062: case '1':
      001FB1                       6575 00126$:
                                   6576 ;	ECEN4330Lab7.c:2066: if(currAddr1 == 1){
      001FB1 74 01            [12] 6577 	mov	a,#0x01
      001FB3 B5 4C 06         [24] 6578 	cjne	a,_currAddr1,00263$
      001FB6 14               [12] 6579 	dec	a
      001FB7 B5 4D 02         [24] 6580 	cjne	a,(_currAddr1 + 1),00263$
      001FBA 80 02            [24] 6581 	sjmp	00264$
      001FBC                       6582 00263$:
      001FBC 80 1E            [24] 6583 	sjmp	00133$
      001FBE                       6584 00264$:
                                   6585 ;	ECEN4330Lab7.c:2067: resetLCD();
      001FBE 12 0D ED         [24] 6586 	lcall	_resetLCD
                                   6587 ;	ECEN4330Lab7.c:2068: LCD_string_write("End of Data.");
      001FC1 90 2C CF         [24] 6588 	mov	dptr,#___str_46
      001FC4 75 F0 80         [24] 6589 	mov	b,#0x80
      001FC7 12 0A 5F         [24] 6590 	lcall	_LCD_string_write
                                   6591 ;	ECEN4330Lab7.c:2069: delay(200);
      001FCA 90 00 C8         [24] 6592 	mov	dptr,#0x00c8
      001FCD 12 00 BF         [24] 6593 	lcall	_delay
                                   6594 ;	ECEN4330Lab7.c:2070: currAddr1--;	// Reset page count to last displayed page
      001FD0 15 4C            [12] 6595 	dec	_currAddr1
      001FD2 74 FF            [12] 6596 	mov	a,#0xff
      001FD4 B5 4C 02         [24] 6597 	cjne	a,_currAddr1,00265$
      001FD7 15 4D            [12] 6598 	dec	(_currAddr1 + 1)
      001FD9                       6599 00265$:
      001FD9 02 20 51         [24] 6600 	ljmp	00139$
      001FDC                       6601 00133$:
                                   6602 ;	ECEN4330Lab7.c:2078: currAddr0 = addr2;
      001FDC 85 46 4A         [24] 6603 	mov	_currAddr0,_addr2
      001FDF 85 47 4B         [24] 6604 	mov	(_currAddr0 + 1),(_addr2 + 1)
                                   6605 ;	ECEN4330Lab7.c:2079: count = 0;
      001FE2 E4               [12] 6606 	clr	a
      001FE3 F5 53            [12] 6607 	mov	_count,a
      001FE5 F5 54            [12] 6608 	mov	(_count + 1),a
                                   6609 ;	ECEN4330Lab7.c:2080: while(count < 8){
      001FE7                       6610 00129$:
      001FE7 C3               [12] 6611 	clr	c
      001FE8 E5 53            [12] 6612 	mov	a,_count
      001FEA 94 08            [12] 6613 	subb	a,#0x08
      001FEC E5 54            [12] 6614 	mov	a,(_count + 1)
      001FEE 94 00            [12] 6615 	subb	a,#0x00
      001FF0 50 2B            [24] 6616 	jnc	00131$
                                   6617 ;	ECEN4330Lab7.c:2081: currAddr0--;
      001FF2 15 4A            [12] 6618 	dec	_currAddr0
      001FF4 74 FF            [12] 6619 	mov	a,#0xff
      001FF6 B5 4A 02         [24] 6620 	cjne	a,_currAddr0,00267$
      001FF9 15 4B            [12] 6621 	dec	(_currAddr0 + 1)
      001FFB                       6622 00267$:
                                   6623 ;	ECEN4330Lab7.c:2082: data = RAMread(currAddr0);
      001FFB 85 4A 82         [24] 6624 	mov	dpl,_currAddr0
      001FFE 85 4B 83         [24] 6625 	mov	dph,(_currAddr0 + 1)
      002001 12 0D DA         [24] 6626 	lcall	_RAMread
      002004 85 82 41         [24] 6627 	mov	_data,dpl
                                   6628 ;	ECEN4330Lab7.c:2083: if(data == byte1){
      002007 AE 41            [24] 6629 	mov	r6,_data
      002009 7F 00            [12] 6630 	mov	r7,#0x00
      00200B EE               [12] 6631 	mov	a,r6
      00200C B5 50 D8         [24] 6632 	cjne	a,_byte1,00129$
      00200F EF               [12] 6633 	mov	a,r7
      002010 B5 51 D4         [24] 6634 	cjne	a,(_byte1 + 1),00129$
                                   6635 ;	ECEN4330Lab7.c:2084: count++;
      002013 05 53            [12] 6636 	inc	_count
      002015 E4               [12] 6637 	clr	a
      002016 B5 53 CE         [24] 6638 	cjne	a,_count,00129$
      002019 05 54            [12] 6639 	inc	(_count + 1)
      00201B 80 CA            [24] 6640 	sjmp	00129$
      00201D                       6641 00131$:
                                   6642 ;	ECEN4330Lab7.c:2087: addr2 = currAddr0;
      00201D 85 4A 46         [24] 6643 	mov	_addr2,_currAddr0
      002020 85 4B 47         [24] 6644 	mov	(_addr2 + 1),(_currAddr0 + 1)
                                   6645 ;	ECEN4330Lab7.c:2088: currAddr1 -= 2;
      002023 E5 4C            [12] 6646 	mov	a,_currAddr1
      002025 24 FE            [12] 6647 	add	a,#0xfe
      002027 F5 4C            [12] 6648 	mov	_currAddr1,a
      002029 E5 4D            [12] 6649 	mov	a,(_currAddr1 + 1)
      00202B 34 FF            [12] 6650 	addc	a,#0xff
      00202D F5 4D            [12] 6651 	mov	(_currAddr1 + 1),a
                                   6652 ;	ECEN4330Lab7.c:2090: break;
                                   6653 ;	ECEN4330Lab7.c:2096: case 'E':
      00202F 80 20            [24] 6654 	sjmp	00139$
      002031                       6655 00135$:
                                   6656 ;	ECEN4330Lab7.c:2097: resetLCD();
      002031 12 0D ED         [24] 6657 	lcall	_resetLCD
                                   6658 ;	ECEN4330Lab7.c:2098: LCD_string_write("Returning to\nmain menu.");
      002034 90 29 C0         [24] 6659 	mov	dptr,#___str_15
      002037 75 F0 80         [24] 6660 	mov	b,#0x80
      00203A 12 0A 5F         [24] 6661 	lcall	_LCD_string_write
                                   6662 ;	ECEN4330Lab7.c:2099: delay(200);
      00203D 90 00 C8         [24] 6663 	mov	dptr,#0x00c8
      002040 12 00 BF         [24] 6664 	lcall	_delay
                                   6665 ;	ECEN4330Lab7.c:2100: break;
                                   6666 ;	ECEN4330Lab7.c:2106: default:
      002043 80 0C            [24] 6667 	sjmp	00139$
      002045                       6668 00136$:
                                   6669 ;	ECEN4330Lab7.c:2107: invalidInput();
      002045 12 0E 15         [24] 6670 	lcall	_invalidInput
                                   6671 ;	ECEN4330Lab7.c:2108: currAddr1--;
      002048 15 4C            [12] 6672 	dec	_currAddr1
      00204A 74 FF            [12] 6673 	mov	a,#0xff
      00204C B5 4C 02         [24] 6674 	cjne	a,_currAddr1,00271$
      00204F 15 4D            [12] 6675 	dec	(_currAddr1 + 1)
      002051                       6676 00271$:
                                   6677 ;	ECEN4330Lab7.c:2111: }
      002051                       6678 00139$:
                                   6679 ;	ECEN4330Lab7.c:2112: }while(key != 'E');
      002051 74 45            [12] 6680 	mov	a,#0x45
      002053 B5 37 01         [24] 6681 	cjne	a,_key,00272$
      002056 22               [24] 6682 	ret
      002057                       6683 00272$:
      002057 02 1E 4B         [24] 6684 	ljmp	00138$
                                   6685 ;	ECEN4330Lab7.c:2114: }
      00205A 22               [24] 6686 	ret
                                   6687 ;------------------------------------------------------------
                                   6688 ;Allocation info for local variables in function 'FIND'
                                   6689 ;------------------------------------------------------------
                                   6690 ;	ECEN4330Lab7.c:2122: void FIND(){
                                   6691 ;	-----------------------------------------
                                   6692 ;	 function FIND
                                   6693 ;	-----------------------------------------
      00205B                       6694 _FIND:
                                   6695 ;	ECEN4330Lab7.c:2123: endAddrCalc = 0;
      00205B E4               [12] 6696 	clr	a
      00205C F5 55            [12] 6697 	mov	_endAddrCalc,a
      00205E F5 56            [12] 6698 	mov	(_endAddrCalc + 1),a
      002060 F5 57            [12] 6699 	mov	(_endAddrCalc + 2),a
      002062 F5 58            [12] 6700 	mov	(_endAddrCalc + 3),a
                                   6701 ;	ECEN4330Lab7.c:2124: addr0 = 0;                      // Starting Address
      002064 F5 42            [12] 6702 	mov	_addr0,a
      002066 F5 43            [12] 6703 	mov	(_addr0 + 1),a
                                   6704 ;	ECEN4330Lab7.c:2125: addr1 = 0;                      // End Address
      002068 F5 44            [12] 6705 	mov	_addr1,a
      00206A F5 45            [12] 6706 	mov	(_addr1 + 1),a
                                   6707 ;	ECEN4330Lab7.c:2126: dataType = 0;                   // Data Type
                                   6708 ;	1-genFromRTrack replaced	mov	_dataType,#0x00
      00206C F5 3B            [12] 6709 	mov	_dataType,a
                                   6710 ;	ECEN4330Lab7.c:2127: dataSize = 0;                   // Data Size
      00206E F5 3C            [12] 6711 	mov	_dataSize,a
      002070 F5 3D            [12] 6712 	mov	(_dataSize + 1),a
                                   6713 ;	ECEN4330Lab7.c:2128: byte1 = 0;                       // Find Value
      002072 F5 50            [12] 6714 	mov	_byte1,a
      002074 F5 51            [12] 6715 	mov	(_byte1 + 1),a
                                   6716 ;	ECEN4330Lab7.c:2131: resetLCD();
      002076 12 0D ED         [24] 6717 	lcall	_resetLCD
                                   6718 ;	ECEN4330Lab7.c:2132: LCD_string_write("\nEnter\nstarting RAM\naddress:\n\n   0x____");
      002079 90 2C DC         [24] 6719 	mov	dptr,#___str_47
      00207C 75 F0 80         [24] 6720 	mov	b,#0x80
      00207F 12 0A 5F         [24] 6721 	lcall	_LCD_string_write
                                   6722 ;	ECEN4330Lab7.c:2133: cursor_x -= 4 * textsize * 6;
      002082 E5 2D            [12] 6723 	mov	a,_textsize
      002084 75 F0 18         [24] 6724 	mov	b,#0x18
      002087 A4               [48] 6725 	mul	ab
      002088 FE               [12] 6726 	mov	r6,a
      002089 AF F0            [24] 6727 	mov	r7,b
      00208B E5 29            [12] 6728 	mov	a,_cursor_x
      00208D C3               [12] 6729 	clr	c
      00208E 9E               [12] 6730 	subb	a,r6
      00208F F5 29            [12] 6731 	mov	_cursor_x,a
      002091 E5 2A            [12] 6732 	mov	a,(_cursor_x + 1)
      002093 9F               [12] 6733 	subb	a,r7
      002094 F5 2A            [12] 6734 	mov	(_cursor_x + 1),a
                                   6735 ;	ECEN4330Lab7.c:2134: inputRead16();                  // Read input
      002096 12 0E 3E         [24] 6736 	lcall	_inputRead16
                                   6737 ;	ECEN4330Lab7.c:2135: addr0 = input16;                // Start address
      002099 85 38 42         [24] 6738 	mov	_addr0,_input16
      00209C 85 39 43         [24] 6739 	mov	(_addr0 + 1),(_input16 + 1)
                                   6740 ;	ECEN4330Lab7.c:2141: resetLCD();
      00209F 12 0D ED         [24] 6741 	lcall	_resetLCD
                                   6742 ;	ECEN4330Lab7.c:2142: inputDataSize();                // Prompt & read input
      0020A2 12 10 0A         [24] 6743 	lcall	_inputDataSize
                                   6744 ;	ECEN4330Lab7.c:2145: resetLCD();
      0020A5 12 0D ED         [24] 6745 	lcall	_resetLCD
                                   6746 ;	ECEN4330Lab7.c:2146: LCD_string_write("\nEnter search\nvalue:\n\n   0x__");
      0020A8 90 2D 04         [24] 6747 	mov	dptr,#___str_48
      0020AB 75 F0 80         [24] 6748 	mov	b,#0x80
      0020AE 12 0A 5F         [24] 6749 	lcall	_LCD_string_write
                                   6750 ;	ECEN4330Lab7.c:2147: cursor_x -= 2 * textsize * 6;
      0020B1 E5 2D            [12] 6751 	mov	a,_textsize
      0020B3 75 F0 0C         [24] 6752 	mov	b,#0x0c
      0020B6 A4               [48] 6753 	mul	ab
      0020B7 FE               [12] 6754 	mov	r6,a
      0020B8 AF F0            [24] 6755 	mov	r7,b
      0020BA E5 29            [12] 6756 	mov	a,_cursor_x
      0020BC C3               [12] 6757 	clr	c
      0020BD 9E               [12] 6758 	subb	a,r6
      0020BE F5 29            [12] 6759 	mov	_cursor_x,a
      0020C0 E5 2A            [12] 6760 	mov	a,(_cursor_x + 1)
      0020C2 9F               [12] 6761 	subb	a,r7
      0020C3 F5 2A            [12] 6762 	mov	(_cursor_x + 1),a
                                   6763 ;	ECEN4330Lab7.c:2148: inputRead8();                  // Read input
      0020C5 12 0E F9         [24] 6764 	lcall	_inputRead8
                                   6765 ;	ECEN4330Lab7.c:2149: byte1 = input8;                 // Find value
      0020C8 85 3A 50         [24] 6766 	mov	_byte1,_input8
      0020CB 75 51 00         [24] 6767 	mov	(_byte1 + 1),#0x00
                                   6768 ;	ECEN4330Lab7.c:2152: endAddrCalc = addr0 + dataSize;
      0020CE E5 3C            [12] 6769 	mov	a,_dataSize
      0020D0 25 42            [12] 6770 	add	a,_addr0
      0020D2 FE               [12] 6771 	mov	r6,a
      0020D3 E5 3D            [12] 6772 	mov	a,(_dataSize + 1)
      0020D5 35 43            [12] 6773 	addc	a,(_addr0 + 1)
      0020D7 FF               [12] 6774 	mov	r7,a
      0020D8 8E 55            [24] 6775 	mov	_endAddrCalc,r6
      0020DA 8F 56            [24] 6776 	mov	(_endAddrCalc + 1),r7
      0020DC 75 57 00         [24] 6777 	mov	(_endAddrCalc + 2),#0x00
      0020DF 75 58 00         [24] 6778 	mov	(_endAddrCalc + 3),#0x00
                                   6779 ;	ECEN4330Lab7.c:2153: if(endAddrCalc < addr0){ // RAM overflow
      0020E2 AC 42            [24] 6780 	mov	r4,_addr0
      0020E4 AD 43            [24] 6781 	mov	r5,(_addr0 + 1)
      0020E6 7E 00            [12] 6782 	mov	r6,#0x00
      0020E8 7F 00            [12] 6783 	mov	r7,#0x00
      0020EA C3               [12] 6784 	clr	c
      0020EB E5 55            [12] 6785 	mov	a,_endAddrCalc
      0020ED 9C               [12] 6786 	subb	a,r4
      0020EE E5 56            [12] 6787 	mov	a,(_endAddrCalc + 1)
      0020F0 9D               [12] 6788 	subb	a,r5
      0020F1 E5 57            [12] 6789 	mov	a,(_endAddrCalc + 2)
      0020F3 9E               [12] 6790 	subb	a,r6
      0020F4 E5 58            [12] 6791 	mov	a,(_endAddrCalc + 3)
      0020F6 9F               [12] 6792 	subb	a,r7
      0020F7 50 14            [24] 6793 	jnc	00102$
                                   6794 ;	ECEN4330Lab7.c:2154: addr1 = 0xFFFF;             // Set end address
      0020F9 75 44 FF         [24] 6795 	mov	_addr1,#0xff
                                   6796 ;	ECEN4330Lab7.c:2155: dataSize = addr1 - addr0;   // Recalculate data size
      0020FC 74 FF            [12] 6797 	mov	a,#0xff
      0020FE F5 45            [12] 6798 	mov	(_addr1 + 1),a
      002100 C3               [12] 6799 	clr	c
      002101 95 42            [12] 6800 	subb	a,_addr0
      002103 F5 3C            [12] 6801 	mov	_dataSize,a
      002105 74 FF            [12] 6802 	mov	a,#0xff
      002107 95 43            [12] 6803 	subb	a,(_addr0 + 1)
      002109 F5 3D            [12] 6804 	mov	(_dataSize + 1),a
      00210B 80 0C            [24] 6805 	sjmp	00103$
      00210D                       6806 00102$:
                                   6807 ;	ECEN4330Lab7.c:2158: addr1 = addr0 + dataSize;
      00210D E5 3C            [12] 6808 	mov	a,_dataSize
      00210F 25 42            [12] 6809 	add	a,_addr0
      002111 F5 44            [12] 6810 	mov	_addr1,a
      002113 E5 3D            [12] 6811 	mov	a,(_dataSize + 1)
      002115 35 43            [12] 6812 	addc	a,(_addr0 + 1)
      002117 F5 45            [12] 6813 	mov	(_addr1 + 1),a
      002119                       6814 00103$:
                                   6815 ;	ECEN4330Lab7.c:2178: FIND_display();                 // Display dump data
                                   6816 ;	ECEN4330Lab7.c:2179: }
      002119 02 1D 66         [24] 6817 	ljmp	_FIND_display
                                   6818 ;------------------------------------------------------------
                                   6819 ;Allocation info for local variables in function 'LCD_mainMenu'
                                   6820 ;------------------------------------------------------------
                                   6821 ;__1310720043              Allocated to registers 
                                   6822 ;__1310720044              Allocated to registers 
                                   6823 ;map_address               Allocated to registers 
                                   6824 ;d                         Allocated to registers 
                                   6825 ;__1966080046              Allocated to registers 
                                   6826 ;__1966080047              Allocated to registers 
                                   6827 ;map_address               Allocated to registers 
                                   6828 ;d                         Allocated to registers 
                                   6829 ;__1966080049              Allocated to registers 
                                   6830 ;__1966080050              Allocated to registers 
                                   6831 ;map_address               Allocated to registers 
                                   6832 ;d                         Allocated to registers 
                                   6833 ;__1966080052              Allocated to registers 
                                   6834 ;__1966080053              Allocated to registers 
                                   6835 ;map_address               Allocated to registers 
                                   6836 ;d                         Allocated to registers 
                                   6837 ;__1966080055              Allocated to registers 
                                   6838 ;__1966080056              Allocated to registers 
                                   6839 ;map_address               Allocated to registers 
                                   6840 ;d                         Allocated to registers 
                                   6841 ;__1966080058              Allocated to registers 
                                   6842 ;__1966080059              Allocated to registers 
                                   6843 ;map_address               Allocated to registers 
                                   6844 ;d                         Allocated to registers 
                                   6845 ;__1966080061              Allocated to registers 
                                   6846 ;__1966080062              Allocated to registers 
                                   6847 ;map_address               Allocated to registers 
                                   6848 ;d                         Allocated to registers 
                                   6849 ;__1966080064              Allocated to registers 
                                   6850 ;__1966080065              Allocated to registers 
                                   6851 ;map_address               Allocated to registers 
                                   6852 ;d                         Allocated to registers 
                                   6853 ;------------------------------------------------------------
                                   6854 ;	ECEN4330Lab7.c:2241: void LCD_mainMenu() {
                                   6855 ;	-----------------------------------------
                                   6856 ;	 function LCD_mainMenu
                                   6857 ;	-----------------------------------------
      00211C                       6858 _LCD_mainMenu:
                                   6859 ;	ECEN4330Lab7.c:2243: key = 0;
      00211C 75 37 00         [24] 6860 	mov	_key,#0x00
                                   6861 ;	ECEN4330Lab7.c:2244: iowrite8(seg7_address, 0xC0);
      00211F 85 25 82         [24] 6862 	mov	dpl,_seg7_address
      002122 85 26 83         [24] 6863 	mov	dph,(_seg7_address + 1)
                                   6864 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   6865 ;	assignBit
      002125 D2 B4            [12] 6866 	setb	_P3_4
                                   6867 ;	ECEN4330Lab7.c:167: *map_address = d;
      002127 74 C0            [12] 6868 	mov	a,#0xc0
      002129 F0               [24] 6869 	movx	@dptr,a
                                   6870 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   6871 ;	assignBit
      00212A C2 B4            [12] 6872 	clr	_P3_4
                                   6873 ;	ECEN4330Lab7.c:2247: resetLCD();
      00212C 12 0D ED         [24] 6874 	lcall	_resetLCD
                                   6875 ;	ECEN4330Lab7.c:2248: setTextColor(GREEN, BLACK);
      00212F E4               [12] 6876 	clr	a
      002130 F5 08            [12] 6877 	mov	_setTextColor_PARM_2,a
      002132 F5 09            [12] 6878 	mov	(_setTextColor_PARM_2 + 1),a
      002134 90 07 E0         [24] 6879 	mov	dptr,#0x07e0
      002137 12 03 70         [24] 6880 	lcall	_setTextColor
                                   6881 ;	ECEN4330Lab7.c:2249: LCD_string_write("   Cameron\n   Biniamow\n");
      00213A 90 2D 22         [24] 6882 	mov	dptr,#___str_49
      00213D 75 F0 80         [24] 6883 	mov	b,#0x80
      002140 12 0A 5F         [24] 6884 	lcall	_LCD_string_write
                                   6885 ;	ECEN4330Lab7.c:2250: LCD_string_write("  ECEN-4330\n\n");
      002143 90 2D 3A         [24] 6886 	mov	dptr,#___str_50
      002146 75 F0 80         [24] 6887 	mov	b,#0x80
      002149 12 0A 5F         [24] 6888 	lcall	_LCD_string_write
                                   6889 ;	ECEN4330Lab7.c:2253: setTextColor(WHITE, BLACK);
      00214C E4               [12] 6890 	clr	a
      00214D F5 08            [12] 6891 	mov	_setTextColor_PARM_2,a
      00214F F5 09            [12] 6892 	mov	(_setTextColor_PARM_2 + 1),a
      002151 90 FF FF         [24] 6893 	mov	dptr,#0xffff
      002154 12 03 70         [24] 6894 	lcall	_setTextColor
                                   6895 ;	ECEN4330Lab7.c:2254: LCD_string_write("(A) RAM CHECK\n");
      002157 90 2D 48         [24] 6896 	mov	dptr,#___str_51
      00215A 75 F0 80         [24] 6897 	mov	b,#0x80
      00215D 12 0A 5F         [24] 6898 	lcall	_LCD_string_write
                                   6899 ;	ECEN4330Lab7.c:2255: LCD_string_write("(B) MOVE\n");
      002160 90 2D 57         [24] 6900 	mov	dptr,#___str_52
      002163 75 F0 80         [24] 6901 	mov	b,#0x80
      002166 12 0A 5F         [24] 6902 	lcall	_LCD_string_write
                                   6903 ;	ECEN4330Lab7.c:2256: LCD_string_write("(C) COUNT\n");
      002169 90 2D 61         [24] 6904 	mov	dptr,#___str_53
      00216C 75 F0 80         [24] 6905 	mov	b,#0x80
      00216F 12 0A 5F         [24] 6906 	lcall	_LCD_string_write
                                   6907 ;	ECEN4330Lab7.c:2257: LCD_string_write("(D) DUMP\n");
      002172 90 2D 6C         [24] 6908 	mov	dptr,#___str_54
      002175 75 F0 80         [24] 6909 	mov	b,#0x80
      002178 12 0A 5F         [24] 6910 	lcall	_LCD_string_write
                                   6911 ;	ECEN4330Lab7.c:2258: LCD_string_write("(E) EDIT\n");
      00217B 90 2D 76         [24] 6912 	mov	dptr,#___str_55
      00217E 75 F0 80         [24] 6913 	mov	b,#0x80
      002181 12 0A 5F         [24] 6914 	lcall	_LCD_string_write
                                   6915 ;	ECEN4330Lab7.c:2259: LCD_string_write("(F) FIND\n");
      002184 90 2D 80         [24] 6916 	mov	dptr,#___str_56
      002187 75 F0 80         [24] 6917 	mov	b,#0x80
      00218A 12 0A 5F         [24] 6918 	lcall	_LCD_string_write
                                   6919 ;	ECEN4330Lab7.c:2262: setTextColor(WHITE, BLACK);
      00218D E4               [12] 6920 	clr	a
      00218E F5 08            [12] 6921 	mov	_setTextColor_PARM_2,a
      002190 F5 09            [12] 6922 	mov	(_setTextColor_PARM_2 + 1),a
      002192 90 FF FF         [24] 6923 	mov	dptr,#0xffff
      002195 12 03 70         [24] 6924 	lcall	_setTextColor
                                   6925 ;	ECEN4330Lab7.c:2263: setTextSize(1);
      002198 75 82 01         [24] 6926 	mov	dpl,#0x01
      00219B 12 03 7D         [24] 6927 	lcall	_setTextSize
                                   6928 ;	ECEN4330Lab7.c:2264: setCursor(3, 304);
      00219E 75 08 30         [24] 6929 	mov	_setCursor_PARM_2,#0x30
      0021A1 75 09 01         [24] 6930 	mov	(_setCursor_PARM_2 + 1),#0x01
      0021A4 90 00 03         [24] 6931 	mov	dptr,#0x0003
      0021A7 12 03 63         [24] 6932 	lcall	_setCursor
                                   6933 ;	ECEN4330Lab7.c:2265: LCD_string_write("Spring 2021");
      0021AA 90 2D 8A         [24] 6934 	mov	dptr,#___str_57
      0021AD 75 F0 80         [24] 6935 	mov	b,#0x80
      0021B0 12 0A 5F         [24] 6936 	lcall	_LCD_string_write
                                   6937 ;	ECEN4330Lab7.c:2266: rtcPrint();
      0021B3 12 02 07         [24] 6938 	lcall	_rtcPrint
                                   6939 ;	ECEN4330Lab7.c:2269: key = keyDetect();
      0021B6 12 0A 9E         [24] 6940 	lcall	_keyDetect
      0021B9 85 82 37         [24] 6941 	mov	_key,dpl
                                   6942 ;	ECEN4330Lab7.c:2270: switch (key)
      0021BC 74 41            [12] 6943 	mov	a,#0x41
      0021BE B5 37 02         [24] 6944 	cjne	a,_key,00143$
      0021C1 80 23            [24] 6945 	sjmp	00101$
      0021C3                       6946 00143$:
      0021C3 74 42            [12] 6947 	mov	a,#0x42
      0021C5 B5 37 02         [24] 6948 	cjne	a,_key,00144$
      0021C8 80 2C            [24] 6949 	sjmp	00102$
      0021CA                       6950 00144$:
      0021CA 74 43            [12] 6951 	mov	a,#0x43
      0021CC B5 37 02         [24] 6952 	cjne	a,_key,00145$
      0021CF 80 35            [24] 6953 	sjmp	00103$
      0021D1                       6954 00145$:
      0021D1 74 44            [12] 6955 	mov	a,#0x44
      0021D3 B5 37 02         [24] 6956 	cjne	a,_key,00146$
      0021D6 80 3E            [24] 6957 	sjmp	00104$
      0021D8                       6958 00146$:
      0021D8 74 45            [12] 6959 	mov	a,#0x45
      0021DA B5 37 02         [24] 6960 	cjne	a,_key,00147$
      0021DD 80 47            [24] 6961 	sjmp	00105$
      0021DF                       6962 00147$:
      0021DF 74 46            [12] 6963 	mov	a,#0x46
                                   6964 ;	ECEN4330Lab7.c:2272: case 'A':
      0021E1 B5 37 62         [24] 6965 	cjne	a,_key,00107$
      0021E4 80 50            [24] 6966 	sjmp	00106$
      0021E6                       6967 00101$:
                                   6968 ;	ECEN4330Lab7.c:2273: iowrite8(seg7_address, 0x88);
      0021E6 85 25 82         [24] 6969 	mov	dpl,_seg7_address
      0021E9 85 26 83         [24] 6970 	mov	dph,(_seg7_address + 1)
                                   6971 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   6972 ;	assignBit
      0021EC D2 B4            [12] 6973 	setb	_P3_4
                                   6974 ;	ECEN4330Lab7.c:167: *map_address = d;
      0021EE 74 88            [12] 6975 	mov	a,#0x88
      0021F0 F0               [24] 6976 	movx	@dptr,a
                                   6977 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   6978 ;	assignBit
      0021F1 C2 B4            [12] 6979 	clr	_P3_4
                                   6980 ;	ECEN4330Lab7.c:2274: RAM_CHECK();
                                   6981 ;	ECEN4330Lab7.c:2275: break;
                                   6982 ;	ECEN4330Lab7.c:2276: case 'B':
      0021F3 02 11 41         [24] 6983 	ljmp	_RAM_CHECK
      0021F6                       6984 00102$:
                                   6985 ;	ECEN4330Lab7.c:2277: iowrite8(seg7_address, 0x83);
      0021F6 85 25 82         [24] 6986 	mov	dpl,_seg7_address
      0021F9 85 26 83         [24] 6987 	mov	dph,(_seg7_address + 1)
                                   6988 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   6989 ;	assignBit
      0021FC D2 B4            [12] 6990 	setb	_P3_4
                                   6991 ;	ECEN4330Lab7.c:167: *map_address = d;
      0021FE 74 83            [12] 6992 	mov	a,#0x83
      002200 F0               [24] 6993 	movx	@dptr,a
                                   6994 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   6995 ;	assignBit
      002201 C2 B4            [12] 6996 	clr	_P3_4
                                   6997 ;	ECEN4330Lab7.c:2278: MOVE();
                                   6998 ;	ECEN4330Lab7.c:2279: break;
                                   6999 ;	ECEN4330Lab7.c:2280: case 'C':
      002203 02 13 7A         [24] 7000 	ljmp	_MOVE
      002206                       7001 00103$:
                                   7002 ;	ECEN4330Lab7.c:2281: iowrite8(seg7_address, 0xC6);
      002206 85 25 82         [24] 7003 	mov	dpl,_seg7_address
      002209 85 26 83         [24] 7004 	mov	dph,(_seg7_address + 1)
                                   7005 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   7006 ;	assignBit
      00220C D2 B4            [12] 7007 	setb	_P3_4
                                   7008 ;	ECEN4330Lab7.c:167: *map_address = d;
      00220E 74 C6            [12] 7009 	mov	a,#0xc6
      002210 F0               [24] 7010 	movx	@dptr,a
                                   7011 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   7012 ;	assignBit
      002211 C2 B4            [12] 7013 	clr	_P3_4
                                   7014 ;	ECEN4330Lab7.c:2282: COUNT();
                                   7015 ;	ECEN4330Lab7.c:2283: break;
                                   7016 ;	ECEN4330Lab7.c:2284: case 'D':
      002213 02 15 96         [24] 7017 	ljmp	_COUNT
      002216                       7018 00104$:
                                   7019 ;	ECEN4330Lab7.c:2285: iowrite8(seg7_address, 0xA1);
      002216 85 25 82         [24] 7020 	mov	dpl,_seg7_address
      002219 85 26 83         [24] 7021 	mov	dph,(_seg7_address + 1)
                                   7022 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   7023 ;	assignBit
      00221C D2 B4            [12] 7024 	setb	_P3_4
                                   7025 ;	ECEN4330Lab7.c:167: *map_address = d;
      00221E 74 A1            [12] 7026 	mov	a,#0xa1
      002220 F0               [24] 7027 	movx	@dptr,a
                                   7028 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   7029 ;	assignBit
      002221 C2 B4            [12] 7030 	clr	_P3_4
                                   7031 ;	ECEN4330Lab7.c:2286: DUMP();
                                   7032 ;	ECEN4330Lab7.c:2287: break;
                                   7033 ;	ECEN4330Lab7.c:2288: case 'E':
      002223 02 1B 44         [24] 7034 	ljmp	_DUMP
      002226                       7035 00105$:
                                   7036 ;	ECEN4330Lab7.c:2289: iowrite8(seg7_address, 0x86);
      002226 85 25 82         [24] 7037 	mov	dpl,_seg7_address
      002229 85 26 83         [24] 7038 	mov	dph,(_seg7_address + 1)
                                   7039 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   7040 ;	assignBit
      00222C D2 B4            [12] 7041 	setb	_P3_4
                                   7042 ;	ECEN4330Lab7.c:167: *map_address = d;
      00222E 74 86            [12] 7043 	mov	a,#0x86
      002230 F0               [24] 7044 	movx	@dptr,a
                                   7045 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   7046 ;	assignBit
      002231 C2 B4            [12] 7047 	clr	_P3_4
                                   7048 ;	ECEN4330Lab7.c:2290: EDIT();
                                   7049 ;	ECEN4330Lab7.c:2291: break;
                                   7050 ;	ECEN4330Lab7.c:2292: case 'F':
      002233 02 1C AE         [24] 7051 	ljmp	_EDIT
      002236                       7052 00106$:
                                   7053 ;	ECEN4330Lab7.c:2293: iowrite8(seg7_address, 0x8E);
      002236 85 25 82         [24] 7054 	mov	dpl,_seg7_address
      002239 85 26 83         [24] 7055 	mov	dph,(_seg7_address + 1)
                                   7056 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   7057 ;	assignBit
      00223C D2 B4            [12] 7058 	setb	_P3_4
                                   7059 ;	ECEN4330Lab7.c:167: *map_address = d;
      00223E 74 8E            [12] 7060 	mov	a,#0x8e
      002240 F0               [24] 7061 	movx	@dptr,a
                                   7062 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   7063 ;	assignBit
      002241 C2 B4            [12] 7064 	clr	_P3_4
                                   7065 ;	ECEN4330Lab7.c:2294: FIND();
                                   7066 ;	ECEN4330Lab7.c:2295: break;
                                   7067 ;	ECEN4330Lab7.c:2304: default:
      002243 02 20 5B         [24] 7068 	ljmp	_FIND
      002246                       7069 00107$:
                                   7070 ;	ECEN4330Lab7.c:2305: iowrite8(seg7_address, 0xFF);
      002246 85 25 82         [24] 7071 	mov	dpl,_seg7_address
      002249 85 26 83         [24] 7072 	mov	dph,(_seg7_address + 1)
                                   7073 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   7074 ;	assignBit
      00224C D2 B4            [12] 7075 	setb	_P3_4
                                   7076 ;	ECEN4330Lab7.c:167: *map_address = d;
      00224E 74 FF            [12] 7077 	mov	a,#0xff
      002250 F0               [24] 7078 	movx	@dptr,a
                                   7079 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   7080 ;	assignBit
      002251 C2 B4            [12] 7081 	clr	_P3_4
                                   7082 ;	ECEN4330Lab7.c:2306: invalidInput();
                                   7083 ;	ECEN4330Lab7.c:2308: }
                                   7084 ;	ECEN4330Lab7.c:2309: }
      002253 02 0E 15         [24] 7085 	ljmp	_invalidInput
                                   7086 ;------------------------------------------------------------
                                   7087 ;Allocation info for local variables in function 'main'
                                   7088 ;------------------------------------------------------------
                                   7089 ;__1310720067              Allocated to registers 
                                   7090 ;__1310720068              Allocated to registers 
                                   7091 ;map_address               Allocated to registers 
                                   7092 ;d                         Allocated to registers 
                                   7093 ;__1310720070              Allocated to registers 
                                   7094 ;__1310720071              Allocated to registers 
                                   7095 ;map_address               Allocated to registers 
                                   7096 ;d                         Allocated to registers 
                                   7097 ;__1310720073              Allocated to registers 
                                   7098 ;__1310720074              Allocated to registers 
                                   7099 ;map_address               Allocated to registers 
                                   7100 ;d                         Allocated to registers 
                                   7101 ;__1310720076              Allocated to registers 
                                   7102 ;__1310720077              Allocated to registers 
                                   7103 ;map_address               Allocated to registers 
                                   7104 ;d                         Allocated to registers 
                                   7105 ;__1310720079              Allocated to registers 
                                   7106 ;__1310720080              Allocated to registers 
                                   7107 ;map_address               Allocated to registers 
                                   7108 ;d                         Allocated to registers 
                                   7109 ;__1310720082              Allocated to registers 
                                   7110 ;__1310720083              Allocated to registers 
                                   7111 ;map_address               Allocated to registers 
                                   7112 ;d                         Allocated to registers 
                                   7113 ;__1310720085              Allocated to registers 
                                   7114 ;__1310720086              Allocated to registers 
                                   7115 ;map_address               Allocated to registers 
                                   7116 ;d                         Allocated to registers 
                                   7117 ;------------------------------------------------------------
                                   7118 ;	ECEN4330Lab7.c:2318: void main (void) {
                                   7119 ;	-----------------------------------------
                                   7120 ;	 function main
                                   7121 ;	-----------------------------------------
      002256                       7122 _main:
                                   7123 ;	ECEN4330Lab7.c:2319: CD = 0;
                                   7124 ;	assignBit
      002256 C2 B5            [12] 7125 	clr	_P3_5
                                   7126 ;	ECEN4330Lab7.c:2320: IOM = 0;
                                   7127 ;	assignBit
      002258 C2 B4            [12] 7128 	clr	_P3_4
                                   7129 ;	ECEN4330Lab7.c:2322: UART_Init();
      00225A 12 00 A6         [24] 7130 	lcall	_UART_Init
                                   7131 ;	ECEN4330Lab7.c:2323: rtcInit();
      00225D 12 01 50         [24] 7132 	lcall	_rtcInit
                                   7133 ;	ECEN4330Lab7.c:2325: iowrite8(seg7_address, 0xFE);//a
      002260 85 25 82         [24] 7134 	mov	dpl,_seg7_address
      002263 85 26 83         [24] 7135 	mov	dph,(_seg7_address + 1)
                                   7136 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   7137 ;	assignBit
      002266 D2 B4            [12] 7138 	setb	_P3_4
                                   7139 ;	ECEN4330Lab7.c:167: *map_address = d;
      002268 74 FE            [12] 7140 	mov	a,#0xfe
      00226A F0               [24] 7141 	movx	@dptr,a
                                   7142 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   7143 ;	assignBit
      00226B C2 B4            [12] 7144 	clr	_P3_4
                                   7145 ;	ECEN4330Lab7.c:2326: delay(100);
      00226D 90 00 64         [24] 7146 	mov	dptr,#0x0064
      002270 12 00 BF         [24] 7147 	lcall	_delay
                                   7148 ;	ECEN4330Lab7.c:2327: iowrite8(seg7_address, 0xFC);//a & b
      002273 85 25 82         [24] 7149 	mov	dpl,_seg7_address
      002276 85 26 83         [24] 7150 	mov	dph,(_seg7_address + 1)
                                   7151 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   7152 ;	assignBit
      002279 D2 B4            [12] 7153 	setb	_P3_4
                                   7154 ;	ECEN4330Lab7.c:167: *map_address = d;
      00227B 74 FC            [12] 7155 	mov	a,#0xfc
      00227D F0               [24] 7156 	movx	@dptr,a
                                   7157 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   7158 ;	assignBit
      00227E C2 B4            [12] 7159 	clr	_P3_4
                                   7160 ;	ECEN4330Lab7.c:2328: delay(100);
      002280 90 00 64         [24] 7161 	mov	dptr,#0x0064
      002283 12 00 BF         [24] 7162 	lcall	_delay
                                   7163 ;	ECEN4330Lab7.c:2329: iowrite8(seg7_address, 0xF8);//a & b & c
      002286 85 25 82         [24] 7164 	mov	dpl,_seg7_address
      002289 85 26 83         [24] 7165 	mov	dph,(_seg7_address + 1)
                                   7166 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   7167 ;	assignBit
      00228C D2 B4            [12] 7168 	setb	_P3_4
                                   7169 ;	ECEN4330Lab7.c:167: *map_address = d;
      00228E 74 F8            [12] 7170 	mov	a,#0xf8
      002290 F0               [24] 7171 	movx	@dptr,a
                                   7172 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   7173 ;	assignBit
      002291 C2 B4            [12] 7174 	clr	_P3_4
                                   7175 ;	ECEN4330Lab7.c:2330: delay(100);
      002293 90 00 64         [24] 7176 	mov	dptr,#0x0064
      002296 12 00 BF         [24] 7177 	lcall	_delay
                                   7178 ;	ECEN4330Lab7.c:2331: iowrite8(seg7_address, 0xF0);//a & b & c & d
      002299 85 25 82         [24] 7179 	mov	dpl,_seg7_address
      00229C 85 26 83         [24] 7180 	mov	dph,(_seg7_address + 1)
                                   7181 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   7182 ;	assignBit
      00229F D2 B4            [12] 7183 	setb	_P3_4
                                   7184 ;	ECEN4330Lab7.c:167: *map_address = d;
      0022A1 74 F0            [12] 7185 	mov	a,#0xf0
      0022A3 F0               [24] 7186 	movx	@dptr,a
                                   7187 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   7188 ;	assignBit
      0022A4 C2 B4            [12] 7189 	clr	_P3_4
                                   7190 ;	ECEN4330Lab7.c:2332: delay(100);
      0022A6 90 00 64         [24] 7191 	mov	dptr,#0x0064
      0022A9 12 00 BF         [24] 7192 	lcall	_delay
                                   7193 ;	ECEN4330Lab7.c:2333: iowrite8(seg7_address, 0xE0);//a & b & c & d & e
      0022AC 85 25 82         [24] 7194 	mov	dpl,_seg7_address
      0022AF 85 26 83         [24] 7195 	mov	dph,(_seg7_address + 1)
                                   7196 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   7197 ;	assignBit
      0022B2 D2 B4            [12] 7198 	setb	_P3_4
                                   7199 ;	ECEN4330Lab7.c:167: *map_address = d;
      0022B4 74 E0            [12] 7200 	mov	a,#0xe0
      0022B6 F0               [24] 7201 	movx	@dptr,a
                                   7202 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   7203 ;	assignBit
      0022B7 C2 B4            [12] 7204 	clr	_P3_4
                                   7205 ;	ECEN4330Lab7.c:2334: delay(100);
      0022B9 90 00 64         [24] 7206 	mov	dptr,#0x0064
      0022BC 12 00 BF         [24] 7207 	lcall	_delay
                                   7208 ;	ECEN4330Lab7.c:2335: iowrite8(seg7_address, 0xC0);//a & b & c & d & e & f
      0022BF 85 25 82         [24] 7209 	mov	dpl,_seg7_address
      0022C2 85 26 83         [24] 7210 	mov	dph,(_seg7_address + 1)
                                   7211 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   7212 ;	assignBit
      0022C5 D2 B4            [12] 7213 	setb	_P3_4
                                   7214 ;	ECEN4330Lab7.c:167: *map_address = d;
      0022C7 74 C0            [12] 7215 	mov	a,#0xc0
      0022C9 F0               [24] 7216 	movx	@dptr,a
                                   7217 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   7218 ;	assignBit
      0022CA C2 B4            [12] 7219 	clr	_P3_4
                                   7220 ;	ECEN4330Lab7.c:2336: delay(100);
      0022CC 90 00 64         [24] 7221 	mov	dptr,#0x0064
      0022CF 12 00 BF         [24] 7222 	lcall	_delay
                                   7223 ;	ECEN4330Lab7.c:2337: IOM = 0;
                                   7224 ;	assignBit
      0022D2 C2 B4            [12] 7225 	clr	_P3_4
                                   7226 ;	ECEN4330Lab7.c:2338: CD = 1;
                                   7227 ;	assignBit
      0022D4 D2 B5            [12] 7228 	setb	_P3_5
                                   7229 ;	ECEN4330Lab7.c:2340: TFT_LCD_INIT();
      0022D6 12 04 9B         [24] 7230 	lcall	_TFT_LCD_INIT
                                   7231 ;	ECEN4330Lab7.c:2341: iowrite8(seg7_address, 0xF9);
      0022D9 85 25 82         [24] 7232 	mov	dpl,_seg7_address
      0022DC 85 26 83         [24] 7233 	mov	dph,(_seg7_address + 1)
                                   7234 ;	ECEN4330Lab7.c:166: IOM = 1;
                                   7235 ;	assignBit
      0022DF D2 B4            [12] 7236 	setb	_P3_4
                                   7237 ;	ECEN4330Lab7.c:167: *map_address = d;
      0022E1 74 F9            [12] 7238 	mov	a,#0xf9
      0022E3 F0               [24] 7239 	movx	@dptr,a
                                   7240 ;	ECEN4330Lab7.c:168: IOM = 0;
                                   7241 ;	assignBit
      0022E4 C2 B4            [12] 7242 	clr	_P3_4
                                   7243 ;	ECEN4330Lab7.c:2342: resetLCD();
      0022E6 12 0D ED         [24] 7244 	lcall	_resetLCD
                                   7245 ;	ECEN4330Lab7.c:2344: while(1) {
      0022E9                       7246 00102$:
                                   7247 ;	ECEN4330Lab7.c:2345: LCD_mainMenu();
      0022E9 12 21 1C         [24] 7248 	lcall	_LCD_mainMenu
                                   7249 ;	ECEN4330Lab7.c:2347: }
      0022EC 80 FB            [24] 7250 	sjmp	00102$
                                   7251 	.area CSEG    (CODE)
                                   7252 	.area CONST   (CODE)
      0023A1                       7253 _font:
      0023A1 00                    7254 	.db #0x00	; 0
      0023A2 00                    7255 	.db #0x00	; 0
      0023A3 00                    7256 	.db #0x00	; 0
      0023A4 00                    7257 	.db #0x00	; 0
      0023A5 00                    7258 	.db #0x00	; 0
      0023A6 3E                    7259 	.db #0x3e	; 62
      0023A7 5B                    7260 	.db #0x5b	; 91
      0023A8 4F                    7261 	.db #0x4f	; 79	'O'
      0023A9 5B                    7262 	.db #0x5b	; 91
      0023AA 3E                    7263 	.db #0x3e	; 62
      0023AB 3E                    7264 	.db #0x3e	; 62
      0023AC 6B                    7265 	.db #0x6b	; 107	'k'
      0023AD 4F                    7266 	.db #0x4f	; 79	'O'
      0023AE 6B                    7267 	.db #0x6b	; 107	'k'
      0023AF 3E                    7268 	.db #0x3e	; 62
      0023B0 1C                    7269 	.db #0x1c	; 28
      0023B1 3E                    7270 	.db #0x3e	; 62
      0023B2 7C                    7271 	.db #0x7c	; 124
      0023B3 3E                    7272 	.db #0x3e	; 62
      0023B4 1C                    7273 	.db #0x1c	; 28
      0023B5 18                    7274 	.db #0x18	; 24
      0023B6 3C                    7275 	.db #0x3c	; 60
      0023B7 7E                    7276 	.db #0x7e	; 126
      0023B8 3C                    7277 	.db #0x3c	; 60
      0023B9 18                    7278 	.db #0x18	; 24
      0023BA 1C                    7279 	.db #0x1c	; 28
      0023BB 57                    7280 	.db #0x57	; 87	'W'
      0023BC 7D                    7281 	.db #0x7d	; 125
      0023BD 57                    7282 	.db #0x57	; 87	'W'
      0023BE 1C                    7283 	.db #0x1c	; 28
      0023BF 1C                    7284 	.db #0x1c	; 28
      0023C0 5E                    7285 	.db #0x5e	; 94
      0023C1 7F                    7286 	.db #0x7f	; 127
      0023C2 5E                    7287 	.db #0x5e	; 94
      0023C3 1C                    7288 	.db #0x1c	; 28
      0023C4 00                    7289 	.db #0x00	; 0
      0023C5 18                    7290 	.db #0x18	; 24
      0023C6 3C                    7291 	.db #0x3c	; 60
      0023C7 18                    7292 	.db #0x18	; 24
      0023C8 00                    7293 	.db #0x00	; 0
      0023C9 FF                    7294 	.db #0xff	; 255
      0023CA E7                    7295 	.db #0xe7	; 231
      0023CB C3                    7296 	.db #0xc3	; 195
      0023CC E7                    7297 	.db #0xe7	; 231
      0023CD FF                    7298 	.db #0xff	; 255
      0023CE 00                    7299 	.db #0x00	; 0
      0023CF 18                    7300 	.db #0x18	; 24
      0023D0 24                    7301 	.db #0x24	; 36
      0023D1 18                    7302 	.db #0x18	; 24
      0023D2 00                    7303 	.db #0x00	; 0
      0023D3 FF                    7304 	.db #0xff	; 255
      0023D4 E7                    7305 	.db #0xe7	; 231
      0023D5 DB                    7306 	.db #0xdb	; 219
      0023D6 E7                    7307 	.db #0xe7	; 231
      0023D7 FF                    7308 	.db #0xff	; 255
      0023D8 30                    7309 	.db #0x30	; 48	'0'
      0023D9 48                    7310 	.db #0x48	; 72	'H'
      0023DA 3A                    7311 	.db #0x3a	; 58
      0023DB 06                    7312 	.db #0x06	; 6
      0023DC 0E                    7313 	.db #0x0e	; 14
      0023DD 26                    7314 	.db #0x26	; 38
      0023DE 29                    7315 	.db #0x29	; 41
      0023DF 79                    7316 	.db #0x79	; 121	'y'
      0023E0 29                    7317 	.db #0x29	; 41
      0023E1 26                    7318 	.db #0x26	; 38
      0023E2 40                    7319 	.db #0x40	; 64
      0023E3 7F                    7320 	.db #0x7f	; 127
      0023E4 05                    7321 	.db #0x05	; 5
      0023E5 05                    7322 	.db #0x05	; 5
      0023E6 07                    7323 	.db #0x07	; 7
      0023E7 40                    7324 	.db #0x40	; 64
      0023E8 7F                    7325 	.db #0x7f	; 127
      0023E9 05                    7326 	.db #0x05	; 5
      0023EA 25                    7327 	.db #0x25	; 37
      0023EB 3F                    7328 	.db #0x3f	; 63
      0023EC 5A                    7329 	.db #0x5a	; 90	'Z'
      0023ED 3C                    7330 	.db #0x3c	; 60
      0023EE E7                    7331 	.db #0xe7	; 231
      0023EF 3C                    7332 	.db #0x3c	; 60
      0023F0 5A                    7333 	.db #0x5a	; 90	'Z'
      0023F1 7F                    7334 	.db #0x7f	; 127
      0023F2 3E                    7335 	.db #0x3e	; 62
      0023F3 1C                    7336 	.db #0x1c	; 28
      0023F4 1C                    7337 	.db #0x1c	; 28
      0023F5 08                    7338 	.db #0x08	; 8
      0023F6 08                    7339 	.db #0x08	; 8
      0023F7 1C                    7340 	.db #0x1c	; 28
      0023F8 1C                    7341 	.db #0x1c	; 28
      0023F9 3E                    7342 	.db #0x3e	; 62
      0023FA 7F                    7343 	.db #0x7f	; 127
      0023FB 14                    7344 	.db #0x14	; 20
      0023FC 22                    7345 	.db #0x22	; 34
      0023FD 7F                    7346 	.db #0x7f	; 127
      0023FE 22                    7347 	.db #0x22	; 34
      0023FF 14                    7348 	.db #0x14	; 20
      002400 5F                    7349 	.db #0x5f	; 95
      002401 5F                    7350 	.db #0x5f	; 95
      002402 00                    7351 	.db #0x00	; 0
      002403 5F                    7352 	.db #0x5f	; 95
      002404 5F                    7353 	.db #0x5f	; 95
      002405 06                    7354 	.db #0x06	; 6
      002406 09                    7355 	.db #0x09	; 9
      002407 7F                    7356 	.db #0x7f	; 127
      002408 01                    7357 	.db #0x01	; 1
      002409 7F                    7358 	.db #0x7f	; 127
      00240A 00                    7359 	.db #0x00	; 0
      00240B 66                    7360 	.db #0x66	; 102	'f'
      00240C 89                    7361 	.db #0x89	; 137
      00240D 95                    7362 	.db #0x95	; 149
      00240E 6A                    7363 	.db #0x6a	; 106	'j'
      00240F 60                    7364 	.db #0x60	; 96
      002410 60                    7365 	.db #0x60	; 96
      002411 60                    7366 	.db #0x60	; 96
      002412 60                    7367 	.db #0x60	; 96
      002413 60                    7368 	.db #0x60	; 96
      002414 94                    7369 	.db #0x94	; 148
      002415 A2                    7370 	.db #0xa2	; 162
      002416 FF                    7371 	.db #0xff	; 255
      002417 A2                    7372 	.db #0xa2	; 162
      002418 94                    7373 	.db #0x94	; 148
      002419 08                    7374 	.db #0x08	; 8
      00241A 04                    7375 	.db #0x04	; 4
      00241B 7E                    7376 	.db #0x7e	; 126
      00241C 04                    7377 	.db #0x04	; 4
      00241D 08                    7378 	.db #0x08	; 8
      00241E 10                    7379 	.db #0x10	; 16
      00241F 20                    7380 	.db #0x20	; 32
      002420 7E                    7381 	.db #0x7e	; 126
      002421 20                    7382 	.db #0x20	; 32
      002422 10                    7383 	.db #0x10	; 16
      002423 08                    7384 	.db #0x08	; 8
      002424 08                    7385 	.db #0x08	; 8
      002425 2A                    7386 	.db #0x2a	; 42
      002426 1C                    7387 	.db #0x1c	; 28
      002427 08                    7388 	.db #0x08	; 8
      002428 08                    7389 	.db #0x08	; 8
      002429 1C                    7390 	.db #0x1c	; 28
      00242A 2A                    7391 	.db #0x2a	; 42
      00242B 08                    7392 	.db #0x08	; 8
      00242C 08                    7393 	.db #0x08	; 8
      00242D 1E                    7394 	.db #0x1e	; 30
      00242E 10                    7395 	.db #0x10	; 16
      00242F 10                    7396 	.db #0x10	; 16
      002430 10                    7397 	.db #0x10	; 16
      002431 10                    7398 	.db #0x10	; 16
      002432 0C                    7399 	.db #0x0c	; 12
      002433 1E                    7400 	.db #0x1e	; 30
      002434 0C                    7401 	.db #0x0c	; 12
      002435 1E                    7402 	.db #0x1e	; 30
      002436 0C                    7403 	.db #0x0c	; 12
      002437 30                    7404 	.db #0x30	; 48	'0'
      002438 38                    7405 	.db #0x38	; 56	'8'
      002439 3E                    7406 	.db #0x3e	; 62
      00243A 38                    7407 	.db #0x38	; 56	'8'
      00243B 30                    7408 	.db #0x30	; 48	'0'
      00243C 06                    7409 	.db #0x06	; 6
      00243D 0E                    7410 	.db #0x0e	; 14
      00243E 3E                    7411 	.db #0x3e	; 62
      00243F 0E                    7412 	.db #0x0e	; 14
      002440 06                    7413 	.db #0x06	; 6
      002441 00                    7414 	.db #0x00	; 0
      002442 00                    7415 	.db #0x00	; 0
      002443 00                    7416 	.db #0x00	; 0
      002444 00                    7417 	.db #0x00	; 0
      002445 00                    7418 	.db #0x00	; 0
      002446 00                    7419 	.db #0x00	; 0
      002447 00                    7420 	.db #0x00	; 0
      002448 5F                    7421 	.db #0x5f	; 95
      002449 00                    7422 	.db #0x00	; 0
      00244A 00                    7423 	.db #0x00	; 0
      00244B 00                    7424 	.db #0x00	; 0
      00244C 07                    7425 	.db #0x07	; 7
      00244D 00                    7426 	.db #0x00	; 0
      00244E 07                    7427 	.db #0x07	; 7
      00244F 00                    7428 	.db #0x00	; 0
      002450 14                    7429 	.db #0x14	; 20
      002451 7F                    7430 	.db #0x7f	; 127
      002452 14                    7431 	.db #0x14	; 20
      002453 7F                    7432 	.db #0x7f	; 127
      002454 14                    7433 	.db #0x14	; 20
      002455 24                    7434 	.db #0x24	; 36
      002456 2A                    7435 	.db #0x2a	; 42
      002457 7F                    7436 	.db #0x7f	; 127
      002458 2A                    7437 	.db #0x2a	; 42
      002459 12                    7438 	.db #0x12	; 18
      00245A 23                    7439 	.db #0x23	; 35
      00245B 13                    7440 	.db #0x13	; 19
      00245C 08                    7441 	.db #0x08	; 8
      00245D 64                    7442 	.db #0x64	; 100	'd'
      00245E 62                    7443 	.db #0x62	; 98	'b'
      00245F 36                    7444 	.db #0x36	; 54	'6'
      002460 49                    7445 	.db #0x49	; 73	'I'
      002461 56                    7446 	.db #0x56	; 86	'V'
      002462 20                    7447 	.db #0x20	; 32
      002463 50                    7448 	.db #0x50	; 80	'P'
      002464 00                    7449 	.db #0x00	; 0
      002465 08                    7450 	.db #0x08	; 8
      002466 07                    7451 	.db #0x07	; 7
      002467 03                    7452 	.db #0x03	; 3
      002468 00                    7453 	.db #0x00	; 0
      002469 00                    7454 	.db #0x00	; 0
      00246A 1C                    7455 	.db #0x1c	; 28
      00246B 22                    7456 	.db #0x22	; 34
      00246C 41                    7457 	.db #0x41	; 65	'A'
      00246D 00                    7458 	.db #0x00	; 0
      00246E 00                    7459 	.db #0x00	; 0
      00246F 41                    7460 	.db #0x41	; 65	'A'
      002470 22                    7461 	.db #0x22	; 34
      002471 1C                    7462 	.db #0x1c	; 28
      002472 00                    7463 	.db #0x00	; 0
      002473 2A                    7464 	.db #0x2a	; 42
      002474 1C                    7465 	.db #0x1c	; 28
      002475 7F                    7466 	.db #0x7f	; 127
      002476 1C                    7467 	.db #0x1c	; 28
      002477 2A                    7468 	.db #0x2a	; 42
      002478 08                    7469 	.db #0x08	; 8
      002479 08                    7470 	.db #0x08	; 8
      00247A 3E                    7471 	.db #0x3e	; 62
      00247B 08                    7472 	.db #0x08	; 8
      00247C 08                    7473 	.db #0x08	; 8
      00247D 00                    7474 	.db #0x00	; 0
      00247E 80                    7475 	.db #0x80	; 128
      00247F 70                    7476 	.db #0x70	; 112	'p'
      002480 30                    7477 	.db #0x30	; 48	'0'
      002481 00                    7478 	.db #0x00	; 0
      002482 08                    7479 	.db #0x08	; 8
      002483 08                    7480 	.db #0x08	; 8
      002484 08                    7481 	.db #0x08	; 8
      002485 08                    7482 	.db #0x08	; 8
      002486 08                    7483 	.db #0x08	; 8
      002487 00                    7484 	.db #0x00	; 0
      002488 00                    7485 	.db #0x00	; 0
      002489 60                    7486 	.db #0x60	; 96
      00248A 60                    7487 	.db #0x60	; 96
      00248B 00                    7488 	.db #0x00	; 0
      00248C 20                    7489 	.db #0x20	; 32
      00248D 10                    7490 	.db #0x10	; 16
      00248E 08                    7491 	.db #0x08	; 8
      00248F 04                    7492 	.db #0x04	; 4
      002490 02                    7493 	.db #0x02	; 2
      002491 3E                    7494 	.db #0x3e	; 62
      002492 51                    7495 	.db #0x51	; 81	'Q'
      002493 49                    7496 	.db #0x49	; 73	'I'
      002494 45                    7497 	.db #0x45	; 69	'E'
      002495 3E                    7498 	.db #0x3e	; 62
      002496 00                    7499 	.db #0x00	; 0
      002497 42                    7500 	.db #0x42	; 66	'B'
      002498 7F                    7501 	.db #0x7f	; 127
      002499 40                    7502 	.db #0x40	; 64
      00249A 00                    7503 	.db #0x00	; 0
      00249B 72                    7504 	.db #0x72	; 114	'r'
      00249C 49                    7505 	.db #0x49	; 73	'I'
      00249D 49                    7506 	.db #0x49	; 73	'I'
      00249E 49                    7507 	.db #0x49	; 73	'I'
      00249F 46                    7508 	.db #0x46	; 70	'F'
      0024A0 21                    7509 	.db #0x21	; 33
      0024A1 41                    7510 	.db #0x41	; 65	'A'
      0024A2 49                    7511 	.db #0x49	; 73	'I'
      0024A3 4D                    7512 	.db #0x4d	; 77	'M'
      0024A4 33                    7513 	.db #0x33	; 51	'3'
      0024A5 18                    7514 	.db #0x18	; 24
      0024A6 14                    7515 	.db #0x14	; 20
      0024A7 12                    7516 	.db #0x12	; 18
      0024A8 7F                    7517 	.db #0x7f	; 127
      0024A9 10                    7518 	.db #0x10	; 16
      0024AA 27                    7519 	.db #0x27	; 39
      0024AB 45                    7520 	.db #0x45	; 69	'E'
      0024AC 45                    7521 	.db #0x45	; 69	'E'
      0024AD 45                    7522 	.db #0x45	; 69	'E'
      0024AE 39                    7523 	.db #0x39	; 57	'9'
      0024AF 3C                    7524 	.db #0x3c	; 60
      0024B0 4A                    7525 	.db #0x4a	; 74	'J'
      0024B1 49                    7526 	.db #0x49	; 73	'I'
      0024B2 49                    7527 	.db #0x49	; 73	'I'
      0024B3 31                    7528 	.db #0x31	; 49	'1'
      0024B4 41                    7529 	.db #0x41	; 65	'A'
      0024B5 21                    7530 	.db #0x21	; 33
      0024B6 11                    7531 	.db #0x11	; 17
      0024B7 09                    7532 	.db #0x09	; 9
      0024B8 07                    7533 	.db #0x07	; 7
      0024B9 36                    7534 	.db #0x36	; 54	'6'
      0024BA 49                    7535 	.db #0x49	; 73	'I'
      0024BB 49                    7536 	.db #0x49	; 73	'I'
      0024BC 49                    7537 	.db #0x49	; 73	'I'
      0024BD 36                    7538 	.db #0x36	; 54	'6'
      0024BE 46                    7539 	.db #0x46	; 70	'F'
      0024BF 49                    7540 	.db #0x49	; 73	'I'
      0024C0 49                    7541 	.db #0x49	; 73	'I'
      0024C1 29                    7542 	.db #0x29	; 41
      0024C2 1E                    7543 	.db #0x1e	; 30
      0024C3 00                    7544 	.db #0x00	; 0
      0024C4 00                    7545 	.db #0x00	; 0
      0024C5 14                    7546 	.db #0x14	; 20
      0024C6 00                    7547 	.db #0x00	; 0
      0024C7 00                    7548 	.db #0x00	; 0
      0024C8 00                    7549 	.db #0x00	; 0
      0024C9 40                    7550 	.db #0x40	; 64
      0024CA 34                    7551 	.db #0x34	; 52	'4'
      0024CB 00                    7552 	.db #0x00	; 0
      0024CC 00                    7553 	.db #0x00	; 0
      0024CD 00                    7554 	.db #0x00	; 0
      0024CE 08                    7555 	.db #0x08	; 8
      0024CF 14                    7556 	.db #0x14	; 20
      0024D0 22                    7557 	.db #0x22	; 34
      0024D1 41                    7558 	.db #0x41	; 65	'A'
      0024D2 14                    7559 	.db #0x14	; 20
      0024D3 14                    7560 	.db #0x14	; 20
      0024D4 14                    7561 	.db #0x14	; 20
      0024D5 14                    7562 	.db #0x14	; 20
      0024D6 14                    7563 	.db #0x14	; 20
      0024D7 00                    7564 	.db #0x00	; 0
      0024D8 41                    7565 	.db #0x41	; 65	'A'
      0024D9 22                    7566 	.db #0x22	; 34
      0024DA 14                    7567 	.db #0x14	; 20
      0024DB 08                    7568 	.db #0x08	; 8
      0024DC 02                    7569 	.db #0x02	; 2
      0024DD 01                    7570 	.db #0x01	; 1
      0024DE 59                    7571 	.db #0x59	; 89	'Y'
      0024DF 09                    7572 	.db #0x09	; 9
      0024E0 06                    7573 	.db #0x06	; 6
      0024E1 3E                    7574 	.db #0x3e	; 62
      0024E2 41                    7575 	.db #0x41	; 65	'A'
      0024E3 5D                    7576 	.db #0x5d	; 93
      0024E4 59                    7577 	.db #0x59	; 89	'Y'
      0024E5 4E                    7578 	.db #0x4e	; 78	'N'
      0024E6 7C                    7579 	.db #0x7c	; 124
      0024E7 12                    7580 	.db #0x12	; 18
      0024E8 11                    7581 	.db #0x11	; 17
      0024E9 12                    7582 	.db #0x12	; 18
      0024EA 7C                    7583 	.db #0x7c	; 124
      0024EB 7F                    7584 	.db #0x7f	; 127
      0024EC 49                    7585 	.db #0x49	; 73	'I'
      0024ED 49                    7586 	.db #0x49	; 73	'I'
      0024EE 49                    7587 	.db #0x49	; 73	'I'
      0024EF 36                    7588 	.db #0x36	; 54	'6'
      0024F0 3E                    7589 	.db #0x3e	; 62
      0024F1 41                    7590 	.db #0x41	; 65	'A'
      0024F2 41                    7591 	.db #0x41	; 65	'A'
      0024F3 41                    7592 	.db #0x41	; 65	'A'
      0024F4 22                    7593 	.db #0x22	; 34
      0024F5 7F                    7594 	.db #0x7f	; 127
      0024F6 41                    7595 	.db #0x41	; 65	'A'
      0024F7 41                    7596 	.db #0x41	; 65	'A'
      0024F8 41                    7597 	.db #0x41	; 65	'A'
      0024F9 3E                    7598 	.db #0x3e	; 62
      0024FA 7F                    7599 	.db #0x7f	; 127
      0024FB 49                    7600 	.db #0x49	; 73	'I'
      0024FC 49                    7601 	.db #0x49	; 73	'I'
      0024FD 49                    7602 	.db #0x49	; 73	'I'
      0024FE 41                    7603 	.db #0x41	; 65	'A'
      0024FF 7F                    7604 	.db #0x7f	; 127
      002500 09                    7605 	.db #0x09	; 9
      002501 09                    7606 	.db #0x09	; 9
      002502 09                    7607 	.db #0x09	; 9
      002503 01                    7608 	.db #0x01	; 1
      002504 3E                    7609 	.db #0x3e	; 62
      002505 41                    7610 	.db #0x41	; 65	'A'
      002506 41                    7611 	.db #0x41	; 65	'A'
      002507 51                    7612 	.db #0x51	; 81	'Q'
      002508 73                    7613 	.db #0x73	; 115	's'
      002509 7F                    7614 	.db #0x7f	; 127
      00250A 08                    7615 	.db #0x08	; 8
      00250B 08                    7616 	.db #0x08	; 8
      00250C 08                    7617 	.db #0x08	; 8
      00250D 7F                    7618 	.db #0x7f	; 127
      00250E 00                    7619 	.db #0x00	; 0
      00250F 41                    7620 	.db #0x41	; 65	'A'
      002510 7F                    7621 	.db #0x7f	; 127
      002511 41                    7622 	.db #0x41	; 65	'A'
      002512 00                    7623 	.db #0x00	; 0
      002513 20                    7624 	.db #0x20	; 32
      002514 40                    7625 	.db #0x40	; 64
      002515 41                    7626 	.db #0x41	; 65	'A'
      002516 3F                    7627 	.db #0x3f	; 63
      002517 01                    7628 	.db #0x01	; 1
      002518 7F                    7629 	.db #0x7f	; 127
      002519 08                    7630 	.db #0x08	; 8
      00251A 14                    7631 	.db #0x14	; 20
      00251B 22                    7632 	.db #0x22	; 34
      00251C 41                    7633 	.db #0x41	; 65	'A'
      00251D 7F                    7634 	.db #0x7f	; 127
      00251E 40                    7635 	.db #0x40	; 64
      00251F 40                    7636 	.db #0x40	; 64
      002520 40                    7637 	.db #0x40	; 64
      002521 40                    7638 	.db #0x40	; 64
      002522 7F                    7639 	.db #0x7f	; 127
      002523 02                    7640 	.db #0x02	; 2
      002524 1C                    7641 	.db #0x1c	; 28
      002525 02                    7642 	.db #0x02	; 2
      002526 7F                    7643 	.db #0x7f	; 127
      002527 7F                    7644 	.db #0x7f	; 127
      002528 04                    7645 	.db #0x04	; 4
      002529 08                    7646 	.db #0x08	; 8
      00252A 10                    7647 	.db #0x10	; 16
      00252B 7F                    7648 	.db #0x7f	; 127
      00252C 3E                    7649 	.db #0x3e	; 62
      00252D 41                    7650 	.db #0x41	; 65	'A'
      00252E 41                    7651 	.db #0x41	; 65	'A'
      00252F 41                    7652 	.db #0x41	; 65	'A'
      002530 3E                    7653 	.db #0x3e	; 62
      002531 7F                    7654 	.db #0x7f	; 127
      002532 09                    7655 	.db #0x09	; 9
      002533 09                    7656 	.db #0x09	; 9
      002534 09                    7657 	.db #0x09	; 9
      002535 06                    7658 	.db #0x06	; 6
      002536 3E                    7659 	.db #0x3e	; 62
      002537 41                    7660 	.db #0x41	; 65	'A'
      002538 51                    7661 	.db #0x51	; 81	'Q'
      002539 21                    7662 	.db #0x21	; 33
      00253A 5E                    7663 	.db #0x5e	; 94
      00253B 7F                    7664 	.db #0x7f	; 127
      00253C 09                    7665 	.db #0x09	; 9
      00253D 19                    7666 	.db #0x19	; 25
      00253E 29                    7667 	.db #0x29	; 41
      00253F 46                    7668 	.db #0x46	; 70	'F'
      002540 26                    7669 	.db #0x26	; 38
      002541 49                    7670 	.db #0x49	; 73	'I'
      002542 49                    7671 	.db #0x49	; 73	'I'
      002543 49                    7672 	.db #0x49	; 73	'I'
      002544 32                    7673 	.db #0x32	; 50	'2'
      002545 03                    7674 	.db #0x03	; 3
      002546 01                    7675 	.db #0x01	; 1
      002547 7F                    7676 	.db #0x7f	; 127
      002548 01                    7677 	.db #0x01	; 1
      002549 03                    7678 	.db #0x03	; 3
      00254A 3F                    7679 	.db #0x3f	; 63
      00254B 40                    7680 	.db #0x40	; 64
      00254C 40                    7681 	.db #0x40	; 64
      00254D 40                    7682 	.db #0x40	; 64
      00254E 3F                    7683 	.db #0x3f	; 63
      00254F 1F                    7684 	.db #0x1f	; 31
      002550 20                    7685 	.db #0x20	; 32
      002551 40                    7686 	.db #0x40	; 64
      002552 20                    7687 	.db #0x20	; 32
      002553 1F                    7688 	.db #0x1f	; 31
      002554 3F                    7689 	.db #0x3f	; 63
      002555 40                    7690 	.db #0x40	; 64
      002556 38                    7691 	.db #0x38	; 56	'8'
      002557 40                    7692 	.db #0x40	; 64
      002558 3F                    7693 	.db #0x3f	; 63
      002559 63                    7694 	.db #0x63	; 99	'c'
      00255A 14                    7695 	.db #0x14	; 20
      00255B 08                    7696 	.db #0x08	; 8
      00255C 14                    7697 	.db #0x14	; 20
      00255D 63                    7698 	.db #0x63	; 99	'c'
      00255E 03                    7699 	.db #0x03	; 3
      00255F 04                    7700 	.db #0x04	; 4
      002560 78                    7701 	.db #0x78	; 120	'x'
      002561 04                    7702 	.db #0x04	; 4
      002562 03                    7703 	.db #0x03	; 3
      002563 61                    7704 	.db #0x61	; 97	'a'
      002564 59                    7705 	.db #0x59	; 89	'Y'
      002565 49                    7706 	.db #0x49	; 73	'I'
      002566 4D                    7707 	.db #0x4d	; 77	'M'
      002567 43                    7708 	.db #0x43	; 67	'C'
      002568 00                    7709 	.db #0x00	; 0
      002569 7F                    7710 	.db #0x7f	; 127
      00256A 41                    7711 	.db #0x41	; 65	'A'
      00256B 41                    7712 	.db #0x41	; 65	'A'
      00256C 41                    7713 	.db #0x41	; 65	'A'
      00256D 02                    7714 	.db #0x02	; 2
      00256E 04                    7715 	.db #0x04	; 4
      00256F 08                    7716 	.db #0x08	; 8
      002570 10                    7717 	.db #0x10	; 16
      002571 20                    7718 	.db #0x20	; 32
      002572 00                    7719 	.db #0x00	; 0
      002573 41                    7720 	.db #0x41	; 65	'A'
      002574 41                    7721 	.db #0x41	; 65	'A'
      002575 41                    7722 	.db #0x41	; 65	'A'
      002576 7F                    7723 	.db #0x7f	; 127
      002577 04                    7724 	.db #0x04	; 4
      002578 02                    7725 	.db #0x02	; 2
      002579 01                    7726 	.db #0x01	; 1
      00257A 02                    7727 	.db #0x02	; 2
      00257B 04                    7728 	.db #0x04	; 4
      00257C 40                    7729 	.db #0x40	; 64
      00257D 40                    7730 	.db #0x40	; 64
      00257E 40                    7731 	.db #0x40	; 64
      00257F 40                    7732 	.db #0x40	; 64
      002580 40                    7733 	.db #0x40	; 64
      002581 00                    7734 	.db #0x00	; 0
      002582 03                    7735 	.db #0x03	; 3
      002583 07                    7736 	.db #0x07	; 7
      002584 08                    7737 	.db #0x08	; 8
      002585 00                    7738 	.db #0x00	; 0
      002586 20                    7739 	.db #0x20	; 32
      002587 54                    7740 	.db #0x54	; 84	'T'
      002588 54                    7741 	.db #0x54	; 84	'T'
      002589 78                    7742 	.db #0x78	; 120	'x'
      00258A 40                    7743 	.db #0x40	; 64
      00258B 7F                    7744 	.db #0x7f	; 127
      00258C 28                    7745 	.db #0x28	; 40
      00258D 44                    7746 	.db #0x44	; 68	'D'
      00258E 44                    7747 	.db #0x44	; 68	'D'
      00258F 38                    7748 	.db #0x38	; 56	'8'
      002590 38                    7749 	.db #0x38	; 56	'8'
      002591 44                    7750 	.db #0x44	; 68	'D'
      002592 44                    7751 	.db #0x44	; 68	'D'
      002593 44                    7752 	.db #0x44	; 68	'D'
      002594 28                    7753 	.db #0x28	; 40
      002595 38                    7754 	.db #0x38	; 56	'8'
      002596 44                    7755 	.db #0x44	; 68	'D'
      002597 44                    7756 	.db #0x44	; 68	'D'
      002598 28                    7757 	.db #0x28	; 40
      002599 7F                    7758 	.db #0x7f	; 127
      00259A 38                    7759 	.db #0x38	; 56	'8'
      00259B 54                    7760 	.db #0x54	; 84	'T'
      00259C 54                    7761 	.db #0x54	; 84	'T'
      00259D 54                    7762 	.db #0x54	; 84	'T'
      00259E 18                    7763 	.db #0x18	; 24
      00259F 00                    7764 	.db #0x00	; 0
      0025A0 08                    7765 	.db #0x08	; 8
      0025A1 7E                    7766 	.db #0x7e	; 126
      0025A2 09                    7767 	.db #0x09	; 9
      0025A3 02                    7768 	.db #0x02	; 2
      0025A4 18                    7769 	.db #0x18	; 24
      0025A5 A4                    7770 	.db #0xa4	; 164
      0025A6 A4                    7771 	.db #0xa4	; 164
      0025A7 9C                    7772 	.db #0x9c	; 156
      0025A8 78                    7773 	.db #0x78	; 120	'x'
      0025A9 7F                    7774 	.db #0x7f	; 127
      0025AA 08                    7775 	.db #0x08	; 8
      0025AB 04                    7776 	.db #0x04	; 4
      0025AC 04                    7777 	.db #0x04	; 4
      0025AD 78                    7778 	.db #0x78	; 120	'x'
      0025AE 00                    7779 	.db #0x00	; 0
      0025AF 44                    7780 	.db #0x44	; 68	'D'
      0025B0 7D                    7781 	.db #0x7d	; 125
      0025B1 40                    7782 	.db #0x40	; 64
      0025B2 00                    7783 	.db #0x00	; 0
      0025B3 20                    7784 	.db #0x20	; 32
      0025B4 40                    7785 	.db #0x40	; 64
      0025B5 40                    7786 	.db #0x40	; 64
      0025B6 3D                    7787 	.db #0x3d	; 61
      0025B7 00                    7788 	.db #0x00	; 0
      0025B8 7F                    7789 	.db #0x7f	; 127
      0025B9 10                    7790 	.db #0x10	; 16
      0025BA 28                    7791 	.db #0x28	; 40
      0025BB 44                    7792 	.db #0x44	; 68	'D'
      0025BC 00                    7793 	.db #0x00	; 0
      0025BD 00                    7794 	.db #0x00	; 0
      0025BE 41                    7795 	.db #0x41	; 65	'A'
      0025BF 7F                    7796 	.db #0x7f	; 127
      0025C0 40                    7797 	.db #0x40	; 64
      0025C1 00                    7798 	.db #0x00	; 0
      0025C2 7C                    7799 	.db #0x7c	; 124
      0025C3 04                    7800 	.db #0x04	; 4
      0025C4 78                    7801 	.db #0x78	; 120	'x'
      0025C5 04                    7802 	.db #0x04	; 4
      0025C6 78                    7803 	.db #0x78	; 120	'x'
      0025C7 7C                    7804 	.db #0x7c	; 124
      0025C8 08                    7805 	.db #0x08	; 8
      0025C9 04                    7806 	.db #0x04	; 4
      0025CA 04                    7807 	.db #0x04	; 4
      0025CB 78                    7808 	.db #0x78	; 120	'x'
      0025CC 38                    7809 	.db #0x38	; 56	'8'
      0025CD 44                    7810 	.db #0x44	; 68	'D'
      0025CE 44                    7811 	.db #0x44	; 68	'D'
      0025CF 44                    7812 	.db #0x44	; 68	'D'
      0025D0 38                    7813 	.db #0x38	; 56	'8'
      0025D1 FC                    7814 	.db #0xfc	; 252
      0025D2 18                    7815 	.db #0x18	; 24
      0025D3 24                    7816 	.db #0x24	; 36
      0025D4 24                    7817 	.db #0x24	; 36
      0025D5 18                    7818 	.db #0x18	; 24
      0025D6 18                    7819 	.db #0x18	; 24
      0025D7 24                    7820 	.db #0x24	; 36
      0025D8 24                    7821 	.db #0x24	; 36
      0025D9 18                    7822 	.db #0x18	; 24
      0025DA FC                    7823 	.db #0xfc	; 252
      0025DB 7C                    7824 	.db #0x7c	; 124
      0025DC 08                    7825 	.db #0x08	; 8
      0025DD 04                    7826 	.db #0x04	; 4
      0025DE 04                    7827 	.db #0x04	; 4
      0025DF 08                    7828 	.db #0x08	; 8
      0025E0 48                    7829 	.db #0x48	; 72	'H'
      0025E1 54                    7830 	.db #0x54	; 84	'T'
      0025E2 54                    7831 	.db #0x54	; 84	'T'
      0025E3 54                    7832 	.db #0x54	; 84	'T'
      0025E4 24                    7833 	.db #0x24	; 36
      0025E5 04                    7834 	.db #0x04	; 4
      0025E6 04                    7835 	.db #0x04	; 4
      0025E7 3F                    7836 	.db #0x3f	; 63
      0025E8 44                    7837 	.db #0x44	; 68	'D'
      0025E9 24                    7838 	.db #0x24	; 36
      0025EA 3C                    7839 	.db #0x3c	; 60
      0025EB 40                    7840 	.db #0x40	; 64
      0025EC 40                    7841 	.db #0x40	; 64
      0025ED 20                    7842 	.db #0x20	; 32
      0025EE 7C                    7843 	.db #0x7c	; 124
      0025EF 1C                    7844 	.db #0x1c	; 28
      0025F0 20                    7845 	.db #0x20	; 32
      0025F1 40                    7846 	.db #0x40	; 64
      0025F2 20                    7847 	.db #0x20	; 32
      0025F3 1C                    7848 	.db #0x1c	; 28
      0025F4 3C                    7849 	.db #0x3c	; 60
      0025F5 40                    7850 	.db #0x40	; 64
      0025F6 30                    7851 	.db #0x30	; 48	'0'
      0025F7 40                    7852 	.db #0x40	; 64
      0025F8 3C                    7853 	.db #0x3c	; 60
      0025F9 44                    7854 	.db #0x44	; 68	'D'
      0025FA 28                    7855 	.db #0x28	; 40
      0025FB 10                    7856 	.db #0x10	; 16
      0025FC 28                    7857 	.db #0x28	; 40
      0025FD 44                    7858 	.db #0x44	; 68	'D'
      0025FE 4C                    7859 	.db #0x4c	; 76	'L'
      0025FF 90                    7860 	.db #0x90	; 144
      002600 90                    7861 	.db #0x90	; 144
      002601 90                    7862 	.db #0x90	; 144
      002602 7C                    7863 	.db #0x7c	; 124
      002603 44                    7864 	.db #0x44	; 68	'D'
      002604 64                    7865 	.db #0x64	; 100	'd'
      002605 54                    7866 	.db #0x54	; 84	'T'
      002606 4C                    7867 	.db #0x4c	; 76	'L'
      002607 44                    7868 	.db #0x44	; 68	'D'
      002608 00                    7869 	.db #0x00	; 0
      002609 08                    7870 	.db #0x08	; 8
      00260A 36                    7871 	.db #0x36	; 54	'6'
      00260B 41                    7872 	.db #0x41	; 65	'A'
      00260C 00                    7873 	.db #0x00	; 0
      00260D 00                    7874 	.db #0x00	; 0
      00260E 00                    7875 	.db #0x00	; 0
      00260F 77                    7876 	.db #0x77	; 119	'w'
      002610 00                    7877 	.db #0x00	; 0
      002611 00                    7878 	.db #0x00	; 0
      002612 00                    7879 	.db #0x00	; 0
      002613 41                    7880 	.db #0x41	; 65	'A'
      002614 36                    7881 	.db #0x36	; 54	'6'
      002615 08                    7882 	.db #0x08	; 8
      002616 00                    7883 	.db #0x00	; 0
      002617 02                    7884 	.db #0x02	; 2
      002618 01                    7885 	.db #0x01	; 1
      002619 02                    7886 	.db #0x02	; 2
      00261A 04                    7887 	.db #0x04	; 4
      00261B 02                    7888 	.db #0x02	; 2
      00261C 3C                    7889 	.db #0x3c	; 60
      00261D 26                    7890 	.db #0x26	; 38
      00261E 23                    7891 	.db #0x23	; 35
      00261F 26                    7892 	.db #0x26	; 38
      002620 3C                    7893 	.db #0x3c	; 60
      002621 1E                    7894 	.db #0x1e	; 30
      002622 A1                    7895 	.db #0xa1	; 161
      002623 A1                    7896 	.db #0xa1	; 161
      002624 61                    7897 	.db #0x61	; 97	'a'
      002625 12                    7898 	.db #0x12	; 18
      002626 3A                    7899 	.db #0x3a	; 58
      002627 40                    7900 	.db #0x40	; 64
      002628 40                    7901 	.db #0x40	; 64
      002629 20                    7902 	.db #0x20	; 32
      00262A 7A                    7903 	.db #0x7a	; 122	'z'
      00262B 38                    7904 	.db #0x38	; 56	'8'
      00262C 54                    7905 	.db #0x54	; 84	'T'
      00262D 54                    7906 	.db #0x54	; 84	'T'
      00262E 55                    7907 	.db #0x55	; 85	'U'
      00262F 59                    7908 	.db #0x59	; 89	'Y'
      002630 21                    7909 	.db #0x21	; 33
      002631 55                    7910 	.db #0x55	; 85	'U'
      002632 55                    7911 	.db #0x55	; 85	'U'
      002633 79                    7912 	.db #0x79	; 121	'y'
      002634 41                    7913 	.db #0x41	; 65	'A'
      002635 22                    7914 	.db #0x22	; 34
      002636 54                    7915 	.db #0x54	; 84	'T'
      002637 54                    7916 	.db #0x54	; 84	'T'
      002638 78                    7917 	.db #0x78	; 120	'x'
      002639 42                    7918 	.db #0x42	; 66	'B'
      00263A 21                    7919 	.db #0x21	; 33
      00263B 55                    7920 	.db #0x55	; 85	'U'
      00263C 54                    7921 	.db #0x54	; 84	'T'
      00263D 78                    7922 	.db #0x78	; 120	'x'
      00263E 40                    7923 	.db #0x40	; 64
      00263F 20                    7924 	.db #0x20	; 32
      002640 54                    7925 	.db #0x54	; 84	'T'
      002641 55                    7926 	.db #0x55	; 85	'U'
      002642 79                    7927 	.db #0x79	; 121	'y'
      002643 40                    7928 	.db #0x40	; 64
      002644 0C                    7929 	.db #0x0c	; 12
      002645 1E                    7930 	.db #0x1e	; 30
      002646 52                    7931 	.db #0x52	; 82	'R'
      002647 72                    7932 	.db #0x72	; 114	'r'
      002648 12                    7933 	.db #0x12	; 18
      002649 39                    7934 	.db #0x39	; 57	'9'
      00264A 55                    7935 	.db #0x55	; 85	'U'
      00264B 55                    7936 	.db #0x55	; 85	'U'
      00264C 55                    7937 	.db #0x55	; 85	'U'
      00264D 59                    7938 	.db #0x59	; 89	'Y'
      00264E 39                    7939 	.db #0x39	; 57	'9'
      00264F 54                    7940 	.db #0x54	; 84	'T'
      002650 54                    7941 	.db #0x54	; 84	'T'
      002651 54                    7942 	.db #0x54	; 84	'T'
      002652 59                    7943 	.db #0x59	; 89	'Y'
      002653 39                    7944 	.db #0x39	; 57	'9'
      002654 55                    7945 	.db #0x55	; 85	'U'
      002655 54                    7946 	.db #0x54	; 84	'T'
      002656 54                    7947 	.db #0x54	; 84	'T'
      002657 58                    7948 	.db #0x58	; 88	'X'
      002658 00                    7949 	.db #0x00	; 0
      002659 00                    7950 	.db #0x00	; 0
      00265A 45                    7951 	.db #0x45	; 69	'E'
      00265B 7C                    7952 	.db #0x7c	; 124
      00265C 41                    7953 	.db #0x41	; 65	'A'
      00265D 00                    7954 	.db #0x00	; 0
      00265E 02                    7955 	.db #0x02	; 2
      00265F 45                    7956 	.db #0x45	; 69	'E'
      002660 7D                    7957 	.db #0x7d	; 125
      002661 42                    7958 	.db #0x42	; 66	'B'
      002662 00                    7959 	.db #0x00	; 0
      002663 01                    7960 	.db #0x01	; 1
      002664 45                    7961 	.db #0x45	; 69	'E'
      002665 7C                    7962 	.db #0x7c	; 124
      002666 40                    7963 	.db #0x40	; 64
      002667 7D                    7964 	.db #0x7d	; 125
      002668 12                    7965 	.db #0x12	; 18
      002669 11                    7966 	.db #0x11	; 17
      00266A 12                    7967 	.db #0x12	; 18
      00266B 7D                    7968 	.db #0x7d	; 125
      00266C F0                    7969 	.db #0xf0	; 240
      00266D 28                    7970 	.db #0x28	; 40
      00266E 25                    7971 	.db #0x25	; 37
      00266F 28                    7972 	.db #0x28	; 40
      002670 F0                    7973 	.db #0xf0	; 240
      002671 7C                    7974 	.db #0x7c	; 124
      002672 54                    7975 	.db #0x54	; 84	'T'
      002673 55                    7976 	.db #0x55	; 85	'U'
      002674 45                    7977 	.db #0x45	; 69	'E'
      002675 00                    7978 	.db #0x00	; 0
      002676 20                    7979 	.db #0x20	; 32
      002677 54                    7980 	.db #0x54	; 84	'T'
      002678 54                    7981 	.db #0x54	; 84	'T'
      002679 7C                    7982 	.db #0x7c	; 124
      00267A 54                    7983 	.db #0x54	; 84	'T'
      00267B 7C                    7984 	.db #0x7c	; 124
      00267C 0A                    7985 	.db #0x0a	; 10
      00267D 09                    7986 	.db #0x09	; 9
      00267E 7F                    7987 	.db #0x7f	; 127
      00267F 49                    7988 	.db #0x49	; 73	'I'
      002680 32                    7989 	.db #0x32	; 50	'2'
      002681 49                    7990 	.db #0x49	; 73	'I'
      002682 49                    7991 	.db #0x49	; 73	'I'
      002683 49                    7992 	.db #0x49	; 73	'I'
      002684 32                    7993 	.db #0x32	; 50	'2'
      002685 3A                    7994 	.db #0x3a	; 58
      002686 44                    7995 	.db #0x44	; 68	'D'
      002687 44                    7996 	.db #0x44	; 68	'D'
      002688 44                    7997 	.db #0x44	; 68	'D'
      002689 3A                    7998 	.db #0x3a	; 58
      00268A 32                    7999 	.db #0x32	; 50	'2'
      00268B 4A                    8000 	.db #0x4a	; 74	'J'
      00268C 48                    8001 	.db #0x48	; 72	'H'
      00268D 48                    8002 	.db #0x48	; 72	'H'
      00268E 30                    8003 	.db #0x30	; 48	'0'
      00268F 3A                    8004 	.db #0x3a	; 58
      002690 41                    8005 	.db #0x41	; 65	'A'
      002691 41                    8006 	.db #0x41	; 65	'A'
      002692 21                    8007 	.db #0x21	; 33
      002693 7A                    8008 	.db #0x7a	; 122	'z'
      002694 3A                    8009 	.db #0x3a	; 58
      002695 42                    8010 	.db #0x42	; 66	'B'
      002696 40                    8011 	.db #0x40	; 64
      002697 20                    8012 	.db #0x20	; 32
      002698 78                    8013 	.db #0x78	; 120	'x'
      002699 00                    8014 	.db #0x00	; 0
      00269A 9D                    8015 	.db #0x9d	; 157
      00269B A0                    8016 	.db #0xa0	; 160
      00269C A0                    8017 	.db #0xa0	; 160
      00269D 7D                    8018 	.db #0x7d	; 125
      00269E 3D                    8019 	.db #0x3d	; 61
      00269F 42                    8020 	.db #0x42	; 66	'B'
      0026A0 42                    8021 	.db #0x42	; 66	'B'
      0026A1 42                    8022 	.db #0x42	; 66	'B'
      0026A2 3D                    8023 	.db #0x3d	; 61
      0026A3 3D                    8024 	.db #0x3d	; 61
      0026A4 40                    8025 	.db #0x40	; 64
      0026A5 40                    8026 	.db #0x40	; 64
      0026A6 40                    8027 	.db #0x40	; 64
      0026A7 3D                    8028 	.db #0x3d	; 61
      0026A8 3C                    8029 	.db #0x3c	; 60
      0026A9 24                    8030 	.db #0x24	; 36
      0026AA FF                    8031 	.db #0xff	; 255
      0026AB 24                    8032 	.db #0x24	; 36
      0026AC 24                    8033 	.db #0x24	; 36
      0026AD 48                    8034 	.db #0x48	; 72	'H'
      0026AE 7E                    8035 	.db #0x7e	; 126
      0026AF 49                    8036 	.db #0x49	; 73	'I'
      0026B0 43                    8037 	.db #0x43	; 67	'C'
      0026B1 66                    8038 	.db #0x66	; 102	'f'
      0026B2 2B                    8039 	.db #0x2b	; 43
      0026B3 2F                    8040 	.db #0x2f	; 47
      0026B4 FC                    8041 	.db #0xfc	; 252
      0026B5 2F                    8042 	.db #0x2f	; 47
      0026B6 2B                    8043 	.db #0x2b	; 43
      0026B7 FF                    8044 	.db #0xff	; 255
      0026B8 09                    8045 	.db #0x09	; 9
      0026B9 29                    8046 	.db #0x29	; 41
      0026BA F6                    8047 	.db #0xf6	; 246
      0026BB 20                    8048 	.db #0x20	; 32
      0026BC C0                    8049 	.db #0xc0	; 192
      0026BD 88                    8050 	.db #0x88	; 136
      0026BE 7E                    8051 	.db #0x7e	; 126
      0026BF 09                    8052 	.db #0x09	; 9
      0026C0 03                    8053 	.db #0x03	; 3
      0026C1 20                    8054 	.db #0x20	; 32
      0026C2 54                    8055 	.db #0x54	; 84	'T'
      0026C3 54                    8056 	.db #0x54	; 84	'T'
      0026C4 79                    8057 	.db #0x79	; 121	'y'
      0026C5 41                    8058 	.db #0x41	; 65	'A'
      0026C6 00                    8059 	.db #0x00	; 0
      0026C7 00                    8060 	.db #0x00	; 0
      0026C8 44                    8061 	.db #0x44	; 68	'D'
      0026C9 7D                    8062 	.db #0x7d	; 125
      0026CA 41                    8063 	.db #0x41	; 65	'A'
      0026CB 30                    8064 	.db #0x30	; 48	'0'
      0026CC 48                    8065 	.db #0x48	; 72	'H'
      0026CD 48                    8066 	.db #0x48	; 72	'H'
      0026CE 4A                    8067 	.db #0x4a	; 74	'J'
      0026CF 32                    8068 	.db #0x32	; 50	'2'
      0026D0 38                    8069 	.db #0x38	; 56	'8'
      0026D1 40                    8070 	.db #0x40	; 64
      0026D2 40                    8071 	.db #0x40	; 64
      0026D3 22                    8072 	.db #0x22	; 34
      0026D4 7A                    8073 	.db #0x7a	; 122	'z'
      0026D5 00                    8074 	.db #0x00	; 0
      0026D6 7A                    8075 	.db #0x7a	; 122	'z'
      0026D7 0A                    8076 	.db #0x0a	; 10
      0026D8 0A                    8077 	.db #0x0a	; 10
      0026D9 72                    8078 	.db #0x72	; 114	'r'
      0026DA 7D                    8079 	.db #0x7d	; 125
      0026DB 0D                    8080 	.db #0x0d	; 13
      0026DC 19                    8081 	.db #0x19	; 25
      0026DD 31                    8082 	.db #0x31	; 49	'1'
      0026DE 7D                    8083 	.db #0x7d	; 125
      0026DF 26                    8084 	.db #0x26	; 38
      0026E0 29                    8085 	.db #0x29	; 41
      0026E1 29                    8086 	.db #0x29	; 41
      0026E2 2F                    8087 	.db #0x2f	; 47
      0026E3 28                    8088 	.db #0x28	; 40
      0026E4 26                    8089 	.db #0x26	; 38
      0026E5 29                    8090 	.db #0x29	; 41
      0026E6 29                    8091 	.db #0x29	; 41
      0026E7 29                    8092 	.db #0x29	; 41
      0026E8 26                    8093 	.db #0x26	; 38
      0026E9 30                    8094 	.db #0x30	; 48	'0'
      0026EA 48                    8095 	.db #0x48	; 72	'H'
      0026EB 4D                    8096 	.db #0x4d	; 77	'M'
      0026EC 40                    8097 	.db #0x40	; 64
      0026ED 20                    8098 	.db #0x20	; 32
      0026EE 38                    8099 	.db #0x38	; 56	'8'
      0026EF 08                    8100 	.db #0x08	; 8
      0026F0 08                    8101 	.db #0x08	; 8
      0026F1 08                    8102 	.db #0x08	; 8
      0026F2 08                    8103 	.db #0x08	; 8
      0026F3 08                    8104 	.db #0x08	; 8
      0026F4 08                    8105 	.db #0x08	; 8
      0026F5 08                    8106 	.db #0x08	; 8
      0026F6 08                    8107 	.db #0x08	; 8
      0026F7 38                    8108 	.db #0x38	; 56	'8'
      0026F8 2F                    8109 	.db #0x2f	; 47
      0026F9 10                    8110 	.db #0x10	; 16
      0026FA C8                    8111 	.db #0xc8	; 200
      0026FB AC                    8112 	.db #0xac	; 172
      0026FC BA                    8113 	.db #0xba	; 186
      0026FD 2F                    8114 	.db #0x2f	; 47
      0026FE 10                    8115 	.db #0x10	; 16
      0026FF 28                    8116 	.db #0x28	; 40
      002700 34                    8117 	.db #0x34	; 52	'4'
      002701 FA                    8118 	.db #0xfa	; 250
      002702 00                    8119 	.db #0x00	; 0
      002703 00                    8120 	.db #0x00	; 0
      002704 7B                    8121 	.db #0x7b	; 123
      002705 00                    8122 	.db #0x00	; 0
      002706 00                    8123 	.db #0x00	; 0
      002707 08                    8124 	.db #0x08	; 8
      002708 14                    8125 	.db #0x14	; 20
      002709 2A                    8126 	.db #0x2a	; 42
      00270A 14                    8127 	.db #0x14	; 20
      00270B 22                    8128 	.db #0x22	; 34
      00270C 22                    8129 	.db #0x22	; 34
      00270D 14                    8130 	.db #0x14	; 20
      00270E 2A                    8131 	.db #0x2a	; 42
      00270F 14                    8132 	.db #0x14	; 20
      002710 08                    8133 	.db #0x08	; 8
      002711 AA                    8134 	.db #0xaa	; 170
      002712 00                    8135 	.db #0x00	; 0
      002713 55                    8136 	.db #0x55	; 85	'U'
      002714 00                    8137 	.db #0x00	; 0
      002715 AA                    8138 	.db #0xaa	; 170
      002716 AA                    8139 	.db #0xaa	; 170
      002717 55                    8140 	.db #0x55	; 85	'U'
      002718 AA                    8141 	.db #0xaa	; 170
      002719 55                    8142 	.db #0x55	; 85	'U'
      00271A AA                    8143 	.db #0xaa	; 170
      00271B 00                    8144 	.db #0x00	; 0
      00271C 00                    8145 	.db #0x00	; 0
      00271D 00                    8146 	.db #0x00	; 0
      00271E FF                    8147 	.db #0xff	; 255
      00271F 00                    8148 	.db #0x00	; 0
      002720 10                    8149 	.db #0x10	; 16
      002721 10                    8150 	.db #0x10	; 16
      002722 10                    8151 	.db #0x10	; 16
      002723 FF                    8152 	.db #0xff	; 255
      002724 00                    8153 	.db #0x00	; 0
      002725 14                    8154 	.db #0x14	; 20
      002726 14                    8155 	.db #0x14	; 20
      002727 14                    8156 	.db #0x14	; 20
      002728 FF                    8157 	.db #0xff	; 255
      002729 00                    8158 	.db #0x00	; 0
      00272A 10                    8159 	.db #0x10	; 16
      00272B 10                    8160 	.db #0x10	; 16
      00272C FF                    8161 	.db #0xff	; 255
      00272D 00                    8162 	.db #0x00	; 0
      00272E FF                    8163 	.db #0xff	; 255
      00272F 10                    8164 	.db #0x10	; 16
      002730 10                    8165 	.db #0x10	; 16
      002731 F0                    8166 	.db #0xf0	; 240
      002732 10                    8167 	.db #0x10	; 16
      002733 F0                    8168 	.db #0xf0	; 240
      002734 14                    8169 	.db #0x14	; 20
      002735 14                    8170 	.db #0x14	; 20
      002736 14                    8171 	.db #0x14	; 20
      002737 FC                    8172 	.db #0xfc	; 252
      002738 00                    8173 	.db #0x00	; 0
      002739 14                    8174 	.db #0x14	; 20
      00273A 14                    8175 	.db #0x14	; 20
      00273B F7                    8176 	.db #0xf7	; 247
      00273C 00                    8177 	.db #0x00	; 0
      00273D FF                    8178 	.db #0xff	; 255
      00273E 00                    8179 	.db #0x00	; 0
      00273F 00                    8180 	.db #0x00	; 0
      002740 FF                    8181 	.db #0xff	; 255
      002741 00                    8182 	.db #0x00	; 0
      002742 FF                    8183 	.db #0xff	; 255
      002743 14                    8184 	.db #0x14	; 20
      002744 14                    8185 	.db #0x14	; 20
      002745 F4                    8186 	.db #0xf4	; 244
      002746 04                    8187 	.db #0x04	; 4
      002747 FC                    8188 	.db #0xfc	; 252
      002748 14                    8189 	.db #0x14	; 20
      002749 14                    8190 	.db #0x14	; 20
      00274A 17                    8191 	.db #0x17	; 23
      00274B 10                    8192 	.db #0x10	; 16
      00274C 1F                    8193 	.db #0x1f	; 31
      00274D 10                    8194 	.db #0x10	; 16
      00274E 10                    8195 	.db #0x10	; 16
      00274F 1F                    8196 	.db #0x1f	; 31
      002750 10                    8197 	.db #0x10	; 16
      002751 1F                    8198 	.db #0x1f	; 31
      002752 14                    8199 	.db #0x14	; 20
      002753 14                    8200 	.db #0x14	; 20
      002754 14                    8201 	.db #0x14	; 20
      002755 1F                    8202 	.db #0x1f	; 31
      002756 00                    8203 	.db #0x00	; 0
      002757 10                    8204 	.db #0x10	; 16
      002758 10                    8205 	.db #0x10	; 16
      002759 10                    8206 	.db #0x10	; 16
      00275A F0                    8207 	.db #0xf0	; 240
      00275B 00                    8208 	.db #0x00	; 0
      00275C 00                    8209 	.db #0x00	; 0
      00275D 00                    8210 	.db #0x00	; 0
      00275E 00                    8211 	.db #0x00	; 0
      00275F 1F                    8212 	.db #0x1f	; 31
      002760 10                    8213 	.db #0x10	; 16
      002761 10                    8214 	.db #0x10	; 16
      002762 10                    8215 	.db #0x10	; 16
      002763 10                    8216 	.db #0x10	; 16
      002764 1F                    8217 	.db #0x1f	; 31
      002765 10                    8218 	.db #0x10	; 16
      002766 10                    8219 	.db #0x10	; 16
      002767 10                    8220 	.db #0x10	; 16
      002768 10                    8221 	.db #0x10	; 16
      002769 F0                    8222 	.db #0xf0	; 240
      00276A 10                    8223 	.db #0x10	; 16
      00276B 00                    8224 	.db #0x00	; 0
      00276C 00                    8225 	.db #0x00	; 0
      00276D 00                    8226 	.db #0x00	; 0
      00276E FF                    8227 	.db #0xff	; 255
      00276F 10                    8228 	.db #0x10	; 16
      002770 10                    8229 	.db #0x10	; 16
      002771 10                    8230 	.db #0x10	; 16
      002772 10                    8231 	.db #0x10	; 16
      002773 10                    8232 	.db #0x10	; 16
      002774 10                    8233 	.db #0x10	; 16
      002775 10                    8234 	.db #0x10	; 16
      002776 10                    8235 	.db #0x10	; 16
      002777 10                    8236 	.db #0x10	; 16
      002778 FF                    8237 	.db #0xff	; 255
      002779 10                    8238 	.db #0x10	; 16
      00277A 00                    8239 	.db #0x00	; 0
      00277B 00                    8240 	.db #0x00	; 0
      00277C 00                    8241 	.db #0x00	; 0
      00277D FF                    8242 	.db #0xff	; 255
      00277E 14                    8243 	.db #0x14	; 20
      00277F 00                    8244 	.db #0x00	; 0
      002780 00                    8245 	.db #0x00	; 0
      002781 FF                    8246 	.db #0xff	; 255
      002782 00                    8247 	.db #0x00	; 0
      002783 FF                    8248 	.db #0xff	; 255
      002784 00                    8249 	.db #0x00	; 0
      002785 00                    8250 	.db #0x00	; 0
      002786 1F                    8251 	.db #0x1f	; 31
      002787 10                    8252 	.db #0x10	; 16
      002788 17                    8253 	.db #0x17	; 23
      002789 00                    8254 	.db #0x00	; 0
      00278A 00                    8255 	.db #0x00	; 0
      00278B FC                    8256 	.db #0xfc	; 252
      00278C 04                    8257 	.db #0x04	; 4
      00278D F4                    8258 	.db #0xf4	; 244
      00278E 14                    8259 	.db #0x14	; 20
      00278F 14                    8260 	.db #0x14	; 20
      002790 17                    8261 	.db #0x17	; 23
      002791 10                    8262 	.db #0x10	; 16
      002792 17                    8263 	.db #0x17	; 23
      002793 14                    8264 	.db #0x14	; 20
      002794 14                    8265 	.db #0x14	; 20
      002795 F4                    8266 	.db #0xf4	; 244
      002796 04                    8267 	.db #0x04	; 4
      002797 F4                    8268 	.db #0xf4	; 244
      002798 00                    8269 	.db #0x00	; 0
      002799 00                    8270 	.db #0x00	; 0
      00279A FF                    8271 	.db #0xff	; 255
      00279B 00                    8272 	.db #0x00	; 0
      00279C F7                    8273 	.db #0xf7	; 247
      00279D 14                    8274 	.db #0x14	; 20
      00279E 14                    8275 	.db #0x14	; 20
      00279F 14                    8276 	.db #0x14	; 20
      0027A0 14                    8277 	.db #0x14	; 20
      0027A1 14                    8278 	.db #0x14	; 20
      0027A2 14                    8279 	.db #0x14	; 20
      0027A3 14                    8280 	.db #0x14	; 20
      0027A4 F7                    8281 	.db #0xf7	; 247
      0027A5 00                    8282 	.db #0x00	; 0
      0027A6 F7                    8283 	.db #0xf7	; 247
      0027A7 14                    8284 	.db #0x14	; 20
      0027A8 14                    8285 	.db #0x14	; 20
      0027A9 14                    8286 	.db #0x14	; 20
      0027AA 17                    8287 	.db #0x17	; 23
      0027AB 14                    8288 	.db #0x14	; 20
      0027AC 10                    8289 	.db #0x10	; 16
      0027AD 10                    8290 	.db #0x10	; 16
      0027AE 1F                    8291 	.db #0x1f	; 31
      0027AF 10                    8292 	.db #0x10	; 16
      0027B0 1F                    8293 	.db #0x1f	; 31
      0027B1 14                    8294 	.db #0x14	; 20
      0027B2 14                    8295 	.db #0x14	; 20
      0027B3 14                    8296 	.db #0x14	; 20
      0027B4 F4                    8297 	.db #0xf4	; 244
      0027B5 14                    8298 	.db #0x14	; 20
      0027B6 10                    8299 	.db #0x10	; 16
      0027B7 10                    8300 	.db #0x10	; 16
      0027B8 F0                    8301 	.db #0xf0	; 240
      0027B9 10                    8302 	.db #0x10	; 16
      0027BA F0                    8303 	.db #0xf0	; 240
      0027BB 00                    8304 	.db #0x00	; 0
      0027BC 00                    8305 	.db #0x00	; 0
      0027BD 1F                    8306 	.db #0x1f	; 31
      0027BE 10                    8307 	.db #0x10	; 16
      0027BF 1F                    8308 	.db #0x1f	; 31
      0027C0 00                    8309 	.db #0x00	; 0
      0027C1 00                    8310 	.db #0x00	; 0
      0027C2 00                    8311 	.db #0x00	; 0
      0027C3 1F                    8312 	.db #0x1f	; 31
      0027C4 14                    8313 	.db #0x14	; 20
      0027C5 00                    8314 	.db #0x00	; 0
      0027C6 00                    8315 	.db #0x00	; 0
      0027C7 00                    8316 	.db #0x00	; 0
      0027C8 FC                    8317 	.db #0xfc	; 252
      0027C9 14                    8318 	.db #0x14	; 20
      0027CA 00                    8319 	.db #0x00	; 0
      0027CB 00                    8320 	.db #0x00	; 0
      0027CC F0                    8321 	.db #0xf0	; 240
      0027CD 10                    8322 	.db #0x10	; 16
      0027CE F0                    8323 	.db #0xf0	; 240
      0027CF 10                    8324 	.db #0x10	; 16
      0027D0 10                    8325 	.db #0x10	; 16
      0027D1 FF                    8326 	.db #0xff	; 255
      0027D2 10                    8327 	.db #0x10	; 16
      0027D3 FF                    8328 	.db #0xff	; 255
      0027D4 14                    8329 	.db #0x14	; 20
      0027D5 14                    8330 	.db #0x14	; 20
      0027D6 14                    8331 	.db #0x14	; 20
      0027D7 FF                    8332 	.db #0xff	; 255
      0027D8 14                    8333 	.db #0x14	; 20
      0027D9 10                    8334 	.db #0x10	; 16
      0027DA 10                    8335 	.db #0x10	; 16
      0027DB 10                    8336 	.db #0x10	; 16
      0027DC 1F                    8337 	.db #0x1f	; 31
      0027DD 00                    8338 	.db #0x00	; 0
      0027DE 00                    8339 	.db #0x00	; 0
      0027DF 00                    8340 	.db #0x00	; 0
      0027E0 00                    8341 	.db #0x00	; 0
      0027E1 F0                    8342 	.db #0xf0	; 240
      0027E2 10                    8343 	.db #0x10	; 16
      0027E3 FF                    8344 	.db #0xff	; 255
      0027E4 FF                    8345 	.db #0xff	; 255
      0027E5 FF                    8346 	.db #0xff	; 255
      0027E6 FF                    8347 	.db #0xff	; 255
      0027E7 FF                    8348 	.db #0xff	; 255
      0027E8 F0                    8349 	.db #0xf0	; 240
      0027E9 F0                    8350 	.db #0xf0	; 240
      0027EA F0                    8351 	.db #0xf0	; 240
      0027EB F0                    8352 	.db #0xf0	; 240
      0027EC F0                    8353 	.db #0xf0	; 240
      0027ED FF                    8354 	.db #0xff	; 255
      0027EE FF                    8355 	.db #0xff	; 255
      0027EF FF                    8356 	.db #0xff	; 255
      0027F0 00                    8357 	.db #0x00	; 0
      0027F1 00                    8358 	.db #0x00	; 0
      0027F2 00                    8359 	.db #0x00	; 0
      0027F3 00                    8360 	.db #0x00	; 0
      0027F4 00                    8361 	.db #0x00	; 0
      0027F5 FF                    8362 	.db #0xff	; 255
      0027F6 FF                    8363 	.db #0xff	; 255
      0027F7 0F                    8364 	.db #0x0f	; 15
      0027F8 0F                    8365 	.db #0x0f	; 15
      0027F9 0F                    8366 	.db #0x0f	; 15
      0027FA 0F                    8367 	.db #0x0f	; 15
      0027FB 0F                    8368 	.db #0x0f	; 15
      0027FC 38                    8369 	.db #0x38	; 56	'8'
      0027FD 44                    8370 	.db #0x44	; 68	'D'
      0027FE 44                    8371 	.db #0x44	; 68	'D'
      0027FF 38                    8372 	.db #0x38	; 56	'8'
      002800 44                    8373 	.db #0x44	; 68	'D'
      002801 FC                    8374 	.db #0xfc	; 252
      002802 4A                    8375 	.db #0x4a	; 74	'J'
      002803 4A                    8376 	.db #0x4a	; 74	'J'
      002804 4A                    8377 	.db #0x4a	; 74	'J'
      002805 34                    8378 	.db #0x34	; 52	'4'
      002806 7E                    8379 	.db #0x7e	; 126
      002807 02                    8380 	.db #0x02	; 2
      002808 02                    8381 	.db #0x02	; 2
      002809 06                    8382 	.db #0x06	; 6
      00280A 06                    8383 	.db #0x06	; 6
      00280B 02                    8384 	.db #0x02	; 2
      00280C 7E                    8385 	.db #0x7e	; 126
      00280D 02                    8386 	.db #0x02	; 2
      00280E 7E                    8387 	.db #0x7e	; 126
      00280F 02                    8388 	.db #0x02	; 2
      002810 63                    8389 	.db #0x63	; 99	'c'
      002811 55                    8390 	.db #0x55	; 85	'U'
      002812 49                    8391 	.db #0x49	; 73	'I'
      002813 41                    8392 	.db #0x41	; 65	'A'
      002814 63                    8393 	.db #0x63	; 99	'c'
      002815 38                    8394 	.db #0x38	; 56	'8'
      002816 44                    8395 	.db #0x44	; 68	'D'
      002817 44                    8396 	.db #0x44	; 68	'D'
      002818 3C                    8397 	.db #0x3c	; 60
      002819 04                    8398 	.db #0x04	; 4
      00281A 40                    8399 	.db #0x40	; 64
      00281B 7E                    8400 	.db #0x7e	; 126
      00281C 20                    8401 	.db #0x20	; 32
      00281D 1E                    8402 	.db #0x1e	; 30
      00281E 20                    8403 	.db #0x20	; 32
      00281F 06                    8404 	.db #0x06	; 6
      002820 02                    8405 	.db #0x02	; 2
      002821 7E                    8406 	.db #0x7e	; 126
      002822 02                    8407 	.db #0x02	; 2
      002823 02                    8408 	.db #0x02	; 2
      002824 99                    8409 	.db #0x99	; 153
      002825 A5                    8410 	.db #0xa5	; 165
      002826 E7                    8411 	.db #0xe7	; 231
      002827 A5                    8412 	.db #0xa5	; 165
      002828 99                    8413 	.db #0x99	; 153
      002829 1C                    8414 	.db #0x1c	; 28
      00282A 2A                    8415 	.db #0x2a	; 42
      00282B 49                    8416 	.db #0x49	; 73	'I'
      00282C 2A                    8417 	.db #0x2a	; 42
      00282D 1C                    8418 	.db #0x1c	; 28
      00282E 4C                    8419 	.db #0x4c	; 76	'L'
      00282F 72                    8420 	.db #0x72	; 114	'r'
      002830 01                    8421 	.db #0x01	; 1
      002831 72                    8422 	.db #0x72	; 114	'r'
      002832 4C                    8423 	.db #0x4c	; 76	'L'
      002833 30                    8424 	.db #0x30	; 48	'0'
      002834 4A                    8425 	.db #0x4a	; 74	'J'
      002835 4D                    8426 	.db #0x4d	; 77	'M'
      002836 4D                    8427 	.db #0x4d	; 77	'M'
      002837 30                    8428 	.db #0x30	; 48	'0'
      002838 30                    8429 	.db #0x30	; 48	'0'
      002839 48                    8430 	.db #0x48	; 72	'H'
      00283A 78                    8431 	.db #0x78	; 120	'x'
      00283B 48                    8432 	.db #0x48	; 72	'H'
      00283C 30                    8433 	.db #0x30	; 48	'0'
      00283D BC                    8434 	.db #0xbc	; 188
      00283E 62                    8435 	.db #0x62	; 98	'b'
      00283F 5A                    8436 	.db #0x5a	; 90	'Z'
      002840 46                    8437 	.db #0x46	; 70	'F'
      002841 3D                    8438 	.db #0x3d	; 61
      002842 3E                    8439 	.db #0x3e	; 62
      002843 49                    8440 	.db #0x49	; 73	'I'
      002844 49                    8441 	.db #0x49	; 73	'I'
      002845 49                    8442 	.db #0x49	; 73	'I'
      002846 00                    8443 	.db #0x00	; 0
      002847 7E                    8444 	.db #0x7e	; 126
      002848 01                    8445 	.db #0x01	; 1
      002849 01                    8446 	.db #0x01	; 1
      00284A 01                    8447 	.db #0x01	; 1
      00284B 7E                    8448 	.db #0x7e	; 126
      00284C 2A                    8449 	.db #0x2a	; 42
      00284D 2A                    8450 	.db #0x2a	; 42
      00284E 2A                    8451 	.db #0x2a	; 42
      00284F 2A                    8452 	.db #0x2a	; 42
      002850 2A                    8453 	.db #0x2a	; 42
      002851 44                    8454 	.db #0x44	; 68	'D'
      002852 44                    8455 	.db #0x44	; 68	'D'
      002853 5F                    8456 	.db #0x5f	; 95
      002854 44                    8457 	.db #0x44	; 68	'D'
      002855 44                    8458 	.db #0x44	; 68	'D'
      002856 40                    8459 	.db #0x40	; 64
      002857 51                    8460 	.db #0x51	; 81	'Q'
      002858 4A                    8461 	.db #0x4a	; 74	'J'
      002859 44                    8462 	.db #0x44	; 68	'D'
      00285A 40                    8463 	.db #0x40	; 64
      00285B 40                    8464 	.db #0x40	; 64
      00285C 44                    8465 	.db #0x44	; 68	'D'
      00285D 4A                    8466 	.db #0x4a	; 74	'J'
      00285E 51                    8467 	.db #0x51	; 81	'Q'
      00285F 40                    8468 	.db #0x40	; 64
      002860 00                    8469 	.db #0x00	; 0
      002861 00                    8470 	.db #0x00	; 0
      002862 FF                    8471 	.db #0xff	; 255
      002863 01                    8472 	.db #0x01	; 1
      002864 03                    8473 	.db #0x03	; 3
      002865 E0                    8474 	.db #0xe0	; 224
      002866 80                    8475 	.db #0x80	; 128
      002867 FF                    8476 	.db #0xff	; 255
      002868 00                    8477 	.db #0x00	; 0
      002869 00                    8478 	.db #0x00	; 0
      00286A 08                    8479 	.db #0x08	; 8
      00286B 08                    8480 	.db #0x08	; 8
      00286C 6B                    8481 	.db #0x6b	; 107	'k'
      00286D 6B                    8482 	.db #0x6b	; 107	'k'
      00286E 08                    8483 	.db #0x08	; 8
      00286F 36                    8484 	.db #0x36	; 54	'6'
      002870 12                    8485 	.db #0x12	; 18
      002871 36                    8486 	.db #0x36	; 54	'6'
      002872 24                    8487 	.db #0x24	; 36
      002873 36                    8488 	.db #0x36	; 54	'6'
      002874 06                    8489 	.db #0x06	; 6
      002875 0F                    8490 	.db #0x0f	; 15
      002876 09                    8491 	.db #0x09	; 9
      002877 0F                    8492 	.db #0x0f	; 15
      002878 06                    8493 	.db #0x06	; 6
      002879 00                    8494 	.db #0x00	; 0
      00287A 00                    8495 	.db #0x00	; 0
      00287B 18                    8496 	.db #0x18	; 24
      00287C 18                    8497 	.db #0x18	; 24
      00287D 00                    8498 	.db #0x00	; 0
      00287E 00                    8499 	.db #0x00	; 0
      00287F 00                    8500 	.db #0x00	; 0
      002880 10                    8501 	.db #0x10	; 16
      002881 10                    8502 	.db #0x10	; 16
      002882 00                    8503 	.db #0x00	; 0
      002883 30                    8504 	.db #0x30	; 48	'0'
      002884 40                    8505 	.db #0x40	; 64
      002885 FF                    8506 	.db #0xff	; 255
      002886 01                    8507 	.db #0x01	; 1
      002887 01                    8508 	.db #0x01	; 1
      002888 00                    8509 	.db #0x00	; 0
      002889 1F                    8510 	.db #0x1f	; 31
      00288A 01                    8511 	.db #0x01	; 1
      00288B 01                    8512 	.db #0x01	; 1
      00288C 1E                    8513 	.db #0x1e	; 30
      00288D 00                    8514 	.db #0x00	; 0
      00288E 19                    8515 	.db #0x19	; 25
      00288F 1D                    8516 	.db #0x1d	; 29
      002890 17                    8517 	.db #0x17	; 23
      002891 12                    8518 	.db #0x12	; 18
      002892 00                    8519 	.db #0x00	; 0
      002893 3C                    8520 	.db #0x3c	; 60
      002894 3C                    8521 	.db #0x3c	; 60
      002895 3C                    8522 	.db #0x3c	; 60
      002896 3C                    8523 	.db #0x3c	; 60
      002897 00                    8524 	.db #0x00	; 0
      002898 00                    8525 	.db #0x00	; 0
      002899 00                    8526 	.db #0x00	; 0
      00289A 00                    8527 	.db #0x00	; 0
      00289B 00                    8528 	.db #0x00	; 0
      00289C                       8529 _keypad:
      00289C 31                    8530 	.db #0x31	; 49	'1'
      00289D 34                    8531 	.db #0x34	; 52	'4'
      00289E 37                    8532 	.db #0x37	; 55	'7'
      00289F 45                    8533 	.db #0x45	; 69	'E'
      0028A0 32                    8534 	.db #0x32	; 50	'2'
      0028A1 35                    8535 	.db #0x35	; 53	'5'
      0028A2 38                    8536 	.db #0x38	; 56	'8'
      0028A3 30                    8537 	.db #0x30	; 48	'0'
      0028A4 33                    8538 	.db #0x33	; 51	'3'
      0028A5 36                    8539 	.db #0x36	; 54	'6'
      0028A6 39                    8540 	.db #0x39	; 57	'9'
      0028A7 46                    8541 	.db #0x46	; 70	'F'
      0028A8 41                    8542 	.db #0x41	; 65	'A'
      0028A9 42                    8543 	.db #0x42	; 66	'B'
      0028AA 43                    8544 	.db #0x43	; 67	'C'
      0028AB 44                    8545 	.db #0x44	; 68	'D'
                                   8546 	.area CONST   (CODE)
      0028AC                       8547 ___str_0:
      0028AC 3A                    8548 	.ascii ":"
      0028AD 00                    8549 	.db 0x00
                                   8550 	.area CSEG    (CODE)
                                   8551 	.area CONST   (CODE)
      0028AE                       8552 ___str_1:
      0028AE 30 78                 8553 	.ascii "0x"
      0028B0 00                    8554 	.db 0x00
                                   8555 	.area CSEG    (CODE)
                                   8556 	.area CONST   (CODE)
      0028B1                       8557 ___str_2:
      0028B1 0A                    8558 	.db 0x0a
      0028B2 20 20 20 49 6E 76 61  8559 	.ascii "   Invalid"
             6C 69 64
      0028BC 0A                    8560 	.db 0x0a
      0028BD 0A                    8561 	.db 0x0a
      0028BE 00                    8562 	.db 0x00
                                   8563 	.area CSEG    (CODE)
                                   8564 	.area CONST   (CODE)
      0028BF                       8565 ___str_3:
      0028BF 20 20 20 20 49 6E 70  8566 	.ascii "    Input"
             75 74
      0028C8 00                    8567 	.db 0x00
                                   8568 	.area CSEG    (CODE)
                                   8569 	.area CONST   (CODE)
      0028C9                       8570 ___str_4:
      0028C9 0A                    8571 	.db 0x0a
      0028CA 53 65 6C 65 63 74 20  8572 	.ascii "Select Data"
             44 61 74 61
      0028D5 0A                    8573 	.db 0x0a
      0028D6 54 79 70 65 3A        8574 	.ascii "Type:"
      0028DB 0A                    8575 	.db 0x0a
      0028DC 0A                    8576 	.db 0x0a
      0028DD 00                    8577 	.db 0x00
                                   8578 	.area CSEG    (CODE)
                                   8579 	.area CONST   (CODE)
      0028DE                       8580 ___str_5:
      0028DE 28 31 29 20 42 79 74  8581 	.ascii "(1) Byte"
             65
      0028E6 0A                    8582 	.db 0x0a
      0028E7 00                    8583 	.db 0x00
                                   8584 	.area CSEG    (CODE)
                                   8585 	.area CONST   (CODE)
      0028E8                       8586 ___str_6:
      0028E8 28 32 29 20 57 6F 72  8587 	.ascii "(2) Word"
             64
      0028F0 0A                    8588 	.db 0x0a
      0028F1 00                    8589 	.db 0x00
                                   8590 	.area CSEG    (CODE)
                                   8591 	.area CONST   (CODE)
      0028F2                       8592 ___str_7:
      0028F2 28 33 29 20 44 6F 75  8593 	.ascii "(3) Double"
             62 6C 65
      0028FC 0A                    8594 	.db 0x0a
      0028FD 20 20 20 20 57 6F 72  8595 	.ascii "    Word"
             64
      002905 0A                    8596 	.db 0x0a
      002906 0A                    8597 	.db 0x0a
      002907 20 20 5F              8598 	.ascii "  _"
      00290A 00                    8599 	.db 0x00
                                   8600 	.area CSEG    (CODE)
                                   8601 	.area CONST   (CODE)
      00290B                       8602 ___str_8:
      00290B 0A                    8603 	.db 0x0a
      00290C 45 6E 74 65 72 20 44  8604 	.ascii "Enter Data"
             61 74 61
      002916 0A                    8605 	.db 0x0a
      002917 53 69 7A 65 3A        8606 	.ascii "Size:"
      00291C 0A                    8607 	.db 0x0a
      00291D 0A                    8608 	.db 0x0a
      00291E 20 20 30 78 5F 5F 5F  8609 	.ascii "  0x____"
             5F
      002926 00                    8610 	.db 0x00
                                   8611 	.area CSEG    (CODE)
                                   8612 	.area CONST   (CODE)
      002927                       8613 ___str_9:
      002927 0A                    8614 	.db 0x0a
      002928 57 72 69 74 69 6E 67  8615 	.ascii "Writing 0x55"
             20 30 78 35 35
      002934 0A                    8616 	.db 0x0a
      002935 74 6F 20 61 6C 6C     8617 	.ascii "to all"
      00293B 0A                    8618 	.db 0x0a
      00293C 65 78 74 65 72 6E 61  8619 	.ascii "external RAM"
             6C 20 52 41 4D
      002948 0A                    8620 	.db 0x0a
      002949 6C 6F 63 61 74 69 6F  8621 	.ascii "locations."
             6E 73 2E
      002953 0A                    8622 	.db 0x0a
      002954 0A                    8623 	.db 0x0a
      002955 00                    8624 	.db 0x00
                                   8625 	.area CSEG    (CODE)
                                   8626 	.area CONST   (CODE)
      002956                       8627 ___str_10:
      002956 57 72 69 74 65        8628 	.ascii "Write"
      00295B 0A                    8629 	.db 0x0a
      00295C 63 6F 6D 70 6C 65 74  8630 	.ascii "complete."
             65 2E
      002965 0A                    8631 	.db 0x0a
      002966 00                    8632 	.db 0x00
                                   8633 	.area CSEG    (CODE)
                                   8634 	.area CONST   (CODE)
      002967                       8635 ___str_11:
      002967 0A                    8636 	.db 0x0a
      002968 56 65 72 69 66 79 69  8637 	.ascii "Verifying all"
             6E 67 20 61 6C 6C
      002975 0A                    8638 	.db 0x0a
      002976 52 41 4D 20 6C 6F 63  8639 	.ascii "RAM locations"
             61 74 69 6F 6E 73
      002983 0A                    8640 	.db 0x0a
      002984 65 71 75 61 6C 20 30  8641 	.ascii "equal 0x55."
             78 35 35 2E
      00298F 0A                    8642 	.db 0x0a
      002990 0A                    8643 	.db 0x0a
      002991 00                    8644 	.db 0x00
                                   8645 	.area CSEG    (CODE)
                                   8646 	.area CONST   (CODE)
      002992                       8647 ___str_12:
      002992 31 73 74 20 52 41 4D  8648 	.ascii "1st RAM check"
             20 63 68 65 63 6B
      00299F 0A                    8649 	.db 0x0a
      0029A0 75 6E 73 75 63 63 65  8650 	.ascii "unsuccessful."
             73 73 66 75 6C 2E
      0029AD 0A                    8651 	.db 0x0a
      0029AE 0A                    8652 	.db 0x0a
      0029AF 00                    8653 	.db 0x00
                                   8654 	.area CSEG    (CODE)
                                   8655 	.area CONST   (CODE)
      0029B0                       8656 ___str_13:
      0029B0 45 72 72 6F 72 20 61  8657 	.ascii "Error at:"
             74 3A
      0029B9 0A                    8658 	.db 0x0a
      0029BA 00                    8659 	.db 0x00
                                   8660 	.area CSEG    (CODE)
                                   8661 	.area CONST   (CODE)
      0029BB                       8662 ___str_14:
      0029BB 3A 20 30 78           8663 	.ascii ": 0x"
      0029BF 00                    8664 	.db 0x00
                                   8665 	.area CSEG    (CODE)
                                   8666 	.area CONST   (CODE)
      0029C0                       8667 ___str_15:
      0029C0 52 65 74 75 72 6E 69  8668 	.ascii "Returning to"
             6E 67 20 74 6F
      0029CC 0A                    8669 	.db 0x0a
      0029CD 6D 61 69 6E 20 6D 65  8670 	.ascii "main menu."
             6E 75 2E
      0029D7 00                    8671 	.db 0x00
                                   8672 	.area CSEG    (CODE)
                                   8673 	.area CONST   (CODE)
      0029D8                       8674 ___str_16:
      0029D8 31 73 74 20 52 41 4D  8675 	.ascii "1st RAM check"
             20 63 68 65 63 6B
      0029E5 0A                    8676 	.db 0x0a
      0029E6 73 75 63 63 65 73 73  8677 	.ascii "successful."
             66 75 6C 2E
      0029F1 0A                    8678 	.db 0x0a
      0029F2 0A                    8679 	.db 0x0a
      0029F3 00                    8680 	.db 0x00
                                   8681 	.area CSEG    (CODE)
                                   8682 	.area CONST   (CODE)
      0029F4                       8683 ___str_17:
      0029F4 0A                    8684 	.db 0x0a
      0029F5 57 72 69 74 69 6E 67  8685 	.ascii "Writing 0xAA"
             20 30 78 41 41
      002A01 0A                    8686 	.db 0x0a
      002A02 74 6F 20 61 6C 6C     8687 	.ascii "to all"
      002A08 0A                    8688 	.db 0x0a
      002A09 65 78 74 65 72 6E 61  8689 	.ascii "external RAM"
             6C 20 52 41 4D
      002A15 0A                    8690 	.db 0x0a
      002A16 6C 6F 63 61 74 69 6F  8691 	.ascii "locations."
             6E 73 2E
      002A20 0A                    8692 	.db 0x0a
      002A21 0A                    8693 	.db 0x0a
      002A22 00                    8694 	.db 0x00
                                   8695 	.area CSEG    (CODE)
                                   8696 	.area CONST   (CODE)
      002A23                       8697 ___str_18:
      002A23 0A                    8698 	.db 0x0a
      002A24 56 65 72 69 66 79 69  8699 	.ascii "Verifying all"
             6E 67 20 61 6C 6C
      002A31 0A                    8700 	.db 0x0a
      002A32 52 41 4D 20 6C 6F 63  8701 	.ascii "RAM locations"
             61 74 69 6F 6E 73
      002A3F 0A                    8702 	.db 0x0a
      002A40 65 71 75 61 6C 20 30  8703 	.ascii "equal 0xAA."
             78 41 41 2E
      002A4B 0A                    8704 	.db 0x0a
      002A4C 0A                    8705 	.db 0x0a
      002A4D 00                    8706 	.db 0x00
                                   8707 	.area CSEG    (CODE)
                                   8708 	.area CONST   (CODE)
      002A4E                       8709 ___str_19:
      002A4E 32 6E 64 20 52 41 4D  8710 	.ascii "2nd RAM check"
             20 63 68 65 63 6B
      002A5B 0A                    8711 	.db 0x0a
      002A5C 75 6E 73 75 63 63 65  8712 	.ascii "unsuccessful."
             73 73 66 75 6C 2E
      002A69 0A                    8713 	.db 0x0a
      002A6A 0A                    8714 	.db 0x0a
      002A6B 00                    8715 	.db 0x00
                                   8716 	.area CSEG    (CODE)
                                   8717 	.area CONST   (CODE)
      002A6C                       8718 ___str_20:
      002A6C 32 6E 64 20 52 41 4D  8719 	.ascii "2nd RAM check"
             20 63 68 65 63 6B
      002A79 0A                    8720 	.db 0x0a
      002A7A 73 75 63 63 65 73 73  8721 	.ascii "successful."
             66 75 6C 2E
      002A85 0A                    8722 	.db 0x0a
      002A86 0A                    8723 	.db 0x0a
      002A87 00                    8724 	.db 0x00
                                   8725 	.area CSEG    (CODE)
                                   8726 	.area CONST   (CODE)
      002A88                       8727 ___str_21:
      002A88 52 41 4D 20 63 68 65  8728 	.ascii "RAM check"
             63 6B
      002A91 0A                    8729 	.db 0x0a
      002A92 63 6F 6D 70 6C 65 74  8730 	.ascii "complete."
             65 2E
      002A9B 0A                    8731 	.db 0x0a
      002A9C 0A                    8732 	.db 0x0a
      002A9D 00                    8733 	.db 0x00
                                   8734 	.area CSEG    (CODE)
                                   8735 	.area CONST   (CODE)
      002A9E                       8736 ___str_22:
      002A9E 0A                    8737 	.db 0x0a
      002A9F 45 6E 74 65 72 20 73  8738 	.ascii "Enter source"
             6F 75 72 63 65
      002AAB 0A                    8739 	.db 0x0a
      002AAC 73 74 61 72 74 69 6E  8740 	.ascii "starting RAM"
             67 20 52 41 4D
      002AB8 0A                    8741 	.db 0x0a
      002AB9 61 64 64 72 65 73 73  8742 	.ascii "address:"
             3A
      002AC1 0A                    8743 	.db 0x0a
      002AC2 0A                    8744 	.db 0x0a
      002AC3 0A                    8745 	.db 0x0a
      002AC4 20 20 30 78 5F 5F 5F  8746 	.ascii "  0x____"
             5F
      002ACC 00                    8747 	.db 0x00
                                   8748 	.area CSEG    (CODE)
                                   8749 	.area CONST   (CODE)
      002ACD                       8750 ___str_23:
      002ACD 0A                    8751 	.db 0x0a
      002ACE 45 6E 74 65 72        8752 	.ascii "Enter"
      002AD3 0A                    8753 	.db 0x0a
      002AD4 64 65 73 74 69 6E 61  8754 	.ascii "destination"
             74 69 6F 6E
      002ADF 0A                    8755 	.db 0x0a
      002AE0 73 74 61 72 74 69 6E  8756 	.ascii "starting RAM"
             67 20 52 41 4D
      002AEC 0A                    8757 	.db 0x0a
      002AED 61 64 64 72 65 73 73  8758 	.ascii "address:"
             3A
      002AF5 0A                    8759 	.db 0x0a
      002AF6 0A                    8760 	.db 0x0a
      002AF7 0A                    8761 	.db 0x0a
      002AF8 20 20 30 78 5F 5F 5F  8762 	.ascii "  0x____"
             5F
      002B00 00                    8763 	.db 0x00
                                   8764 	.area CSEG    (CODE)
                                   8765 	.area CONST   (CODE)
      002B01                       8766 ___str_24:
      002B01 0A                    8767 	.db 0x0a
      002B02 4D 6F 76 65 20 63 6F  8768 	.ascii "Move complete."
             6D 70 6C 65 74 65 2E
      002B10 0A                    8769 	.db 0x0a
      002B11 0A                    8770 	.db 0x0a
      002B12 00                    8771 	.db 0x00
                                   8772 	.area CSEG    (CODE)
                                   8773 	.area CONST   (CODE)
      002B13                       8774 ___str_25:
      002B13 0A                    8775 	.db 0x0a
      002B14 45 6E 74 65 72        8776 	.ascii "Enter"
      002B19 0A                    8777 	.db 0x0a
      002B1A 73 74 61 72 74 69 6E  8778 	.ascii "starting RAM"
             67 20 52 41 4D
      002B26 0A                    8779 	.db 0x0a
      002B27 61 64 64 72 65 73 73  8780 	.ascii "address:"
             3A
      002B2F 0A                    8781 	.db 0x0a
      002B30 0A                    8782 	.db 0x0a
      002B31 20 20 30 78 5F 5F 5F  8783 	.ascii "  0x____"
             5F
      002B39 00                    8784 	.db 0x00
                                   8785 	.area CSEG    (CODE)
                                   8786 	.area CONST   (CODE)
      002B3A                       8787 ___str_26:
      002B3A 0A                    8788 	.db 0x0a
      002B3B 45 6E 74 65 72 20 73  8789 	.ascii "Enter search"
             65 61 72 63 68
      002B47 0A                    8790 	.db 0x0a
      002B48 76 61 6C 75 65 3A     8791 	.ascii "value:"
      002B4E 0A                    8792 	.db 0x0a
      002B4F 0A                    8793 	.db 0x0a
      002B50 20 20 30 78 5F 5F     8794 	.ascii "  0x__"
      002B56 00                    8795 	.db 0x00
                                   8796 	.area CSEG    (CODE)
                                   8797 	.area CONST   (CODE)
      002B57                       8798 ___str_27:
      002B57 0A                    8799 	.db 0x0a
      002B58 30 78                 8800 	.ascii "0x"
      002B5A 00                    8801 	.db 0x00
                                   8802 	.area CSEG    (CODE)
                                   8803 	.area CONST   (CODE)
      002B5B                       8804 ___str_28:
      002B5B 20 66 6F 75 6E 64     8805 	.ascii " found"
      002B61 0A                    8806 	.db 0x0a
      002B62 00                    8807 	.db 0x00
                                   8808 	.area CSEG    (CODE)
                                   8809 	.area CONST   (CODE)
      002B63                       8810 ___str_29:
      002B63 30 78 31 30 30 30 30  8811 	.ascii "0x10000"
      002B6A 00                    8812 	.db 0x00
                                   8813 	.area CSEG    (CODE)
                                   8814 	.area CONST   (CODE)
      002B6B                       8815 ___str_30:
      002B6B 0A                    8816 	.db 0x0a
      002B6C 74 69 6D 65 73 2E     8817 	.ascii "times."
      002B72 00                    8818 	.db 0x00
                                   8819 	.area CSEG    (CODE)
                                   8820 	.area CONST   (CODE)
      002B73                       8821 ___str_31:
      002B73 20 6E 6F 74           8822 	.ascii " not"
      002B77 0A                    8823 	.db 0x0a
      002B78 66 6F 75 6E 64 20 69  8824 	.ascii "found in"
             6E
      002B80 0A                    8825 	.db 0x0a
      002B81 65 78 74 65 72 6E 61  8826 	.ascii "external RAM"
             6C 20 52 41 4D
      002B8D 0A                    8827 	.db 0x0a
      002B8E 00                    8828 	.db 0x00
                                   8829 	.area CSEG    (CODE)
                                   8830 	.area CONST   (CODE)
      002B8F                       8831 ___str_32:
      002B8F 20 2D                 8832 	.ascii " -"
      002B91 0A                    8833 	.db 0x0a
      002B92 00                    8834 	.db 0x00
                                   8835 	.area CSEG    (CODE)
                                   8836 	.area CONST   (CODE)
      002B93                       8837 ___str_33:
      002B93 0A                    8838 	.db 0x0a
      002B94 00                    8839 	.db 0x00
                                   8840 	.area CSEG    (CODE)
                                   8841 	.area CONST   (CODE)
      002B95                       8842 ___str_34:
      002B95 20 20 28 30 29 20 2D  8843 	.ascii "  (0) - Next Page"
             20 4E 65 78 74 20 50
             61 67 65
      002BA6 0A                    8844 	.db 0x0a
      002BA7 20 20 28 31 29 20 2D  8845 	.ascii "  (1) - Prev Page"
             20 50 72 65 76 20 50
             61 67 65
      002BB8 0A                    8846 	.db 0x0a
      002BB9 20 20 28 45 29 20 2D  8847 	.ascii "  (E) - END"
             20 45 4E 44
      002BC4 0A                    8848 	.db 0x0a
      002BC5 00                    8849 	.db 0x00
                                   8850 	.area CSEG    (CODE)
                                   8851 	.area CONST   (CODE)
      002BC6                       8852 ___str_35:
      002BC6 0A                    8853 	.db 0x0a
      002BC7 45 6E 64 20 6F 66 20  8854 	.ascii "End of Data."
             44 61 74 61 2E
      002BD3 00                    8855 	.db 0x00
                                   8856 	.area CSEG    (CODE)
                                   8857 	.area CONST   (CODE)
      002BD4                       8858 ___str_36:
      002BD4 45 6E 64 20 6F 66 20  8859 	.ascii "End of Data"
             44 61 74 61
      002BDF 00                    8860 	.db 0x00
                                   8861 	.area CSEG    (CODE)
                                   8862 	.area CONST   (CODE)
      002BE0                       8863 ___str_37:
      002BE0 0A                    8864 	.db 0x0a
      002BE1 52 65 74 75 72 6E 69  8865 	.ascii "Returning to"
             6E 67 20 74 6F
      002BED 0A                    8866 	.db 0x0a
      002BEE 4D 61 69 6E 20 4D 65  8867 	.ascii "Main Menu."
             6E 75 2E
      002BF8 00                    8868 	.db 0x00
                                   8869 	.area CSEG    (CODE)
                                   8870 	.area CONST   (CODE)
      002BF9                       8871 ___str_38:
      002BF9 0A                    8872 	.db 0x0a
      002BFA 45 6E 74 65 72 20 73  8873 	.ascii "Enter source"
             6F 75 72 63 65
      002C06 0A                    8874 	.db 0x0a
      002C07 73 74 61 72 74 69 6E  8875 	.ascii "starting RAM"
             67 20 52 41 4D
      002C13 0A                    8876 	.db 0x0a
      002C14 61 64 64 72 65 73 73  8877 	.ascii "address:"
             3A
      002C1C 0A                    8878 	.db 0x0a
      002C1D 0A                    8879 	.db 0x0a
      002C1E 20 20 30 78 5F 5F 5F  8880 	.ascii "  0x____"
             5F
      002C26 00                    8881 	.db 0x00
                                   8882 	.area CSEG    (CODE)
                                   8883 	.area CONST   (CODE)
      002C27                       8884 ___str_39:
      002C27 0A                    8885 	.db 0x0a
      002C28 0A                    8886 	.db 0x0a
      002C29 4E 65 77 20 76 61 6C  8887 	.ascii "New value:"
             75 65 3A
      002C33 0A                    8888 	.db 0x0a
      002C34 20 20 30 78 5F 5F     8889 	.ascii "  0x__"
      002C3A 00                    8890 	.db 0x00
                                   8891 	.area CSEG    (CODE)
                                   8892 	.area CONST   (CODE)
      002C3B                       8893 ___str_40:
      002C3B 0A                    8894 	.db 0x0a
      002C3C 0A                    8895 	.db 0x0a
      002C3D 0A                    8896 	.db 0x0a
      002C3E 0A                    8897 	.db 0x0a
      002C3F 28 31 29 20 45 64 69  8898 	.ascii "(1) Edit next"
             74 20 6E 65 78 74
      002C4C 0A                    8899 	.db 0x0a
      002C4D 52 41 4D 20 6C 6F 63  8900 	.ascii "RAM location"
             61 74 69 6F 6E
      002C59 0A                    8901 	.db 0x0a
      002C5A 0A                    8902 	.db 0x0a
      002C5B 00                    8903 	.db 0x00
                                   8904 	.area CSEG    (CODE)
                                   8905 	.area CONST   (CODE)
      002C5C                       8906 ___str_41:
      002C5C 28 45 29 20 45 6E 64  8907 	.ascii "(E) End"
      002C63 00                    8908 	.db 0x00
                                   8909 	.area CSEG    (CODE)
                                   8910 	.area CONST   (CODE)
      002C64                       8911 ___str_42:
      002C64 0A                    8912 	.db 0x0a
      002C65 45 6E 64 20 6F 66 20  8913 	.ascii "End of data."
             64 61 74 61 2E
      002C71 0A                    8914 	.db 0x0a
      002C72 00                    8915 	.db 0x00
                                   8916 	.area CSEG    (CODE)
                                   8917 	.area CONST   (CODE)
      002C73                       8918 ___str_43:
      002C73 0A                    8919 	.db 0x0a
      002C74 52 65 74 75 72 6E 69  8920 	.ascii "Returning to"
             6E 67 20 74 6F
      002C80 0A                    8921 	.db 0x0a
      002C81 6D 61 69 6E 20 6D 65  8922 	.ascii "main menu."
             6E 75 2E
      002C8B 00                    8923 	.db 0x00
                                   8924 	.area CSEG    (CODE)
                                   8925 	.area CONST   (CODE)
      002C8C                       8926 ___str_44:
      002C8C 20 6E 6F 74           8927 	.ascii " not"
      002C90 0A                    8928 	.db 0x0a
      002C91 66 6F 75 6E 64 20 69  8929 	.ascii "found in"
             6E
      002C99 0A                    8930 	.db 0x0a
      002C9A 61 64 64 72 65 73 73  8931 	.ascii "address range"
             20 72 61 6E 67 65
      002CA7 0A                    8932 	.db 0x0a
      002CA8 0A                    8933 	.db 0x0a
      002CA9 00                    8934 	.db 0x00
                                   8935 	.area CSEG    (CODE)
                                   8936 	.area CONST   (CODE)
      002CAA                       8937 ___str_45:
      002CAA 20 66 6F 75 6E 64 20  8938 	.ascii " found at"
             61 74
      002CB3 0A                    8939 	.db 0x0a
      002CB4 74 68 65 20 66 6F 6C  8940 	.ascii "the following"
             6C 6F 77 69 6E 67
      002CC1 0A                    8941 	.db 0x0a
      002CC2 61 64 64 72 65 73 73  8942 	.ascii "addresses:"
             65 73 3A
      002CCC 0A                    8943 	.db 0x0a
      002CCD 0A                    8944 	.db 0x0a
      002CCE 00                    8945 	.db 0x00
                                   8946 	.area CSEG    (CODE)
                                   8947 	.area CONST   (CODE)
      002CCF                       8948 ___str_46:
      002CCF 45 6E 64 20 6F 66 20  8949 	.ascii "End of Data."
             44 61 74 61 2E
      002CDB 00                    8950 	.db 0x00
                                   8951 	.area CSEG    (CODE)
                                   8952 	.area CONST   (CODE)
      002CDC                       8953 ___str_47:
      002CDC 0A                    8954 	.db 0x0a
      002CDD 45 6E 74 65 72        8955 	.ascii "Enter"
      002CE2 0A                    8956 	.db 0x0a
      002CE3 73 74 61 72 74 69 6E  8957 	.ascii "starting RAM"
             67 20 52 41 4D
      002CEF 0A                    8958 	.db 0x0a
      002CF0 61 64 64 72 65 73 73  8959 	.ascii "address:"
             3A
      002CF8 0A                    8960 	.db 0x0a
      002CF9 0A                    8961 	.db 0x0a
      002CFA 20 20 20 30 78 5F 5F  8962 	.ascii "   0x____"
             5F 5F
      002D03 00                    8963 	.db 0x00
                                   8964 	.area CSEG    (CODE)
                                   8965 	.area CONST   (CODE)
      002D04                       8966 ___str_48:
      002D04 0A                    8967 	.db 0x0a
      002D05 45 6E 74 65 72 20 73  8968 	.ascii "Enter search"
             65 61 72 63 68
      002D11 0A                    8969 	.db 0x0a
      002D12 76 61 6C 75 65 3A     8970 	.ascii "value:"
      002D18 0A                    8971 	.db 0x0a
      002D19 0A                    8972 	.db 0x0a
      002D1A 20 20 20 30 78 5F 5F  8973 	.ascii "   0x__"
      002D21 00                    8974 	.db 0x00
                                   8975 	.area CSEG    (CODE)
                                   8976 	.area CONST   (CODE)
      002D22                       8977 ___str_49:
      002D22 20 20 20 43 61 6D 65  8978 	.ascii "   Cameron"
             72 6F 6E
      002D2C 0A                    8979 	.db 0x0a
      002D2D 20 20 20 42 69 6E 69  8980 	.ascii "   Biniamow"
             61 6D 6F 77
      002D38 0A                    8981 	.db 0x0a
      002D39 00                    8982 	.db 0x00
                                   8983 	.area CSEG    (CODE)
                                   8984 	.area CONST   (CODE)
      002D3A                       8985 ___str_50:
      002D3A 20 20 45 43 45 4E 2D  8986 	.ascii "  ECEN-4330"
             34 33 33 30
      002D45 0A                    8987 	.db 0x0a
      002D46 0A                    8988 	.db 0x0a
      002D47 00                    8989 	.db 0x00
                                   8990 	.area CSEG    (CODE)
                                   8991 	.area CONST   (CODE)
      002D48                       8992 ___str_51:
      002D48 28 41 29 20 52 41 4D  8993 	.ascii "(A) RAM CHECK"
             20 43 48 45 43 4B
      002D55 0A                    8994 	.db 0x0a
      002D56 00                    8995 	.db 0x00
                                   8996 	.area CSEG    (CODE)
                                   8997 	.area CONST   (CODE)
      002D57                       8998 ___str_52:
      002D57 28 42 29 20 4D 4F 56  8999 	.ascii "(B) MOVE"
             45
      002D5F 0A                    9000 	.db 0x0a
      002D60 00                    9001 	.db 0x00
                                   9002 	.area CSEG    (CODE)
                                   9003 	.area CONST   (CODE)
      002D61                       9004 ___str_53:
      002D61 28 43 29 20 43 4F 55  9005 	.ascii "(C) COUNT"
             4E 54
      002D6A 0A                    9006 	.db 0x0a
      002D6B 00                    9007 	.db 0x00
                                   9008 	.area CSEG    (CODE)
                                   9009 	.area CONST   (CODE)
      002D6C                       9010 ___str_54:
      002D6C 28 44 29 20 44 55 4D  9011 	.ascii "(D) DUMP"
             50
      002D74 0A                    9012 	.db 0x0a
      002D75 00                    9013 	.db 0x00
                                   9014 	.area CSEG    (CODE)
                                   9015 	.area CONST   (CODE)
      002D76                       9016 ___str_55:
      002D76 28 45 29 20 45 44 49  9017 	.ascii "(E) EDIT"
             54
      002D7E 0A                    9018 	.db 0x0a
      002D7F 00                    9019 	.db 0x00
                                   9020 	.area CSEG    (CODE)
                                   9021 	.area CONST   (CODE)
      002D80                       9022 ___str_56:
      002D80 28 46 29 20 46 49 4E  9023 	.ascii "(F) FIND"
             44
      002D88 0A                    9024 	.db 0x0a
      002D89 00                    9025 	.db 0x00
                                   9026 	.area CSEG    (CODE)
                                   9027 	.area CONST   (CODE)
      002D8A                       9028 ___str_57:
      002D8A 53 70 72 69 6E 67 20  9029 	.ascii "Spring 2021"
             32 30 32 31
      002D95 00                    9030 	.db 0x00
                                   9031 	.area CSEG    (CODE)
                                   9032 	.area XINIT   (CODE)
                                   9033 	.area CABS    (ABS,CODE)
