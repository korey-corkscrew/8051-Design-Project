;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.9 #12669 (MINGW64)
;--------------------------------------------------------
	.module ECEN4330Lab7
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _RAMwrite_PARM_2
	.globl _setAddress_PARM_4
	.globl _setAddress_PARM_3
	.globl _setAddress_PARM_2
	.globl _setTextColor_PARM_2
	.globl _setCursor_PARM_2
	.globl _rtcCmd_PARM_2
	.globl _writeRegister16_PARM_2
	.globl _writeRegister8_PARM_2
	.globl _keypad
	.globl _main
	.globl _LCD_mainMenu
	.globl _FIND
	.globl _EDIT
	.globl _EDIT_display
	.globl _DUMP
	.globl _DUMP_display
	.globl _COUNT
	.globl _MOVE
	.globl _RAM_CHECK
	.globl _inputDataSize
	.globl _inputDataType
	.globl _inputRead8
	.globl _inputRead16
	.globl _invalidInput
	.globl _resetLCD
	.globl _RAMread
	.globl _RAMwrite
	.globl _HEXtoASCII_16write
	.globl _HEXtoASCII
	.globl _ASCIItoHEX
	.globl _drawChar
	.globl _setRotation
	.globl _UART_transmit
	.globl _UART_Init
	.globl _ISR_receive
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _drawChar_PARM_6
	.globl _drawChar_PARM_5
	.globl _drawChar_PARM_4
	.globl _drawChar_PARM_3
	.globl _drawChar_PARM_2
	.globl _fillRect_PARM_5
	.globl _fillRect_PARM_4
	.globl _fillRect_PARM_3
	.globl _fillRect_PARM_2
	.globl _drawPixel_PARM_3
	.globl _drawPixel_PARM_2
	.globl _rtcWrite_PARM_2
	.globl _received_flag
	.globl _received_byte
	.globl _ts
	.globl _y
	.globl _x
	.globl _textSizeHold
	.globl _yCursorHold
	.globl _xCursorHold
	.globl _endAddrCalc
	.globl _count
	.globl _ASCII
	.globl _byte1
	.globl _byte
	.globl _currAddr1
	.globl _currAddr0
	.globl _addr3
	.globl _addr2
	.globl _addr1
	.globl _addr0
	.globl _data
	.globl _scrollEnd
	.globl _dataEnd
	.globl _validInput
	.globl _dataSize
	.globl _dataType
	.globl _input8
	.globl _input16
	.globl _key
	.globl __height
	.globl __width
	.globl _textbgcolor
	.globl _textcolor
	.globl _rotation
	.globl _textsize
	.globl _cursor_y
	.globl _cursor_x
	.globl _read_ram_address
	.globl _seg7_address
	.globl _lcd_address
	.globl _rowloc
	.globl _colloc
	.globl _delay
	.globl _writeRegister8
	.globl _writeRegister16
	.globl _rtcInit
	.globl _rtcBusy
	.globl _rtcCmd
	.globl _rtcWrite
	.globl _rtcRead
	.globl _rtcPrint
	.globl _setCursor
	.globl _setTextColor
	.globl _setTextSize
	.globl _setAddress
	.globl _TFT_LCD_INIT
	.globl _drawPixel
	.globl _fillRect
	.globl _fillScreen
	.globl _write
	.globl _LCD_string_write
	.globl _keyDetect
	.globl _HEXtoASCII_8write
	.globl _testRAM
	.globl _FIND_display
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_colloc::
	.ds 1
_rowloc::
	.ds 1
_lcd_address::
	.ds 2
_seg7_address::
	.ds 2
_read_ram_address::
	.ds 2
_cursor_x::
	.ds 2
_cursor_y::
	.ds 2
_textsize::
	.ds 1
_rotation::
	.ds 1
_textcolor::
	.ds 2
_textbgcolor::
	.ds 2
__width::
	.ds 2
__height::
	.ds 2
_key::
	.ds 1
_input16::
	.ds 2
_input8::
	.ds 1
_dataType::
	.ds 1
_dataSize::
	.ds 2
_validInput::
	.ds 1
_dataEnd::
	.ds 1
_scrollEnd::
	.ds 1
_data::
	.ds 1
_addr0::
	.ds 2
_addr1::
	.ds 2
_addr2::
	.ds 2
_addr3::
	.ds 2
_currAddr0::
	.ds 2
_currAddr1::
	.ds 2
_byte::
	.ds 2
_byte1::
	.ds 2
_ASCII::
	.ds 1
_count::
	.ds 2
_endAddrCalc::
	.ds 4
_xCursorHold::
	.ds 1
_yCursorHold::
	.ds 1
_textSizeHold::
	.ds 1
_x::
	.ds 1
_y::
	.ds 1
_ts::
	.ds 1
_received_byte::
	.ds 1
_received_flag::
	.ds 1
_rtcWrite_PARM_2:
	.ds 1
_drawPixel_PARM_2:
	.ds 2
_drawPixel_PARM_3:
	.ds 2
_fillRect_PARM_2:
	.ds 2
_fillRect_PARM_3:
	.ds 2
_fillRect_PARM_4:
	.ds 2
_fillRect_PARM_5:
	.ds 2
_drawChar_PARM_2:
	.ds 2
_drawChar_PARM_3:
	.ds 1
_drawChar_PARM_4:
	.ds 2
_drawChar_PARM_5:
	.ds 2
_drawChar_PARM_6:
	.ds 1
_drawChar_x_65536_311:
	.ds 2
_drawChar_line_196608_315:
	.ds 1
_drawChar_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_writeRegister8_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_writeRegister16_PARM_2:
	.ds 2
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_rtcCmd_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_setCursor_PARM_2:
	.ds 2
	.area	OSEG    (OVR,DATA)
_setTextColor_PARM_2:
	.ds 2
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_setAddress_PARM_2:
	.ds 2
_setAddress_PARM_3:
	.ds 2
_setAddress_PARM_4:
	.ds 2
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_RAMwrite_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
_drawChar_sloc0_1_0:
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
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_ISR_receive
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
;	ECEN4330Lab7.c:39: __xdata unsigned char* lcd_address = (unsigned char __xdata*) __LCD_ADDRESS__;
	mov	_lcd_address,#0x00
	mov	(_lcd_address + 1),#0x40
;	ECEN4330Lab7.c:40: __xdata unsigned char* seg7_address = (unsigned char __xdata*) __SEG_7_ADDRESS__;
	mov	_seg7_address,#0x00
	mov	(_seg7_address + 1),#0x80
;	ECEN4330Lab7.c:95: unsigned int count = 0;
	clr	a
	mov	_count,a
	mov	(_count + 1),a
;	ECEN4330Lab7.c:100: volatile unsigned char received_byte = 0;
;	1-genFromRTrack replaced	mov	_received_byte,#0x00
	mov	_received_byte,a
;	ECEN4330Lab7.c:101: volatile unsigned char received_flag = 0;
;	1-genFromRTrack replaced	mov	_received_flag,#0x00
	mov	_received_flag,a
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
;Allocation info for local variables in function 'ISR_receive'
;------------------------------------------------------------
;	ECEN4330Lab7.c:124: void ISR_receive() __interrupt (4) {
;	-----------------------------------------
;	 function ISR_receive
;	-----------------------------------------
_ISR_receive:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	ECEN4330Lab7.c:125: if (RI == 1){
	jnb	_RI,00103$
;	ECEN4330Lab7.c:126: received_byte = SBUF;
	mov	_received_byte,_SBUF
;	ECEN4330Lab7.c:127: RI = 0;
;	assignBit
	clr	_RI
;	ECEN4330Lab7.c:128: received_flag = 1;
	mov	_received_flag,#0x01
00103$:
;	ECEN4330Lab7.c:130: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
;	ECEN4330Lab7.c:138: void UART_Init(){
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
;	ECEN4330Lab7.c:139: SCON = 0x50;  // Asynchronous mode, 8-bit data and 1-stop bit
	mov	_SCON,#0x50
;	ECEN4330Lab7.c:140: TMOD = 0x20;  // Timer1 in Mode2. in 8 bit auto reload
	mov	_TMOD,#0x20
;	ECEN4330Lab7.c:141: TH1 =  0xFD;  // Load timer value for 9600 baudrate
	mov	_TH1,#0xfd
;	ECEN4330Lab7.c:142: TR1 = 1;      // Turn ON the timer for Baud rate generation
;	assignBit
	setb	_TR1
;	ECEN4330Lab7.c:143: ES  = 1;      // Enable Serial Interrupt
;	assignBit
	setb	_ES
;	ECEN4330Lab7.c:144: EA  = 1;      // Enable Global Interrupt bit
;	assignBit
	setb	_EA
;	ECEN4330Lab7.c:145: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_transmit'
;------------------------------------------------------------
;	ECEN4330Lab7.c:153: void UART_transmit(){
;	-----------------------------------------
;	 function UART_transmit
;	-----------------------------------------
_UART_transmit:
;	ECEN4330Lab7.c:154: SBUF = byte;
	mov	_SBUF,_byte
;	ECEN4330Lab7.c:155: while(TI == 1);
00101$:
	jb	_TI,00101$
;	ECEN4330Lab7.c:156: TI = 0;
;	assignBit
	clr	_TI
;	ECEN4330Lab7.c:157: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;d                         Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	ECEN4330Lab7.c:191: void delay (int d) /// x 1ms
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
;	ECEN4330Lab7.c:194: for (i=0;i<d;i++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	ECEN4330Lab7.c:196: for (j=0;j<1000;j++);
	mov	r2,#0xe8
	mov	r3,#0x03
00105$:
	dec	r2
	cjne	r2,#0xff,00130$
	dec	r3
00130$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	ECEN4330Lab7.c:194: for (i=0;i<d;i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	ECEN4330Lab7.c:198: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeRegister8'
;------------------------------------------------------------
;d                         Allocated with name '_writeRegister8_PARM_2'
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	ECEN4330Lab7.c:206: void writeRegister8(u8 a, u8 d) {
;	-----------------------------------------
;	 function writeRegister8
;	-----------------------------------------
_writeRegister8:
	mov	r7,dpl
;	ECEN4330Lab7.c:207: CD = __CMD__;
;	assignBit
	clr	_P3_5
;	ECEN4330Lab7.c:208: write8(a);
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r7
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:209: CD = __DATA__;
;	assignBit
	setb	_P3_5
;	ECEN4330Lab7.c:210: write8(d);
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_writeRegister8_PARM_2
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:211: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeRegister16'
;------------------------------------------------------------
;d                         Allocated with name '_writeRegister16_PARM_2'
;a                         Allocated to registers r6 r7 
;hi                        Allocated to registers r6 r7 
;lo                        Allocated to registers r4 r5 
;------------------------------------------------------------
;	ECEN4330Lab7.c:219: void writeRegister16(u16 a, u16 d){
;	-----------------------------------------
;	 function writeRegister16
;	-----------------------------------------
_writeRegister16:
	mov	r6,dpl
	mov	r7,dph
;	ECEN4330Lab7.c:221: hi = (a) >> 8;
	mov	ar4,r7
;	ECEN4330Lab7.c:222: lo = (a);
;	ECEN4330Lab7.c:223: write8Reg(hi);
;	assignBit
	clr	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r4
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:224: write8Reg(lo);
;	assignBit
	clr	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:225: hi = (d) >> 8;
	mov	r6,(_writeRegister16_PARM_2 + 1)
;	ECEN4330Lab7.c:226: lo = (d);
	mov	r4,_writeRegister16_PARM_2
;	ECEN4330Lab7.c:227: CD = 1 ;
;	assignBit
	setb	_P3_5
;	ECEN4330Lab7.c:228: write8Data(hi);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:229: write8Data(lo);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r4
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:230: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rtcInit'
;------------------------------------------------------------
;i                         Allocated with name '_rtcInit_i_65536_63'
;------------------------------------------------------------
;	ECEN4330Lab7.c:252: void rtcInit(void) {
;	-----------------------------------------
;	 function rtcInit
;	-----------------------------------------
_rtcInit:
;	ECEN4330Lab7.c:255: rtcCmd(__REG_F__, __HR_24__|__STOP__|__RESET__);  // stop and reset
	mov	_rtcCmd_PARM_2,#0x07
	mov	dptr,#0x000f
	lcall	_rtcCmd
;	ECEN4330Lab7.c:258: for (i = __S1_REG__; i < __REG_D__;i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	ECEN4330Lab7.c:259: rtcWrite(i, 0x00);
	mov	_rtcWrite_PARM_2,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_rtcWrite
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:258: for (i = __S1_REG__; i < __REG_D__;i++) {
	inc	r6
	cjne	r6,#0x00,00115$
	inc	r7
00115$:
	clr	c
	mov	a,r6
	subb	a,#0x0d
	mov	a,r7
	subb	a,#0x00
	jc	00102$
;	ECEN4330Lab7.c:262: rtcCmd(__REG_F__, __HR_24__);
	mov	_rtcCmd_PARM_2,#0x04
	mov	dptr,#0x000f
;	ECEN4330Lab7.c:263: }
	ljmp	_rtcCmd
;------------------------------------------------------------
;Allocation info for local variables in function 'rtcBusy'
;------------------------------------------------------------
;__1310720001              Allocated to registers 
;map_address               Allocated to registers 
;__1310720002              Allocated to registers 
;map_address               Allocated to registers 
;------------------------------------------------------------
;	ECEN4330Lab7.c:271: void rtcBusy(void) {
;	-----------------------------------------
;	 function rtcBusy
;	-----------------------------------------
_rtcBusy:
;	ECEN4330Lab7.c:273: while((ioread8(map_address) & 0x02));
00101$:
;	ECEN4330Lab7.c:179: IOM = 1;                            
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:180: data = *map_address;
	mov	dptr,#0x000d
	movx	a,@dptr
	mov	_data,a
;	ECEN4330Lab7.c:181: IOM = 0;    
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:182: return data;   
	mov	a,_data
;	ECEN4330Lab7.c:273: while((ioread8(map_address) & 0x02));
	jb	acc.1,00101$
;	ECEN4330Lab7.c:274: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rtcCmd'
;------------------------------------------------------------
;d                         Allocated with name '_rtcCmd_PARM_2'
;addr                      Allocated to registers r6 r7 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers r7 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;------------------------------------------------------------
;	ECEN4330Lab7.c:282: inline void rtcCmd(unsigned int addr, unsigned char d) {
;	-----------------------------------------
;	 function rtcCmd
;	-----------------------------------------
_rtcCmd:
;	ECEN4330Lab7.c:283: __xdata unsigned char* map_address =  (unsigned char __xdata*) addr;
;	ECEN4330Lab7.c:284: iowrite8(map_address, d);
	mov	r7,_rtcCmd_PARM_2
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	a,r7
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:284: iowrite8(map_address, d);
;	ECEN4330Lab7.c:285: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rtcWrite'
;------------------------------------------------------------
;d                         Allocated with name '_rtcWrite_PARM_2'
;addr                      Allocated to registers r6 r7 
;map_address               Allocated to registers r6 r7 
;__1310720007              Allocated to registers 
;__1310720008              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720010              Allocated to registers 
;__1310720011              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720013              Allocated to registers 
;__1310720014              Allocated to registers r7 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;------------------------------------------------------------
;	ECEN4330Lab7.c:293: inline void rtcWrite(unsigned int addr, unsigned char d) {
;	-----------------------------------------
;	 function rtcWrite
;	-----------------------------------------
_rtcWrite:
	mov	r6,dpl
	mov	r7,dph
;	ECEN4330Lab7.c:294: __xdata unsigned char* map_address =  (unsigned char __xdata*) addr;
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:296: rtcBusy();
	push	ar7
	push	ar6
	lcall	_rtcBusy
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:298: rtcCmd(__REG_D__, d);
	mov	r7,_rtcWrite_PARM_2
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dptr,#0x000d
	mov	a,r7
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:298: rtcCmd(__REG_D__, d);
;	ECEN4330Lab7.c:299: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rtcRead'
;------------------------------------------------------------
;addr                      Allocated to registers r6 r7 
;__1310720019              Allocated to registers 
;map_address               Allocated to registers r6 r7 
;__1310720016              Allocated to registers 
;__1310720017              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720020              Allocated to registers 
;map_address               Allocated to registers 
;__1310720022              Allocated to registers 
;__1310720023              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;------------------------------------------------------------
;	ECEN4330Lab7.c:308: inline unsigned char rtcRead(unsigned int addr) {
;	-----------------------------------------
;	 function rtcRead
;	-----------------------------------------
_rtcRead:
	mov	r6,dpl
	mov	r7,dph
;	ECEN4330Lab7.c:309: __xdata unsigned char* map_address =  (unsigned char __xdata*) addr;
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:311: rtcBusy();
	push	ar7
	push	ar6
	lcall	_rtcBusy
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:179: IOM = 1;                            
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:180: data = *map_address;
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	_data,a
;	ECEN4330Lab7.c:181: IOM = 0;    
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:182: return data;   
;	ECEN4330Lab7.c:314: data = (data & 0x0F) | 0x30; // ascii the lower word
	mov	a,_data
	anl	a,#0x0f
	orl	a,#0x30
	mov	_data,a
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:316: return data;
	mov	dpl,_data
;	ECEN4330Lab7.c:317: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rtcPrint'
;------------------------------------------------------------
;__1310720040              Allocated to registers 
;__1310720037              Allocated to registers 
;__1310720034              Allocated to registers 
;__1310720031              Allocated to registers 
;__1310720028              Allocated to registers 
;__1310720025              Allocated to registers 
;t                         Allocated to registers 
;__1310720026              Allocated to registers 
;addr                      Allocated to registers 
;__1310720019              Allocated to registers 
;map_address               Allocated to registers 
;__1310720016              Allocated to registers 
;__1310720017              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720020              Allocated to registers 
;map_address               Allocated to registers 
;__1310720022              Allocated to registers 
;__1310720023              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720029              Allocated to registers 
;addr                      Allocated to registers 
;__1310720019              Allocated to registers 
;map_address               Allocated to registers 
;__1310720016              Allocated to registers 
;__1310720017              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720020              Allocated to registers 
;map_address               Allocated to registers 
;__1310720022              Allocated to registers 
;__1310720023              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720032              Allocated to registers 
;addr                      Allocated to registers 
;__1310720019              Allocated to registers 
;map_address               Allocated to registers 
;__1310720016              Allocated to registers 
;__1310720017              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720020              Allocated to registers 
;map_address               Allocated to registers 
;__1310720022              Allocated to registers 
;__1310720023              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720035              Allocated to registers 
;addr                      Allocated to registers 
;__1310720019              Allocated to registers 
;map_address               Allocated to registers 
;__1310720016              Allocated to registers 
;__1310720017              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720020              Allocated to registers 
;map_address               Allocated to registers 
;__1310720022              Allocated to registers 
;__1310720023              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720038              Allocated to registers 
;addr                      Allocated to registers 
;__1310720019              Allocated to registers 
;map_address               Allocated to registers 
;__1310720016              Allocated to registers 
;__1310720017              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720020              Allocated to registers 
;map_address               Allocated to registers 
;__1310720022              Allocated to registers 
;__1310720023              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720041              Allocated to registers 
;addr                      Allocated to registers 
;__1310720019              Allocated to registers 
;map_address               Allocated to registers 
;__1310720016              Allocated to registers 
;__1310720017              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720020              Allocated to registers 
;map_address               Allocated to registers 
;__1310720022              Allocated to registers 
;__1310720023              Allocated to registers 
;addr                      Allocated to registers 
;d                         Allocated to registers 
;map_address               Allocated to registers 
;__1310720004              Allocated to registers 
;__1310720005              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;------------------------------------------------------------
;	ECEN4330Lab7.c:326: void rtcPrint(void) {
;	-----------------------------------------
;	 function rtcPrint
;	-----------------------------------------
_rtcPrint:
;	ECEN4330Lab7.c:329: xCursorHold = cursor_x;
	mov	_xCursorHold,_cursor_x
;	ECEN4330Lab7.c:330: yCursorHold = cursor_y;
	mov	_yCursorHold,_cursor_y
;	ECEN4330Lab7.c:331: textSizeHold = textsize;
	mov	_textSizeHold,_textsize
;	ECEN4330Lab7.c:333: setTextColor(GRAY, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xd6ba
	lcall	_setTextColor
;	ECEN4330Lab7.c:334: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	ECEN4330Lab7.c:335: setCursor(132, 304);
	mov	_setCursor_PARM_2,#0x30
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0084
	lcall	_setCursor
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:311: rtcBusy();
	lcall	_rtcBusy
;	ECEN4330Lab7.c:179: IOM = 1;                            
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:180: data = *map_address;
	mov	dptr,#0x0005
	movx	a,@dptr
	mov	_data,a
;	ECEN4330Lab7.c:181: IOM = 0;    
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:182: return data;   
;	ECEN4330Lab7.c:314: data = (data & 0x0F) | 0x30; // ascii the lower word
	mov	a,_data
	anl	a,#0x0f
	orl	a,#0x30
	mov	_data,a
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:316: return data;
	mov	dpl,_data
;	ECEN4330Lab7.c:338: write(t);
	lcall	_write
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:311: rtcBusy();
	lcall	_rtcBusy
;	ECEN4330Lab7.c:179: IOM = 1;                            
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:180: data = *map_address;
	mov	dptr,#0x0004
	movx	a,@dptr
	mov	_data,a
;	ECEN4330Lab7.c:181: IOM = 0;    
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:182: return data;   
;	ECEN4330Lab7.c:314: data = (data & 0x0F) | 0x30; // ascii the lower word
	mov	a,_data
	anl	a,#0x0f
	orl	a,#0x30
	mov	_data,a
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:316: return data;
	mov	dpl,_data
;	ECEN4330Lab7.c:340: write(t);
	lcall	_write
;	ECEN4330Lab7.c:341: LCD_string_write(":");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:311: rtcBusy();
	lcall	_rtcBusy
;	ECEN4330Lab7.c:179: IOM = 1;                            
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:180: data = *map_address;
	mov	dptr,#0x0003
	movx	a,@dptr
	mov	_data,a
;	ECEN4330Lab7.c:181: IOM = 0;    
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:182: return data;   
;	ECEN4330Lab7.c:314: data = (data & 0x0F) | 0x30; // ascii the lower word
	mov	a,_data
	anl	a,#0x0f
	orl	a,#0x30
	mov	_data,a
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:316: return data;
	mov	dpl,_data
;	ECEN4330Lab7.c:343: write(t);
	lcall	_write
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:311: rtcBusy();
	lcall	_rtcBusy
;	ECEN4330Lab7.c:179: IOM = 1;                            
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:180: data = *map_address;
	mov	dptr,#0x0002
	movx	a,@dptr
	mov	_data,a
;	ECEN4330Lab7.c:181: IOM = 0;    
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:182: return data;   
;	ECEN4330Lab7.c:314: data = (data & 0x0F) | 0x30; // ascii the lower word
	mov	a,_data
	anl	a,#0x0f
	orl	a,#0x30
	mov	_data,a
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:316: return data;
	mov	dpl,_data
;	ECEN4330Lab7.c:345: write(t);
	lcall	_write
;	ECEN4330Lab7.c:346: LCD_string_write(":");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:311: rtcBusy();
	lcall	_rtcBusy
;	ECEN4330Lab7.c:179: IOM = 1;                            
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:180: data = *map_address;
	mov	dptr,#0x0001
	movx	a,@dptr
	mov	_data,a
;	ECEN4330Lab7.c:181: IOM = 0;    
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:182: return data;   
;	ECEN4330Lab7.c:314: data = (data & 0x0F) | 0x30; // ascii the lower word
	mov	a,_data
	anl	a,#0x0f
	orl	a,#0x30
	mov	_data,a
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:316: return data;
	mov	dpl,_data
;	ECEN4330Lab7.c:348: write(t);
	lcall	_write
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dptr,#0x000d
	mov	a,#0x01
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:311: rtcBusy();
	lcall	_rtcBusy
;	ECEN4330Lab7.c:179: IOM = 1;                            
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:180: data = *map_address;
	mov	dptr,#0x0000
	movx	a,@dptr
	mov	_data,a
;	ECEN4330Lab7.c:181: IOM = 0;    
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:182: return data;   
;	ECEN4330Lab7.c:314: data = (data & 0x0F) | 0x30; // ascii the lower word
	mov	a,_data
	anl	a,#0x0f
	orl	a,#0x30
	mov	_data,a
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	dptr,#0x000d
	clr	a
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:316: return data;
	mov	dpl,_data
;	ECEN4330Lab7.c:350: write(t);
	lcall	_write
;	ECEN4330Lab7.c:352: cursor_x = xCursorHold;
	mov	_cursor_x,_xCursorHold
	mov	(_cursor_x + 1),#0x00
;	ECEN4330Lab7.c:353: cursor_y = yCursorHold;
	mov	_cursor_y,_yCursorHold
	mov	(_cursor_y + 1),#0x00
;	ECEN4330Lab7.c:354: textsize = textSizeHold;
	mov	_textsize,_textSizeHold
;	ECEN4330Lab7.c:355: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setCursor'
;------------------------------------------------------------
;y                         Allocated with name '_setCursor_PARM_2'
;x                         Allocated to registers 
;------------------------------------------------------------
;	ECEN4330Lab7.c:375: void setCursor(u16 x, u16 y){
;	-----------------------------------------
;	 function setCursor
;	-----------------------------------------
_setCursor:
	mov	_cursor_x,dpl
	mov	(_cursor_x + 1),dph
;	ECEN4330Lab7.c:377: cursor_y = y;
	mov	_cursor_y,_setCursor_PARM_2
	mov	(_cursor_y + 1),(_setCursor_PARM_2 + 1)
;	ECEN4330Lab7.c:378: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setTextColor'
;------------------------------------------------------------
;y                         Allocated with name '_setTextColor_PARM_2'
;x                         Allocated to registers 
;------------------------------------------------------------
;	ECEN4330Lab7.c:386: void setTextColor(u16 x, u16 y){
;	-----------------------------------------
;	 function setTextColor
;	-----------------------------------------
_setTextColor:
	mov	_textcolor,dpl
	mov	(_textcolor + 1),dph
;	ECEN4330Lab7.c:388: textbgcolor = y;
	mov	_textbgcolor,_setTextColor_PARM_2
	mov	(_textbgcolor + 1),(_setTextColor_PARM_2 + 1)
;	ECEN4330Lab7.c:389: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setTextSize'
;------------------------------------------------------------
;s                         Allocated to registers r7 
;------------------------------------------------------------
;	ECEN4330Lab7.c:397: void setTextSize(u8 s){
;	-----------------------------------------
;	 function setTextSize
;	-----------------------------------------
_setTextSize:
;	ECEN4330Lab7.c:398: if (s > 8) return;
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x08
	jnc	00102$
	ret
00102$:
;	ECEN4330Lab7.c:399: textsize = (s>0) ? s : 1 ;
	mov	a,r7
	jz	00105$
	mov	ar6,r7
	mov	r7,#0x00
	sjmp	00106$
00105$:
	mov	r6,#0x01
	mov	r7,#0x00
00106$:
	mov	_textsize,r6
;	ECEN4330Lab7.c:400: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setRotation'
;------------------------------------------------------------
;flag                      Allocated to registers r7 
;------------------------------------------------------------
;	ECEN4330Lab7.c:408: void setRotation(u8 flag){
;	-----------------------------------------
;	 function setRotation
;	-----------------------------------------
_setRotation:
;	ECEN4330Lab7.c:409: switch(flag) {
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x03
	jc	00105$
	mov	a,r7
	add	a,r7
;	ECEN4330Lab7.c:410: case 0:
	mov	dptr,#00115$
	jmp	@a+dptr
00115$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	ECEN4330Lab7.c:411: flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_BGR);
	mov	r7,#0x48
;	ECEN4330Lab7.c:412: _width = TFTWIDTH;
	mov	__width,#0xf0
	mov	(__width + 1),#0x00
;	ECEN4330Lab7.c:413: _height = TFTHEIGHT;
	mov	__height,#0x40
	mov	(__height + 1),#0x01
;	ECEN4330Lab7.c:414: break;
;	ECEN4330Lab7.c:415: case 1:
	sjmp	00106$
00102$:
;	ECEN4330Lab7.c:416: flag = (ILI9341_MADCTL_MV | ILI9341_MADCTL_BGR);
	mov	r7,#0x28
;	ECEN4330Lab7.c:417: _width = TFTHEIGHT;
	mov	__width,#0x40
	mov	(__width + 1),#0x01
;	ECEN4330Lab7.c:418: _height = TFTWIDTH;
	mov	__height,#0xf0
	mov	(__height + 1),#0x00
;	ECEN4330Lab7.c:419: break;
;	ECEN4330Lab7.c:420: case 2:
	sjmp	00106$
00103$:
;	ECEN4330Lab7.c:421: flag = (ILI9341_MADCTL_MY | ILI9341_MADCTL_BGR);
	mov	r7,#0x88
;	ECEN4330Lab7.c:422: _width = TFTWIDTH;
	mov	__width,#0xf0
	mov	(__width + 1),#0x00
;	ECEN4330Lab7.c:423: _height = TFTHEIGHT;
	mov	__height,#0x40
	mov	(__height + 1),#0x01
;	ECEN4330Lab7.c:424: break;
;	ECEN4330Lab7.c:425: case 3:
	sjmp	00106$
00104$:
;	ECEN4330Lab7.c:426: flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_MY | ILI9341_MADCTL_MV | ILI9341_MADCTL_BGR);
	mov	r7,#0xe8
;	ECEN4330Lab7.c:427: _width = TFTHEIGHT;
	mov	__width,#0x40
	mov	(__width + 1),#0x01
;	ECEN4330Lab7.c:428: _height = TFTWIDTH;
	mov	__height,#0xf0
	mov	(__height + 1),#0x00
;	ECEN4330Lab7.c:429: break;
;	ECEN4330Lab7.c:430: default:
	sjmp	00106$
00105$:
;	ECEN4330Lab7.c:431: flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_BGR);
	mov	r7,#0x48
;	ECEN4330Lab7.c:432: _width = TFTWIDTH;
	mov	__width,#0xf0
	mov	(__width + 1),#0x00
;	ECEN4330Lab7.c:433: _height = TFTHEIGHT;
	mov	__height,#0x40
	mov	(__height + 1),#0x01
;	ECEN4330Lab7.c:435: }
00106$:
;	ECEN4330Lab7.c:436: writeRegister8(ILI9341_MEMCONTROL, flag);
	mov	_writeRegister8_PARM_2,r7
	mov	dpl,#0x36
;	ECEN4330Lab7.c:437: }
	ljmp	_writeRegister8
;------------------------------------------------------------
;Allocation info for local variables in function 'setAddress'
;------------------------------------------------------------
;y1                        Allocated with name '_setAddress_PARM_2'
;x2                        Allocated with name '_setAddress_PARM_3'
;y2                        Allocated with name '_setAddress_PARM_4'
;x1                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	ECEN4330Lab7.c:446: void setAddress(unsigned int x1,unsigned int y1,unsigned int x2,unsigned int y2){
;	-----------------------------------------
;	 function setAddress
;	-----------------------------------------
_setAddress:
	mov	r6,dpl
	mov	r7,dph
;	ECEN4330Lab7.c:447: write8Reg(0x2A);
;	assignBit
	clr	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x2a
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:448: write8Data(x1 >> 8);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	ar5,r7
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:449: write8Data(x1);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:450: write8Data(x2 >> 8);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,(_setAddress_PARM_3 + 1)
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:451: write8Data(x2);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_setAddress_PARM_3
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:452: write8Reg(0x2B);
;	assignBit
	clr	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x2b
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:453: write8Data(y1 >> 8);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,(_setAddress_PARM_2 + 1)
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:454: write8Data(y1);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_setAddress_PARM_2
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:455: write8Data(y2 >> 8);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,(_setAddress_PARM_4 + 1)
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:456: write8Data(y2);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_setAddress_PARM_4
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:457: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TFT_LCD_INIT'
;------------------------------------------------------------
;	ECEN4330Lab7.c:465: void TFT_LCD_INIT(void){
;	-----------------------------------------
;	 function TFT_LCD_INIT
;	-----------------------------------------
_TFT_LCD_INIT:
;	ECEN4330Lab7.c:466: _width = TFTWIDTH;
	mov	__width,#0xf0
	mov	(__width + 1),#0x00
;	ECEN4330Lab7.c:467: _height = TFTHEIGHT;
	mov	__height,#0x40
	mov	(__height + 1),#0x01
;	ECEN4330Lab7.c:469: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:470: CD = 1;
;	assignBit
	setb	_P3_5
;	ECEN4330Lab7.c:472: write8Reg(0x00);
;	assignBit
	clr	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	clr	a
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:473: write8Data(0x00);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	clr	a
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:474: write8Data(0x00);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	clr	a
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:475: write8Data(0x00);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	clr	a
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:476: delay(200);
	mov	dptr,#0x00c8
	lcall	_delay
;	ECEN4330Lab7.c:478: writeRegister8(ILI9341_SOFTRESET, 0);
	mov	_writeRegister8_PARM_2,#0x00
	mov	dpl,#0x01
	lcall	_writeRegister8
;	ECEN4330Lab7.c:479: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	ECEN4330Lab7.c:481: writeRegister8(ILI9341_DISPLAYOFF, 0);
	mov	_writeRegister8_PARM_2,#0x00
	mov	dpl,#0x28
	lcall	_writeRegister8
;	ECEN4330Lab7.c:482: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
;	ECEN4330Lab7.c:484: writeRegister8(ILI9341_POWERCONTROL1, 0x23);
	mov	_writeRegister8_PARM_2,#0x23
	mov	dpl,#0xc0
	lcall	_writeRegister8
;	ECEN4330Lab7.c:485: writeRegister8(ILI9341_POWERCONTROL2, 0x11);
	mov	_writeRegister8_PARM_2,#0x11
	mov	dpl,#0xc1
	lcall	_writeRegister8
;	ECEN4330Lab7.c:486: write8Reg(ILI9341_VCOMCONTROL1);
;	assignBit
	clr	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0xc5
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:487: write8Data(0x3d);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x3d
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:488: write8Data(0x30);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x30
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:489: writeRegister8(ILI9341_VCOMCONTROL2, 0xaa);
	mov	_writeRegister8_PARM_2,#0xaa
	mov	dpl,#0xc7
	lcall	_writeRegister8
;	ECEN4330Lab7.c:490: writeRegister8(ILI9341_MEMCONTROL, ILI9341_MADCTL_MY | ILI9341_MADCTL_BGR);
	mov	_writeRegister8_PARM_2,#0x88
	mov	dpl,#0x36
	lcall	_writeRegister8
;	ECEN4330Lab7.c:491: write8Reg(ILI9341_PIXELFORMAT);
;	assignBit
	clr	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x3a
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:492: write8Data(0x55);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x55
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:493: write8Data(0x00);
;	assignBit
	setb	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	clr	a
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:494: writeRegister16(ILI9341_FRAMECONTROL, 0x001B);
	mov	_writeRegister16_PARM_2,#0x1b
	mov	(_writeRegister16_PARM_2 + 1),#0x00
	mov	dptr,#0x00b1
	lcall	_writeRegister16
;	ECEN4330Lab7.c:495: writeRegister8(ILI9341_ENTRYMODE, 0x07);
	mov	_writeRegister8_PARM_2,#0x07
	mov	dpl,#0xb7
	lcall	_writeRegister8
;	ECEN4330Lab7.c:496: writeRegister8(ILI9341_SLEEPOUT, 0);
	mov	_writeRegister8_PARM_2,#0x00
	mov	dpl,#0x11
	lcall	_writeRegister8
;	ECEN4330Lab7.c:497: delay(150);
	mov	dptr,#0x0096
	lcall	_delay
;	ECEN4330Lab7.c:499: writeRegister8(ILI9341_DISPLAYON, 0);
	mov	_writeRegister8_PARM_2,#0x00
	mov	dpl,#0x29
	lcall	_writeRegister8
;	ECEN4330Lab7.c:500: delay(500);
	mov	dptr,#0x01f4
	lcall	_delay
;	ECEN4330Lab7.c:502: setAddress(0,0,_width-1,_height-1);
	mov	a,__width
	add	a,#0xff
	mov	_setAddress_PARM_3,a
	mov	a,(__width + 1)
	addc	a,#0xff
	mov	(_setAddress_PARM_3 + 1),a
	mov	a,__height
	add	a,#0xff
	mov	_setAddress_PARM_4,a
	mov	a,(__height + 1)
	addc	a,#0xff
	mov	(_setAddress_PARM_4 + 1),a
	clr	a
	mov	_setAddress_PARM_2,a
	mov	(_setAddress_PARM_2 + 1),a
	mov	dptr,#0x0000
;	ECEN4330Lab7.c:503: }
	ljmp	_setAddress
;------------------------------------------------------------
;Allocation info for local variables in function 'drawPixel'
;------------------------------------------------------------
;y3                        Allocated with name '_drawPixel_PARM_2'
;color1                    Allocated with name '_drawPixel_PARM_3'
;x3                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	ECEN4330Lab7.c:511: void drawPixel(u16 x3,u16 y3,u16 color1)
;	-----------------------------------------
;	 function drawPixel
;	-----------------------------------------
_drawPixel:
	mov	r6,dpl
	mov	r7,dph
;	ECEN4330Lab7.c:513: setAddress(x3,y3,x3+1,y3+1);
	mov	a,#0x01
	add	a,r6
	mov	_setAddress_PARM_3,a
	clr	a
	addc	a,r7
	mov	(_setAddress_PARM_3 + 1),a
	mov	a,#0x01
	add	a,_drawPixel_PARM_2
	mov	_setAddress_PARM_4,a
	clr	a
	addc	a,(_drawPixel_PARM_2 + 1)
	mov	(_setAddress_PARM_4 + 1),a
	mov	_setAddress_PARM_2,_drawPixel_PARM_2
	mov	(_setAddress_PARM_2 + 1),(_drawPixel_PARM_2 + 1)
	mov	dpl,r6
	mov	dph,r7
	lcall	_setAddress
;	ECEN4330Lab7.c:514: CD=0; 
;	assignBit
	clr	_P3_5
;	ECEN4330Lab7.c:515: write8(0x2C);
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x2c
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:516: CD = 1;
;	assignBit
	setb	_P3_5
;	ECEN4330Lab7.c:517: write8(color1>>8);
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,(_drawPixel_PARM_3 + 1)
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:518: write8(color1);
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_drawPixel_PARM_3
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:519: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fillRect'
;------------------------------------------------------------
;y                         Allocated with name '_fillRect_PARM_2'
;w                         Allocated with name '_fillRect_PARM_3'
;h                         Allocated with name '_fillRect_PARM_4'
;color                     Allocated with name '_fillRect_PARM_5'
;x                         Allocated to registers 
;------------------------------------------------------------
;	ECEN4330Lab7.c:527: void fillRect(u16 x,u16 y,u16 w,u16 h,u16 color){
;	-----------------------------------------
;	 function fillRect
;	-----------------------------------------
_fillRect:
	mov	r6,dpl
	mov	r7,dph
;	ECEN4330Lab7.c:528: if ((x >= TFTWIDTH) || (y >= TFTHEIGHT))
	clr	c
	mov	a,r6
	subb	a,#0xf0
	mov	a,r7
	subb	a,#0x00
	jnc	00101$
	clr	c
	mov	a,_fillRect_PARM_2
	subb	a,#0x40
	mov	a,(_fillRect_PARM_2 + 1)
	subb	a,#0x01
	jc	00102$
00101$:
;	ECEN4330Lab7.c:530: return;
	ret
00102$:
;	ECEN4330Lab7.c:533: if ((x+w-1) >= TFTWIDTH)
	mov	a,_fillRect_PARM_3
	add	a,r6
	mov	r4,a
	mov	a,(_fillRect_PARM_3 + 1)
	addc	a,r7
	mov	r5,a
	dec	r4
	cjne	r4,#0xff,00161$
	dec	r5
00161$:
	clr	c
	mov	a,r4
	subb	a,#0xf0
	mov	a,r5
	subb	a,#0x00
	jc	00105$
;	ECEN4330Lab7.c:535: w = TFTWIDTH-x;
	mov	a,#0xf0
	clr	c
	subb	a,r6
	mov	_fillRect_PARM_3,a
	clr	a
	subb	a,r7
	mov	(_fillRect_PARM_3 + 1),a
00105$:
;	ECEN4330Lab7.c:538: if ((y+h-1) >= TFTHEIGHT)
	mov	a,_fillRect_PARM_4
	add	a,_fillRect_PARM_2
	mov	r4,a
	mov	a,(_fillRect_PARM_4 + 1)
	addc	a,(_fillRect_PARM_2 + 1)
	mov	r5,a
	dec	r4
	cjne	r4,#0xff,00163$
	dec	r5
00163$:
	clr	c
	mov	a,r4
	subb	a,#0x40
	mov	a,r5
	subb	a,#0x01
	jc	00107$
;	ECEN4330Lab7.c:540: h = TFTHEIGHT-y;
	mov	a,#0x40
	clr	c
	subb	a,_fillRect_PARM_2
	mov	_fillRect_PARM_4,a
	mov	a,#0x01
	subb	a,(_fillRect_PARM_2 + 1)
	mov	(_fillRect_PARM_4 + 1),a
00107$:
;	ECEN4330Lab7.c:543: setAddress(x, y, x+w-1, y+h-1);
	mov	a,_fillRect_PARM_3
	add	a,r6
	mov	r4,a
	mov	a,(_fillRect_PARM_3 + 1)
	addc	a,r7
	mov	r5,a
	mov	a,r4
	add	a,#0xff
	mov	_setAddress_PARM_3,a
	mov	a,r5
	addc	a,#0xff
	mov	(_setAddress_PARM_3 + 1),a
	mov	a,_fillRect_PARM_4
	add	a,_fillRect_PARM_2
	mov	r4,a
	mov	a,(_fillRect_PARM_4 + 1)
	addc	a,(_fillRect_PARM_2 + 1)
	mov	r5,a
	mov	a,r4
	add	a,#0xff
	mov	_setAddress_PARM_4,a
	mov	a,r5
	addc	a,#0xff
	mov	(_setAddress_PARM_4 + 1),a
	mov	_setAddress_PARM_2,_fillRect_PARM_2
	mov	(_setAddress_PARM_2 + 1),(_fillRect_PARM_2 + 1)
	mov	dpl,r6
	mov	dph,r7
	lcall	_setAddress
;	ECEN4330Lab7.c:544: write8Reg(0x2C);
;	assignBit
	clr	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x2c
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:545: CD = 1;
;	assignBit
	setb	_P3_5
;	ECEN4330Lab7.c:546: for(y=h; y>0; y--)
	mov	r7,(_fillRect_PARM_5 + 1)
	mov	r5,_fillRect_PARM_4
	mov	r6,(_fillRect_PARM_4 + 1)
00114$:
	mov	a,r5
	orl	a,r6
	jz	00116$
;	ECEN4330Lab7.c:548: for(x=w; x>0; x--)
	mov	r3,_fillRect_PARM_3
	mov	r4,(_fillRect_PARM_3 + 1)
00111$:
	mov	a,r3
	orl	a,r4
	jz	00115$
;	ECEN4330Lab7.c:550: write8(color>>8); 
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r7
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:551: write8(color);
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,_fillRect_PARM_5
	mov	r2,a
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:548: for(x=w; x>0; x--)
	dec	r3
	cjne	r3,#0xff,00167$
	dec	r4
00167$:
	sjmp	00111$
00115$:
;	ECEN4330Lab7.c:546: for(y=h; y>0; y--)
	dec	r5
	cjne	r5,#0xff,00168$
	dec	r6
00168$:
	sjmp	00114$
00116$:
;	ECEN4330Lab7.c:554: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fillScreen'
;------------------------------------------------------------
;Color                     Allocated to registers r6 r7 
;len                       Allocated to registers 
;blocks                    Allocated to registers r4 r7 
;i                         Allocated to registers r3 
;hi                        Allocated to registers r5 
;lo                        Allocated to registers r6 
;------------------------------------------------------------
;	ECEN4330Lab7.c:562: void fillScreen(unsigned int Color){
;	-----------------------------------------
;	 function fillScreen
;	-----------------------------------------
_fillScreen:
	mov	r6,dpl
	mov	r7,dph
;	ECEN4330Lab7.c:565: unsigned char  i, hi = Color >> 8, lo = Color;
	mov	ar5,r7
;	ECEN4330Lab7.c:568: setAddress(0,0,TFTWIDTH-1,TFTHEIGHT-1);
	clr	a
	mov	_setAddress_PARM_2,a
	mov	(_setAddress_PARM_2 + 1),a
	mov	_setAddress_PARM_3,#0xef
;	1-genFromRTrack replaced	mov	(_setAddress_PARM_3 + 1),#0x00
	mov	(_setAddress_PARM_3 + 1),a
	mov	_setAddress_PARM_4,#0x3f
	mov	(_setAddress_PARM_4 + 1),#0x01
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	lcall	_setAddress
	pop	ar5
	pop	ar6
;	ECEN4330Lab7.c:569: write8Reg(0x2C);
;	assignBit
	clr	_P3_5
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,#0x2c
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:570: CD = 1;
;	assignBit
	setb	_P3_5
;	ECEN4330Lab7.c:571: write8(hi); 
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:572: write8(lo);
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:574: while(blocks--) {
	mov	r4,#0xb0
	mov	r7,#0x04
00104$:
	mov	ar2,r4
	mov	ar3,r7
	dec	r4
	cjne	r4,#0xff,00140$
	dec	r7
00140$:
	mov	a,r2
	orl	a,r3
	jz	00106$
;	ECEN4330Lab7.c:576: do {
	mov	r3,#0x10
00101$:
;	ECEN4330Lab7.c:577: write8(hi); write8(lo);write8(hi); write8(lo);
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:578: write8(hi); write8(lo);write8(hi); write8(lo);
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:579: } while(--i);
	djnz	r3,00101$
	sjmp	00104$
00106$:
;	ECEN4330Lab7.c:581: for(i = (char)len & 63; i--; ) {
	mov	r7,#0x3f
00109$:
	mov	ar4,r7
	dec	r7
	mov	a,r4
	jz	00111$
;	ECEN4330Lab7.c:582: write8(hi); 
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r5
	movx	@dptr,a
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:583: write8(lo);
;	assignBit
	setb	_P3_4
	mov	dpl,_lcd_address
	mov	dph,(_lcd_address + 1)
	mov	a,r6
	movx	@dptr,a
;	assignBit
	clr	_P3_4
	sjmp	00109$
00111$:
;	ECEN4330Lab7.c:585: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'drawChar'
;------------------------------------------------------------
;y                         Allocated with name '_drawChar_PARM_2'
;c                         Allocated with name '_drawChar_PARM_3'
;color                     Allocated with name '_drawChar_PARM_4'
;bg                        Allocated with name '_drawChar_PARM_5'
;size                      Allocated with name '_drawChar_PARM_6'
;x                         Allocated with name '_drawChar_x_65536_311'
;i                         Allocated to registers r3 
;line                      Allocated with name '_drawChar_line_196608_315'
;j                         Allocated to registers r2 
;sloc1                     Allocated with name '_drawChar_sloc1_1_0'
;------------------------------------------------------------
;	ECEN4330Lab7.c:593: void drawChar(int x, int y, unsigned char c,u16 color, u16 bg, u8 size){
;	-----------------------------------------
;	 function drawChar
;	-----------------------------------------
_drawChar:
	mov	_drawChar_x_65536_311,dpl
	mov	(_drawChar_x_65536_311 + 1),dph
;	ECEN4330Lab7.c:594: if ((x >=TFTWIDTH) || // Clip right
	clr	c
	mov	a,_drawChar_x_65536_311
	subb	a,#0xf0
	mov	a,(_drawChar_x_65536_311 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	ECEN4330Lab7.c:595: (y >=TFTHEIGHT)           || // Clip bottom
	clr	c
	mov	a,_drawChar_PARM_2
	subb	a,#0x40
	mov	a,(_drawChar_PARM_2 + 1)
	xrl	a,#0x80
	subb	a,#0x81
	jnc	00101$
;	ECEN4330Lab7.c:596: ((x + 6 * size - 1) < 0) || // Clip left
	mov	r4,_drawChar_PARM_6
	mov	r5,#0x00
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x0006
	push	ar5
	push	ar4
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,_drawChar_x_65536_311
	mov	r2,a
	mov	a,r3
	addc	a,(_drawChar_x_65536_311 + 1)
	mov	r3,a
	dec	r2
	cjne	r2,#0xff,00182$
	dec	r3
00182$:
	mov	a,r3
	jb	acc.7,00101$
;	ECEN4330Lab7.c:597: ((y + 8 * size - 1) < 0))   // Clip top
	mov	a,r5
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf8
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r4
	add	a,_drawChar_PARM_2
	mov	r4,a
	mov	a,r5
	addc	a,(_drawChar_PARM_2 + 1)
	mov	r5,a
	dec	r4
	cjne	r4,#0xff,00184$
	dec	r5
00184$:
	mov	a,r5
	jnb	acc.7,00141$
00101$:
;	ECEN4330Lab7.c:599: return;
	ret
;	ECEN4330Lab7.c:602: for (char i=0; i<6; i++ )
00141$:
	mov	a,#0x01
	cjne	a,_drawChar_PARM_6,00186$
	mov	a,#0x01
	sjmp	00187$
00186$:
	clr	a
00187$:
	mov	r5,a
	mov	r4,a
	mov	a,_drawChar_PARM_4
	cjne	a,_drawChar_PARM_5,00188$
	mov	a,(_drawChar_PARM_4 + 1)
	cjne	a,(_drawChar_PARM_5 + 1),00188$
	setb	c
	sjmp	00189$
00188$:
	clr	c
00189$:
	mov	_drawChar_sloc0_1_0,c
	mov	r3,#0x00
00126$:
	cjne	r3,#0x06,00190$
00190$:
	jc	00191$
	ret
00191$:
;	ECEN4330Lab7.c:606: if (i == 5)
	cjne	r3,#0x05,00107$
;	ECEN4330Lab7.c:608: line = 0x0;
	mov	_drawChar_line_196608_315,#0x00
	sjmp	00140$
00107$:
;	ECEN4330Lab7.c:612: line = pgm_read_byte(font+(c*5)+i);
	mov	__mulint_PARM_2,_drawChar_PARM_3
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0005
	push	ar5
	push	ar4
	push	ar3
	lcall	__mulint
	mov	r0,dpl
	mov	r1,dph
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r0
	add	a,#_font
	mov	r0,a
	mov	a,r1
	addc	a,#(_font >> 8)
	mov	r1,a
	mov	a,r3
	add	a,r0
	mov	dpl,a
	clr	a
	addc	a,r1
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_drawChar_line_196608_315,a
;	ECEN4330Lab7.c:615: for (char j = 0; j<8; j++)
00140$:
	mov	b,r3
	mov	a,_drawChar_PARM_6
	mul	ab
	add	a,_drawChar_x_65536_311
	mov	r0,a
	mov	a,(_drawChar_x_65536_311 + 1)
	addc	a,b
	mov	r1,a
	mov	_drawChar_sloc1_1_0,r0
	mov	(_drawChar_sloc1_1_0 + 1),r1
	mov	r2,#0x00
00123$:
	cjne	r2,#0x08,00194$
00194$:
	jc	00195$
	ljmp	00127$
00195$:
;	ECEN4330Lab7.c:617: if (line & 0x1)
	mov	a,_drawChar_line_196608_315
	jb	acc.0,00196$
	ljmp	00118$
00196$:
;	ECEN4330Lab7.c:619: if (size == 1) // default size
	mov	a,r5
	jz	00110$
;	ECEN4330Lab7.c:621: drawPixel(x+i, y+j, color);
	mov	ar6,r3
	mov	r7,#0x00
	mov	a,r6
	add	a,_drawChar_x_65536_311
	mov	dpl,a
	mov	a,r7
	addc	a,(_drawChar_x_65536_311 + 1)
	mov	dph,a
	mov	ar6,r2
	mov	r7,#0x00
	mov	a,r6
	add	a,_drawChar_PARM_2
	mov	_drawPixel_PARM_2,a
	mov	a,r7
	addc	a,(_drawChar_PARM_2 + 1)
	mov	(_drawPixel_PARM_2 + 1),a
	mov	_drawPixel_PARM_3,_drawChar_PARM_4
	mov	(_drawPixel_PARM_3 + 1),(_drawChar_PARM_4 + 1)
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	ljmp	00119$
00110$:
;	ECEN4330Lab7.c:624: fillRect(x+(i*size), y+(j*size), size, size, color);
	mov	b,r2
	mov	a,_drawChar_PARM_6
	mul	ab
	add	a,_drawChar_PARM_2
	mov	_fillRect_PARM_2,a
	mov	a,(_drawChar_PARM_2 + 1)
	addc	a,b
	mov	(_fillRect_PARM_2 + 1),a
	mov	r6,_drawChar_PARM_6
	mov	r7,#0x00
	mov	_fillRect_PARM_3,r6
	mov	(_fillRect_PARM_3 + 1),r7
	mov	_fillRect_PARM_4,r6
	mov	(_fillRect_PARM_4 + 1),r7
	mov	_fillRect_PARM_5,_drawChar_PARM_4
	mov	(_fillRect_PARM_5 + 1),(_drawChar_PARM_4 + 1)
	mov	dpl,_drawChar_sloc1_1_0
	mov	dph,(_drawChar_sloc1_1_0 + 1)
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_fillRect
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	ljmp	00119$
00118$:
;	ECEN4330Lab7.c:626: } else if (bg != color)
	jnb	_drawChar_sloc0_1_0,00198$
	ljmp	00119$
00198$:
;	ECEN4330Lab7.c:628: if (size == 1) // default size
	mov	a,r4
	jz	00113$
;	ECEN4330Lab7.c:630: drawPixel(x+i, y+j, bg);
	mov	ar6,r3
	mov	r7,#0x00
	mov	a,r6
	add	a,_drawChar_x_65536_311
	mov	dpl,a
	mov	a,r7
	addc	a,(_drawChar_x_65536_311 + 1)
	mov	dph,a
	mov	ar6,r2
	mov	r7,#0x00
	mov	a,r6
	add	a,_drawChar_PARM_2
	mov	_drawPixel_PARM_2,a
	mov	a,r7
	addc	a,(_drawChar_PARM_2 + 1)
	mov	(_drawPixel_PARM_2 + 1),a
	mov	_drawPixel_PARM_3,_drawChar_PARM_5
	mov	(_drawPixel_PARM_3 + 1),(_drawChar_PARM_5 + 1)
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_drawPixel
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	sjmp	00119$
00113$:
;	ECEN4330Lab7.c:634: fillRect(x+i*size, y+j*size, size, size, bg);
	mov	b,r2
	mov	a,_drawChar_PARM_6
	mul	ab
	add	a,_drawChar_PARM_2
	mov	_fillRect_PARM_2,a
	mov	a,(_drawChar_PARM_2 + 1)
	addc	a,b
	mov	(_fillRect_PARM_2 + 1),a
	mov	r6,_drawChar_PARM_6
	mov	r7,#0x00
	mov	_fillRect_PARM_3,r6
	mov	(_fillRect_PARM_3 + 1),r7
	mov	_fillRect_PARM_4,r6
	mov	(_fillRect_PARM_4 + 1),r7
	mov	_fillRect_PARM_5,_drawChar_PARM_5
	mov	(_fillRect_PARM_5 + 1),(_drawChar_PARM_5 + 1)
	mov	dpl,r0
	mov	dph,r1
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_fillRect
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
00119$:
;	ECEN4330Lab7.c:638: line >>= 1;
	mov	a,_drawChar_line_196608_315
	clr	c
	rrc	a
	mov	_drawChar_line_196608_315,a
;	ECEN4330Lab7.c:615: for (char j = 0; j<8; j++)
	inc	r2
	ljmp	00123$
00127$:
;	ECEN4330Lab7.c:602: for (char i=0; i<6; i++ )
	inc	r3
;	ECEN4330Lab7.c:642: }
	ljmp	00126$
;------------------------------------------------------------
;Allocation info for local variables in function 'write'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	ECEN4330Lab7.c:650: void write(u8 c)
;	-----------------------------------------
;	 function write
;	-----------------------------------------
_write:
	mov	r7,dpl
;	ECEN4330Lab7.c:652: if (c == '\n')
	cjne	r7,#0x0a,00105$
;	ECEN4330Lab7.c:654: cursor_y += textsize*8;
	mov	r5,_textsize
	clr	a
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r5
	swap	a
	rr	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf8
	xch	a,r5
	xrl	a,r5
	mov	r6,a
	mov	a,r5
	add	a,_cursor_y
	mov	_cursor_y,a
	mov	a,r6
	addc	a,(_cursor_y + 1)
	mov	(_cursor_y + 1),a
;	ECEN4330Lab7.c:655: cursor_x  = 0;
	clr	a
	mov	_cursor_x,a
	mov	(_cursor_x + 1),a
	ret
00105$:
;	ECEN4330Lab7.c:657: else if (c == '\r')
	cjne	r7,#0x0d,00119$
	ret
00119$:
;	ECEN4330Lab7.c:663: drawChar(cursor_x, cursor_y, c, textcolor, textbgcolor, textsize);
	mov	_drawChar_PARM_2,_cursor_y
	mov	(_drawChar_PARM_2 + 1),(_cursor_y + 1)
	mov	_drawChar_PARM_3,r7
	mov	_drawChar_PARM_4,_textcolor
	mov	(_drawChar_PARM_4 + 1),(_textcolor + 1)
	mov	_drawChar_PARM_5,_textbgcolor
	mov	(_drawChar_PARM_5 + 1),(_textbgcolor + 1)
	mov	_drawChar_PARM_6,_textsize
	mov	dpl,_cursor_x
	mov	dph,(_cursor_x + 1)
	lcall	_drawChar
;	ECEN4330Lab7.c:664: cursor_x += textsize*6;
	mov	__mulint_PARM_2,_textsize
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0006
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,_cursor_x
	mov	_cursor_x,a
	mov	a,r7
	addc	a,(_cursor_x + 1)
	mov	(_cursor_x + 1),a
;	ECEN4330Lab7.c:666: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_string_write'
;------------------------------------------------------------
;str                       Allocated to registers r5 r6 r7 
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	ECEN4330Lab7.c:674: void LCD_string_write(char *str)
;	-----------------------------------------
;	 function LCD_string_write
;	-----------------------------------------
_LCD_string_write:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	ECEN4330Lab7.c:677: for(i=0;str[i]!=0;i++)  /* Send each char of string till the NULL */
	mov	r3,#0x00
	mov	r4,#0x00
00103$:
	mov	a,r3
	add	a,r5
	mov	r0,a
	mov	a,r4
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r2,a
	jz	00105$
;	ECEN4330Lab7.c:679: write(str[i]);  /* Call transmit data function */
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:677: for(i=0;str[i]!=0;i++)  /* Send each char of string till the NULL */
	inc	r3
	cjne	r3,#0x00,00103$
	inc	r4
	sjmp	00103$
00105$:
;	ECEN4330Lab7.c:681: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keyDetect'
;------------------------------------------------------------
;	ECEN4330Lab7.c:689: unsigned char keyDetect(){
;	-----------------------------------------
;	 function keyDetect
;	-----------------------------------------
_keyDetect:
;	ECEN4330Lab7.c:690: __KEYPAD_PORT__=0xF0;           /*set port direction as input-output*/
	mov	_P1,#0xf0
;	ECEN4330Lab7.c:691: received_flag = 0;
	mov	_received_flag,#0x00
;	ECEN4330Lab7.c:692: do
00102$:
;	ECEN4330Lab7.c:694: __KEYPAD_PORT__ = 0xF0;
	mov	_P1,#0xf0
;	ECEN4330Lab7.c:695: colloc = __KEYPAD_PORT__;
	mov	_colloc,_P1
;	ECEN4330Lab7.c:696: colloc&= 0xF0;  /* mask port for column read only */
	anl	_colloc,#0xf0
;	ECEN4330Lab7.c:697: }while(colloc != 0xF0 && received_flag == 0);     /* read status of column */
	mov	a,#0xf0
	cjne	a,_colloc,00190$
	sjmp	00106$
00190$:
	mov	a,_received_flag
	jz	00102$
;	ECEN4330Lab7.c:701: do
00106$:
;	ECEN4330Lab7.c:704: rtcPrint();
	lcall	_rtcPrint
;	ECEN4330Lab7.c:705: colloc = (__KEYPAD_PORT__ & 0xF0);  /* read status of column */
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	ECEN4330Lab7.c:706: }while(colloc == 0xF0 && received_flag == 0); /* check for any key press */
	mov	a,#0xf0
	cjne	a,_colloc,00108$
	mov	a,_received_flag
	jz	00106$
00108$:
;	ECEN4330Lab7.c:708: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	ECEN4330Lab7.c:709: colloc = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	ECEN4330Lab7.c:710: }while(colloc == 0xF0 && received_flag == 0);
	mov	a,#0xf0
	cjne	a,_colloc,00112$
	mov	a,_received_flag
	jz	00106$
00112$:
;	ECEN4330Lab7.c:712: if(received_flag == 0){
	mov	a,_received_flag
	jz	00198$
	ljmp	00134$
00198$:
;	ECEN4330Lab7.c:713: while(1)
00122$:
;	ECEN4330Lab7.c:716: __KEYPAD_PORT__= 0xFE;                                          /* check for pressed key in 1st row */
	mov	_P1,#0xfe
;	ECEN4330Lab7.c:717: colloc = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	ECEN4330Lab7.c:718: if(colloc != 0xF0)
	mov	a,#0xf0
	cjne	a,_colloc,00199$
	sjmp	00114$
00199$:
;	ECEN4330Lab7.c:720: rowloc = 0;
	mov	_rowloc,#0x00
;	ECEN4330Lab7.c:721: break;
	sjmp	00123$
00114$:
;	ECEN4330Lab7.c:724: __KEYPAD_PORT__ = 0xFD;                                 /* check for pressed key in 2nd row */
	mov	_P1,#0xfd
;	ECEN4330Lab7.c:725: colloc = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	ECEN4330Lab7.c:726: if(colloc != 0xF0)
	mov	a,#0xf0
	cjne	a,_colloc,00200$
	sjmp	00116$
00200$:
;	ECEN4330Lab7.c:728: rowloc = 1;
	mov	_rowloc,#0x01
;	ECEN4330Lab7.c:729: break;
	sjmp	00123$
00116$:
;	ECEN4330Lab7.c:732: __KEYPAD_PORT__ = 0xFB;         /* check for pressed key in 3rd row */
	mov	_P1,#0xfb
;	ECEN4330Lab7.c:733: colloc = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	ECEN4330Lab7.c:734: if(colloc != 0xF0)
	mov	a,#0xf0
	cjne	a,_colloc,00201$
	sjmp	00118$
00201$:
;	ECEN4330Lab7.c:736: rowloc = 2;
	mov	_rowloc,#0x02
;	ECEN4330Lab7.c:737: break;
	sjmp	00123$
00118$:
;	ECEN4330Lab7.c:740: __KEYPAD_PORT__ = 0xF7;         /* check for pressed key in 4th row */
	mov	_P1,#0xf7
;	ECEN4330Lab7.c:741: colloc = (__KEYPAD_PORT__ & 0xF0);
	mov	a,_P1
	anl	a,#0xf0
	mov	_colloc,a
;	ECEN4330Lab7.c:742: if(colloc != 0xF0)
	mov	a,#0xf0
	cjne	a,_colloc,00202$
	sjmp	00122$
00202$:
;	ECEN4330Lab7.c:744: rowloc = 3;
	mov	_rowloc,#0x03
;	ECEN4330Lab7.c:745: break;
00123$:
;	ECEN4330Lab7.c:749: if(colloc == 0xE0)
	mov	a,#0xe0
	cjne	a,_colloc,00131$
;	ECEN4330Lab7.c:751: return(keypad[rowloc][0]);
	mov	a,_rowloc
	mov	b,#0x04
	mul	ab
	add	a,#_keypad
	mov	dpl,a
	mov	a,#(_keypad >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	ret
00131$:
;	ECEN4330Lab7.c:753: else if(colloc == 0xD0)
	mov	a,#0xd0
	cjne	a,_colloc,00128$
;	ECEN4330Lab7.c:755: return(keypad[rowloc][1]);
	mov	a,_rowloc
	mov	b,#0x04
	mul	ab
	add	a,#_keypad
	mov	r6,a
	mov	a,#(_keypad >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	ret
00128$:
;	ECEN4330Lab7.c:757: else if(colloc == 0xB0)
	mov	a,#0xb0
	cjne	a,_colloc,00125$
;	ECEN4330Lab7.c:759: return(keypad[rowloc][2]);
	mov	a,_rowloc
	mov	b,#0x04
	mul	ab
	add	a,#_keypad
	mov	r6,a
	mov	a,#(_keypad >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	ret
00125$:
;	ECEN4330Lab7.c:763: return(keypad[rowloc][3]);
	mov	a,_rowloc
	mov	b,#0x04
	mul	ab
	add	a,#_keypad
	mov	r6,a
	mov	a,#(_keypad >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	ret
00134$:
;	ECEN4330Lab7.c:767: received_flag = 0;
	mov	_received_flag,#0x00
;	ECEN4330Lab7.c:768: return received_byte - 0x40;
	mov	a,_received_byte
	add	a,#0xc0
	mov	dpl,a
;	ECEN4330Lab7.c:770: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ASCIItoHEX'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;h                         Allocated to registers r7 
;------------------------------------------------------------
;	ECEN4330Lab7.c:778: unsigned char ASCIItoHEX(unsigned char a){
;	-----------------------------------------
;	 function ASCIItoHEX
;	-----------------------------------------
_ASCIItoHEX:
	mov	r7,dpl
;	ECEN4330Lab7.c:781: switch (a)
	cjne	r7,#0x30,00129$
00129$:
	jnc	00130$
	ljmp	00117$
00130$:
	mov	a,r7
	add	a,#0xff - 0x46
	jnc	00131$
	ljmp	00117$
00131$:
	mov	a,r7
	add	a,#0xd0
	mov	r7,a
	add	a,#(00132$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00133$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00132$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00117$
	.db	00117$
	.db	00117$
	.db	00117$
	.db	00117$
	.db	00117$
	.db	00117$
	.db	00111$
	.db	00112$
	.db	00113$
	.db	00114$
	.db	00115$
	.db	00116$
00133$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00117$>>8
	.db	00117$>>8
	.db	00117$>>8
	.db	00117$>>8
	.db	00117$>>8
	.db	00117$>>8
	.db	00117$>>8
	.db	00111$>>8
	.db	00112$>>8
	.db	00113$>>8
	.db	00114$>>8
	.db	00115$>>8
	.db	00116$>>8
;	ECEN4330Lab7.c:783: case '0':
00101$:
;	ECEN4330Lab7.c:784: h = 0x00;
	mov	r7,#0x00
;	ECEN4330Lab7.c:785: break;
;	ECEN4330Lab7.c:786: case '1':
	sjmp	00118$
00102$:
;	ECEN4330Lab7.c:787: h = 0x01;
	mov	r7,#0x01
;	ECEN4330Lab7.c:788: break;
;	ECEN4330Lab7.c:789: case '2':
	sjmp	00118$
00103$:
;	ECEN4330Lab7.c:790: h = 0x02;
	mov	r7,#0x02
;	ECEN4330Lab7.c:791: break;
;	ECEN4330Lab7.c:792: case '3':
	sjmp	00118$
00104$:
;	ECEN4330Lab7.c:793: h = 0x03;
	mov	r7,#0x03
;	ECEN4330Lab7.c:794: break;
;	ECEN4330Lab7.c:795: case '4':
	sjmp	00118$
00105$:
;	ECEN4330Lab7.c:796: h = 0x04;
	mov	r7,#0x04
;	ECEN4330Lab7.c:797: break;
;	ECEN4330Lab7.c:798: case '5':
	sjmp	00118$
00106$:
;	ECEN4330Lab7.c:799: h = 0x05;
	mov	r7,#0x05
;	ECEN4330Lab7.c:800: break;
;	ECEN4330Lab7.c:801: case '6':
	sjmp	00118$
00107$:
;	ECEN4330Lab7.c:802: h = 0x06;
	mov	r7,#0x06
;	ECEN4330Lab7.c:803: break;
;	ECEN4330Lab7.c:804: case '7':
	sjmp	00118$
00108$:
;	ECEN4330Lab7.c:805: h = 0x07;
	mov	r7,#0x07
;	ECEN4330Lab7.c:806: break;
;	ECEN4330Lab7.c:807: case '8':
	sjmp	00118$
00109$:
;	ECEN4330Lab7.c:808: h = 0x08;
	mov	r7,#0x08
;	ECEN4330Lab7.c:809: break;
;	ECEN4330Lab7.c:810: case '9':
	sjmp	00118$
00110$:
;	ECEN4330Lab7.c:811: h = 0x09;
	mov	r7,#0x09
;	ECEN4330Lab7.c:812: break;
;	ECEN4330Lab7.c:813: case 'A':
	sjmp	00118$
00111$:
;	ECEN4330Lab7.c:814: h = 0x0A;
	mov	r7,#0x0a
;	ECEN4330Lab7.c:815: break;
;	ECEN4330Lab7.c:816: case 'B':
	sjmp	00118$
00112$:
;	ECEN4330Lab7.c:817: h = 0x0B;
	mov	r7,#0x0b
;	ECEN4330Lab7.c:818: break;
;	ECEN4330Lab7.c:819: case 'C':
	sjmp	00118$
00113$:
;	ECEN4330Lab7.c:820: h = 0x0C;
	mov	r7,#0x0c
;	ECEN4330Lab7.c:821: break;
;	ECEN4330Lab7.c:822: case 'D':
	sjmp	00118$
00114$:
;	ECEN4330Lab7.c:823: h = 0x0D;
	mov	r7,#0x0d
;	ECEN4330Lab7.c:824: break;
;	ECEN4330Lab7.c:825: case 'E':
	sjmp	00118$
00115$:
;	ECEN4330Lab7.c:826: h = 0x0E;
	mov	r7,#0x0e
;	ECEN4330Lab7.c:827: break;
;	ECEN4330Lab7.c:828: case 'F':
	sjmp	00118$
00116$:
;	ECEN4330Lab7.c:829: h = 0x0F;
	mov	r7,#0x0f
;	ECEN4330Lab7.c:830: break;
;	ECEN4330Lab7.c:831: default:
	sjmp	00118$
00117$:
;	ECEN4330Lab7.c:832: h = 0x00;
	mov	r7,#0x00
;	ECEN4330Lab7.c:834: }
00118$:
;	ECEN4330Lab7.c:835: return h;
	mov	dpl,r7
;	ECEN4330Lab7.c:836: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HEXtoASCII'
;------------------------------------------------------------
;h                         Allocated to registers r6 r7 
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	ECEN4330Lab7.c:843: unsigned char HEXtoASCII(unsigned int h){
;	-----------------------------------------
;	 function HEXtoASCII
;	-----------------------------------------
_HEXtoASCII:
	mov	r6,dpl
	mov	r7,dph
;	ECEN4330Lab7.c:846: switch (h)
	clr	c
	mov	a,#0x0f
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00125$
	ljmp	00117$
00125$:
	mov	a,r6
	add	a,#(00126$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r6
	add	a,#(00127$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00126$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00111$
	.db	00112$
	.db	00113$
	.db	00114$
	.db	00115$
	.db	00116$
00127$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00111$>>8
	.db	00112$>>8
	.db	00113$>>8
	.db	00114$>>8
	.db	00115$>>8
	.db	00116$>>8
;	ECEN4330Lab7.c:848: case 0x0000:
00101$:
;	ECEN4330Lab7.c:849: a = '0';
	mov	r7,#0x30
;	ECEN4330Lab7.c:850: break;
;	ECEN4330Lab7.c:851: case 0x0001:
	sjmp	00118$
00102$:
;	ECEN4330Lab7.c:852: a = '1';
	mov	r7,#0x31
;	ECEN4330Lab7.c:853: break;
;	ECEN4330Lab7.c:854: case 0x0002:
	sjmp	00118$
00103$:
;	ECEN4330Lab7.c:855: a = '2';
	mov	r7,#0x32
;	ECEN4330Lab7.c:856: break;
;	ECEN4330Lab7.c:857: case 0x0003:
	sjmp	00118$
00104$:
;	ECEN4330Lab7.c:858: a = '3';
	mov	r7,#0x33
;	ECEN4330Lab7.c:859: break;
;	ECEN4330Lab7.c:860: case 0x0004:
	sjmp	00118$
00105$:
;	ECEN4330Lab7.c:861: a = '4';
	mov	r7,#0x34
;	ECEN4330Lab7.c:862: break;
;	ECEN4330Lab7.c:863: case 0x0005:
	sjmp	00118$
00106$:
;	ECEN4330Lab7.c:864: a = '5';
	mov	r7,#0x35
;	ECEN4330Lab7.c:865: break;
;	ECEN4330Lab7.c:866: case 0x0006:
	sjmp	00118$
00107$:
;	ECEN4330Lab7.c:867: a = '6';
	mov	r7,#0x36
;	ECEN4330Lab7.c:868: break;
;	ECEN4330Lab7.c:869: case 0x0007:
	sjmp	00118$
00108$:
;	ECEN4330Lab7.c:870: a = '7';
	mov	r7,#0x37
;	ECEN4330Lab7.c:871: break;
;	ECEN4330Lab7.c:872: case 0x0008:
	sjmp	00118$
00109$:
;	ECEN4330Lab7.c:873: a = '8';
	mov	r7,#0x38
;	ECEN4330Lab7.c:874: break;
;	ECEN4330Lab7.c:875: case 0x0009:
	sjmp	00118$
00110$:
;	ECEN4330Lab7.c:876: a = '9';
	mov	r7,#0x39
;	ECEN4330Lab7.c:877: break;
;	ECEN4330Lab7.c:878: case 0x000A:
	sjmp	00118$
00111$:
;	ECEN4330Lab7.c:879: a = 'A';
	mov	r7,#0x41
;	ECEN4330Lab7.c:880: break;
;	ECEN4330Lab7.c:881: case 0x000B:
	sjmp	00118$
00112$:
;	ECEN4330Lab7.c:882: a = 'B';
	mov	r7,#0x42
;	ECEN4330Lab7.c:883: break;
;	ECEN4330Lab7.c:884: case 0x000C:
	sjmp	00118$
00113$:
;	ECEN4330Lab7.c:885: a = 'C';
	mov	r7,#0x43
;	ECEN4330Lab7.c:886: break;
;	ECEN4330Lab7.c:887: case 0x000D:
	sjmp	00118$
00114$:
;	ECEN4330Lab7.c:888: a = 'D';
	mov	r7,#0x44
;	ECEN4330Lab7.c:889: break;
;	ECEN4330Lab7.c:890: case 0x000E:
	sjmp	00118$
00115$:
;	ECEN4330Lab7.c:891: a = 'E';
	mov	r7,#0x45
;	ECEN4330Lab7.c:892: break;
;	ECEN4330Lab7.c:893: case 0x000F:
	sjmp	00118$
00116$:
;	ECEN4330Lab7.c:894: a = 'F';
	mov	r7,#0x46
;	ECEN4330Lab7.c:895: break;
;	ECEN4330Lab7.c:896: default:
	sjmp	00118$
00117$:
;	ECEN4330Lab7.c:897: a = '0';
	mov	r7,#0x30
;	ECEN4330Lab7.c:899: }
00118$:
;	ECEN4330Lab7.c:900: return a;
	mov	dpl,r7
;	ECEN4330Lab7.c:901: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HEXtoASCII_8write'
;------------------------------------------------------------
;h                         Allocated to registers r7 
;------------------------------------------------------------
;	ECEN4330Lab7.c:909: void HEXtoASCII_8write(unsigned char h){
;	-----------------------------------------
;	 function HEXtoASCII_8write
;	-----------------------------------------
_HEXtoASCII_8write:
;	ECEN4330Lab7.c:912: byte = (h >> 4);
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	r6,a
	mov	_byte,r6
	mov	(_byte + 1),#0x00
;	ECEN4330Lab7.c:913: byte &= 0x0F;
	anl	_byte,#0x0f
	mov	(_byte + 1),#0x00
;	ECEN4330Lab7.c:914: ASCII = HEXtoASCII(byte);
	mov	dpl,_byte
	mov	dph,(_byte + 1)
	push	ar7
	lcall	_HEXtoASCII
;	ECEN4330Lab7.c:915: write(ASCII);
	mov  _ASCII,dpl
	lcall	_write
	pop	ar7
;	ECEN4330Lab7.c:918: byte = (h & 0x0F);
	mov	r6,#0x00
	mov	a,#0x0f
	anl	a,r7
	mov	_byte,a
;	1-genFromRTrack replaced	mov	(_byte + 1),#0x00
	mov	(_byte + 1),r6
;	ECEN4330Lab7.c:919: ASCII = HEXtoASCII(byte);
	mov	dpl,_byte
	mov	dph,(_byte + 1)
	lcall	_HEXtoASCII
;	ECEN4330Lab7.c:920: write(ASCII);
	mov  _ASCII,dpl
;	ECEN4330Lab7.c:921: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'HEXtoASCII_16write'
;------------------------------------------------------------
;h                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	ECEN4330Lab7.c:929: void HEXtoASCII_16write(unsigned int h){
;	-----------------------------------------
;	 function HEXtoASCII_16write
;	-----------------------------------------
_HEXtoASCII_16write:
	mov	r6,dpl
;	ECEN4330Lab7.c:932: byte = (h >> 12);
	mov	a,dph
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	_byte,a
	mov	(_byte + 1),#0x00
;	ECEN4330Lab7.c:933: byte &= 0x000F;
	anl	_byte,#0x0f
	mov	(_byte + 1),#0x00
;	ECEN4330Lab7.c:934: ASCII = HEXtoASCII(byte);
	mov	dpl,_byte
	mov	dph,(_byte + 1)
	push	ar7
	push	ar6
	lcall	_HEXtoASCII
	mov	_ASCII,dpl
;	ECEN4330Lab7.c:935: LCD_string_write("0x");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:936: write(ASCII);
	mov	dpl,_ASCII
	lcall	_write
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:939: byte = (h >> 8);
	mov	_byte,r7
	mov	(_byte + 1),#0x00
;	ECEN4330Lab7.c:940: byte &= 0x000F;
	anl	_byte,#0x0f
	mov	(_byte + 1),#0x00
;	ECEN4330Lab7.c:941: ASCII = HEXtoASCII(byte);
	mov	dpl,_byte
	mov	dph,(_byte + 1)
	push	ar7
	push	ar6
	lcall	_HEXtoASCII
;	ECEN4330Lab7.c:942: write(ASCII);
	mov  _ASCII,dpl
	lcall	_write
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:945: byte = (h >> 4);
	mov	_byte,r6
	mov	a,r7
	swap	a
	xch	a,_byte
	swap	a
	anl	a,#0x0f
	xrl	a,_byte
	xch	a,_byte
	anl	a,#0x0f
	xch	a,_byte
	xrl	a,_byte
	xch	a,_byte
	mov	(_byte + 1),a
;	ECEN4330Lab7.c:946: byte &= 0x000F;
	anl	_byte,#0x0f
	mov	(_byte + 1),#0x00
;	ECEN4330Lab7.c:947: ASCII = HEXtoASCII(byte);
	mov	dpl,_byte
	mov	dph,(_byte + 1)
	push	ar7
	push	ar6
	lcall	_HEXtoASCII
;	ECEN4330Lab7.c:948: write(ASCII);
	mov  _ASCII,dpl
	lcall	_write
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:951: byte = h;
	mov	_byte,r6
	mov	(_byte + 1),r7
;	ECEN4330Lab7.c:952: byte &= 0x000F;
	anl	_byte,#0x0f
	mov	(_byte + 1),#0x00
;	ECEN4330Lab7.c:953: ASCII = HEXtoASCII(byte);
	mov	dpl,_byte
	mov	dph,(_byte + 1)
	lcall	_HEXtoASCII
;	ECEN4330Lab7.c:954: write(ASCII);
	mov  _ASCII,dpl
;	ECEN4330Lab7.c:955: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'RAMwrite'
;------------------------------------------------------------
;d                         Allocated with name '_RAMwrite_PARM_2'
;a                         Allocated to registers r6 r7 
;ram_address               Allocated to registers 
;------------------------------------------------------------
;	ECEN4330Lab7.c:963: void RAMwrite(unsigned int a, unsigned char d){
;	-----------------------------------------
;	 function RAMwrite
;	-----------------------------------------
_RAMwrite:
	mov	r6,dpl
	mov	r7,dph
;	ECEN4330Lab7.c:966: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:969: ram_address = (unsigned char __xdata*)(a);
	mov	dpl,r6
	mov	dph,r7
;	ECEN4330Lab7.c:972: *ram_address = d;
	mov	a,_RAMwrite_PARM_2
	movx	@dptr,a
;	ECEN4330Lab7.c:973: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:974: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'testRAM'
;------------------------------------------------------------
;d                         Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;ram_address               Allocated to registers 
;------------------------------------------------------------
;	ECEN4330Lab7.c:982: void testRAM(unsigned char d){
;	-----------------------------------------
;	 function testRAM
;	-----------------------------------------
_testRAM:
	mov	r7,dpl
;	ECEN4330Lab7.c:986: for (i = __START_RAM__; i<=__END_RAM__; i++) {
	mov	r5,#0x00
	mov	r6,#0x00
00102$:
;	ECEN4330Lab7.c:987: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:988: ram_address = (unsigned char __xdata*)(i);
	mov	dpl,r5
	mov	dph,r6
;	ECEN4330Lab7.c:989: *ram_address = d;
	mov	a,r7
	movx	@dptr,a
;	ECEN4330Lab7.c:990: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:986: for (i = __START_RAM__; i<=__END_RAM__; i++) {
	inc	r5
	cjne	r5,#0x00,00111$
	inc	r6
00111$:
	clr	c
	mov	a,#0xfe
	subb	a,r5
	mov	a,#0xff
	subb	a,r6
	jnc	00102$
;	ECEN4330Lab7.c:993: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RAMread'
;------------------------------------------------------------
;a                         Allocated to registers r6 r7 
;ram_address               Allocated to registers 
;------------------------------------------------------------
;	ECEN4330Lab7.c:1001: unsigned char RAMread(unsigned int a){
;	-----------------------------------------
;	 function RAMread
;	-----------------------------------------
_RAMread:
	mov	r6,dpl
	mov	r7,dph
;	ECEN4330Lab7.c:1004: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:1007: ram_address = (unsigned char __xdata*)(a);
	mov	dpl,r6
	mov	dph,r7
;	ECEN4330Lab7.c:1010: data = *ram_address;
	movx	a,@dptr
	mov	_data,a
;	ECEN4330Lab7.c:1011: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:1012: return data;
	mov	dpl,_data
;	ECEN4330Lab7.c:1013: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resetLCD'
;------------------------------------------------------------
;	ECEN4330Lab7.c:1025: void resetLCD(){
;	-----------------------------------------
;	 function resetLCD
;	-----------------------------------------
_resetLCD:
;	ECEN4330Lab7.c:1026: setRotation(4);
	mov	dpl,#0x04
	lcall	_setRotation
;	ECEN4330Lab7.c:1027: setTextColor(GRAY, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xd6ba
	lcall	_setTextColor
;	ECEN4330Lab7.c:1028: setTextSize(3);
	mov	dpl,#0x03
	lcall	_setTextSize
;	ECEN4330Lab7.c:1029: fillScreen(BLACK);
	mov	dptr,#0x0000
	lcall	_fillScreen
;	ECEN4330Lab7.c:1030: setCursor(0, 0);
	clr	a
	mov	_setCursor_PARM_2,a
	mov	(_setCursor_PARM_2 + 1),a
	mov	dptr,#0x0000
;	ECEN4330Lab7.c:1031: }
	ljmp	_setCursor
;------------------------------------------------------------
;Allocation info for local variables in function 'invalidInput'
;------------------------------------------------------------
;	ECEN4330Lab7.c:1043: void invalidInput(){
;	-----------------------------------------
;	 function invalidInput
;	-----------------------------------------
_invalidInput:
;	ECEN4330Lab7.c:1044: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1045: setTextColor(RED, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf800
	lcall	_setTextColor
;	ECEN4330Lab7.c:1048: LCD_string_write("\n   Invalid\n\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1049: LCD_string_write("    Input");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1052: delay(200);
	mov	dptr,#0x00c8
	lcall	_delay
;	ECEN4330Lab7.c:1053: resetLCD();
;	ECEN4330Lab7.c:1054: }
	ljmp	_resetLCD
;------------------------------------------------------------
;Allocation info for local variables in function 'inputRead16'
;------------------------------------------------------------
;	ECEN4330Lab7.c:1065: void inputRead16(){
;	-----------------------------------------
;	 function inputRead16
;	-----------------------------------------
_inputRead16:
;	ECEN4330Lab7.c:1066: input16 = 0x0000;
	clr	a
	mov	_input16,a
	mov	(_input16 + 1),a
;	ECEN4330Lab7.c:1068: setTextColor(WHITE, BLACK);
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1071: key = keyDetect();
	lcall	_keyDetect
	mov	_key,dpl
;	ECEN4330Lab7.c:1072: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1073: write(key);
	mov	dpl,_key
	lcall	_write
;	ECEN4330Lab7.c:1074: input16 |= (ASCIItoHEX(key) << 12);
	mov	dpl,_key
	lcall	_ASCIItoHEX
	mov	r7,dpl
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r6,a
	clr	a
	orl	_input16,a
	mov	a,r6
	orl	(_input16 + 1),a
;	ECEN4330Lab7.c:1076: key = keyDetect();
	lcall	_keyDetect
	mov	_key,dpl
;	ECEN4330Lab7.c:1077: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1078: write(key);
	mov	dpl,_key
	lcall	_write
;	ECEN4330Lab7.c:1079: input16 |= (ASCIItoHEX(key) << 8);
	mov	dpl,_key
	lcall	_ASCIItoHEX
	mov	r7,dpl
	mov	ar6,r7
	clr	a
	orl	_input16,a
	mov	a,r6
	orl	(_input16 + 1),a
;	ECEN4330Lab7.c:1081: key = keyDetect();
	lcall	_keyDetect
	mov	_key,dpl
;	ECEN4330Lab7.c:1082: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1083: write(key);
	mov	dpl,_key
	lcall	_write
;	ECEN4330Lab7.c:1084: input16 |= (ASCIItoHEX(key) << 4);
	mov	dpl,_key
	lcall	_ASCIItoHEX
	mov	r7,dpl
	clr	a
	swap	a
	anl	a,#0xf0
	xch	a,r7
	swap	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf0
	xch	a,r7
	xrl	a,r7
	mov	r6,a
	mov	a,r7
	orl	_input16,a
	mov	a,r6
	orl	(_input16 + 1),a
;	ECEN4330Lab7.c:1086: key = keyDetect();
	lcall	_keyDetect
	mov	_key,dpl
;	ECEN4330Lab7.c:1087: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1088: write(key);
	mov	dpl,_key
	lcall	_write
;	ECEN4330Lab7.c:1089: input16 |= ASCIItoHEX(key);
	mov	dpl,_key
	lcall	_ASCIItoHEX
	mov	r7,dpl
	mov	r6,#0x00
	mov	a,r7
	orl	_input16,a
	mov	a,r6
	orl	(_input16 + 1),a
;	ECEN4330Lab7.c:1090: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'inputRead8'
;------------------------------------------------------------
;	ECEN4330Lab7.c:1100: void inputRead8(){
;	-----------------------------------------
;	 function inputRead8
;	-----------------------------------------
_inputRead8:
;	ECEN4330Lab7.c:1101: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1103: input8 = 0x00;
	mov	_input8,#0x00
;	ECEN4330Lab7.c:1105: key = keyDetect();
	lcall	_keyDetect
	mov	_key,dpl
;	ECEN4330Lab7.c:1106: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1107: write(key);
	mov	dpl,_key
	lcall	_write
;	ECEN4330Lab7.c:1108: input8 |= (ASCIItoHEX(key) << 4);
	mov	dpl,_key
	lcall	_ASCIItoHEX
	mov	a,dpl
	swap	a
	anl	a,#0xf0
	orl	_input8,a
;	ECEN4330Lab7.c:1110: key = keyDetect();
	lcall	_keyDetect
	mov	_key,dpl
;	ECEN4330Lab7.c:1111: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1112: write(key);
	mov	dpl,_key
	lcall	_write
;	ECEN4330Lab7.c:1113: input8 |= ASCIItoHEX(key);
	mov	dpl,_key
	lcall	_ASCIItoHEX
	mov	a,dpl
	orl	_input8,a
;	ECEN4330Lab7.c:1114: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'inputDataType'
;------------------------------------------------------------
;	ECEN4330Lab7.c:1133: void inputDataType(){
;	-----------------------------------------
;	 function inputDataType
;	-----------------------------------------
_inputDataType:
;	ECEN4330Lab7.c:1134: validInput = 0;
	mov	_validInput,#0x00
;	ECEN4330Lab7.c:1135: dataType = 0;
	mov	_dataType,#0x00
;	ECEN4330Lab7.c:1137: do
00106$:
;	ECEN4330Lab7.c:1140: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1141: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1142: LCD_string_write("\nSelect Data\nType:\n\n");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1143: LCD_string_write("(1) Byte\n");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1144: LCD_string_write("(2) Word\n");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1145: LCD_string_write("(3) Double\n    Word\n\n  _");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1146: cursor_x -= textsize * 6;
	mov	__mulint_PARM_2,_textsize
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0006
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,_cursor_x
	clr	c
	subb	a,r6
	mov	_cursor_x,a
	mov	a,(_cursor_x + 1)
	subb	a,r7
	mov	(_cursor_x + 1),a
;	ECEN4330Lab7.c:1147: x = cursor_x;
	mov	_x,_cursor_x
;	ECEN4330Lab7.c:1148: y = cursor_y;
	mov	_y,_cursor_y
;	ECEN4330Lab7.c:1149: ts = textsize;
	mov	_ts,_textsize
;	ECEN4330Lab7.c:1152: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1153: key = keyDetect();
	lcall	_keyDetect
	mov	_key,dpl
;	ECEN4330Lab7.c:1154: cursor_x = x;
	mov	_cursor_x,_x
	mov	(_cursor_x + 1),#0x00
;	ECEN4330Lab7.c:1155: cursor_y = y;
	mov	_cursor_y,_y
	mov	(_cursor_y + 1),#0x00
;	ECEN4330Lab7.c:1156: textsize = ts;
	mov	_textsize,_ts
;	ECEN4330Lab7.c:1157: write(key);
	mov	dpl,_key
	lcall	_write
;	ECEN4330Lab7.c:1159: switch (key)
	mov	a,#0x31
	cjne	a,_key,00127$
	sjmp	00101$
00127$:
	mov	a,#0x32
	cjne	a,_key,00128$
	sjmp	00102$
00128$:
	mov	a,#0x33
;	ECEN4330Lab7.c:1162: case '1':
	cjne	a,_key,00104$
	sjmp	00103$
00101$:
;	ECEN4330Lab7.c:1163: dataType = 1;
	mov	_dataType,#0x01
;	ECEN4330Lab7.c:1164: validInput = 1;
	mov	_validInput,#0x01
;	ECEN4330Lab7.c:1165: break;
;	ECEN4330Lab7.c:1168: case '2':
	sjmp	00107$
00102$:
;	ECEN4330Lab7.c:1169: dataType = 2;
	mov	_dataType,#0x02
;	ECEN4330Lab7.c:1170: validInput = 1;
	mov	_validInput,#0x01
;	ECEN4330Lab7.c:1171: break;
;	ECEN4330Lab7.c:1174: case '3':
	sjmp	00107$
00103$:
;	ECEN4330Lab7.c:1175: dataType = 4;
	mov	_dataType,#0x04
;	ECEN4330Lab7.c:1176: validInput = 1;
	mov	_validInput,#0x01
;	ECEN4330Lab7.c:1177: break;
;	ECEN4330Lab7.c:1180: default:
	sjmp	00107$
00104$:
;	ECEN4330Lab7.c:1181: invalidInput();
	lcall	_invalidInput
;	ECEN4330Lab7.c:1182: validInput = 0;
	mov	_validInput,#0x00
;	ECEN4330Lab7.c:1184: }
00107$:
;	ECEN4330Lab7.c:1185: } while (validInput == 0);
	mov	a,_validInput
	jnz	00130$
	ljmp	00106$
00130$:
;	ECEN4330Lab7.c:1186: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'inputDataSize'
;------------------------------------------------------------
;	ECEN4330Lab7.c:1197: void inputDataSize(){
;	-----------------------------------------
;	 function inputDataSize
;	-----------------------------------------
_inputDataSize:
;	ECEN4330Lab7.c:1198: validInput = 0;
;	ECEN4330Lab7.c:1199: dataSize = 0x0000;
	clr	a
	mov	_validInput,a
	mov	_dataSize,a
	mov	(_dataSize + 1),a
;	ECEN4330Lab7.c:1201: do
00104$:
;	ECEN4330Lab7.c:1204: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1205: LCD_string_write("\nEnter Data\nSize:\n\n  0x____");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1206: cursor_x -= 4 * textsize * 6;
	mov	a,_textsize
	mov	b,#0x18
	mul	ab
	mov	r6,a
	mov	r7,b
	mov	a,_cursor_x
	clr	c
	subb	a,r6
	mov	_cursor_x,a
	mov	a,(_cursor_x + 1)
	subb	a,r7
	mov	(_cursor_x + 1),a
;	ECEN4330Lab7.c:1207: x = cursor_x;
	mov	_x,_cursor_x
;	ECEN4330Lab7.c:1208: y = cursor_y;
	mov	_y,_cursor_y
;	ECEN4330Lab7.c:1209: ts = textsize;
	mov	_ts,_textsize
;	ECEN4330Lab7.c:1211: input16 = 0x0000;
	clr	a
	mov	_input16,a
	mov	(_input16 + 1),a
;	ECEN4330Lab7.c:1213: setTextColor(WHITE, BLACK);
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1216: key = keyDetect();
	lcall	_keyDetect
	mov	_key,dpl
;	ECEN4330Lab7.c:1217: cursor_x = x;
	mov	_cursor_x,_x
	mov	(_cursor_x + 1),#0x00
;	ECEN4330Lab7.c:1218: cursor_y = y;
	mov	_cursor_y,_y
	mov	(_cursor_y + 1),#0x00
;	ECEN4330Lab7.c:1219: textsize = ts;
	mov	_textsize,_ts
;	ECEN4330Lab7.c:1220: write(key);
	mov	dpl,_key
	lcall	_write
;	ECEN4330Lab7.c:1221: x = cursor_x;
	mov	_x,_cursor_x
;	ECEN4330Lab7.c:1222: y = cursor_y;
	mov	_y,_cursor_y
;	ECEN4330Lab7.c:1223: ts = textsize;
	mov	_ts,_textsize
;	ECEN4330Lab7.c:1224: input16 |= (ASCIItoHEX(key) << 12);
	mov	dpl,_key
	lcall	_ASCIItoHEX
	mov	r7,dpl
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r6,a
	clr	a
	orl	_input16,a
	mov	a,r6
	orl	(_input16 + 1),a
;	ECEN4330Lab7.c:1226: key = keyDetect();
	lcall	_keyDetect
	mov	_key,dpl
;	ECEN4330Lab7.c:1227: cursor_x = x;
	mov	_cursor_x,_x
	mov	(_cursor_x + 1),#0x00
;	ECEN4330Lab7.c:1228: cursor_y = y;
	mov	_cursor_y,_y
	mov	(_cursor_y + 1),#0x00
;	ECEN4330Lab7.c:1229: textsize = ts;
	mov	_textsize,_ts
;	ECEN4330Lab7.c:1230: write(key);
	mov	dpl,_key
	lcall	_write
;	ECEN4330Lab7.c:1231: x = cursor_x;
	mov	_x,_cursor_x
;	ECEN4330Lab7.c:1232: y = cursor_y;
	mov	_y,_cursor_y
;	ECEN4330Lab7.c:1233: ts = textsize;
	mov	_ts,_textsize
;	ECEN4330Lab7.c:1234: input16 |= (ASCIItoHEX(key) << 8);
	mov	dpl,_key
	lcall	_ASCIItoHEX
	mov	r7,dpl
	mov	ar6,r7
	clr	a
	orl	_input16,a
	mov	a,r6
	orl	(_input16 + 1),a
;	ECEN4330Lab7.c:1236: key = keyDetect();
	lcall	_keyDetect
	mov	_key,dpl
;	ECEN4330Lab7.c:1237: cursor_x = x;
	mov	_cursor_x,_x
	mov	(_cursor_x + 1),#0x00
;	ECEN4330Lab7.c:1238: cursor_y = y;
	mov	_cursor_y,_y
	mov	(_cursor_y + 1),#0x00
;	ECEN4330Lab7.c:1239: textsize = ts;
	mov	_textsize,_ts
;	ECEN4330Lab7.c:1240: write(key);
	mov	dpl,_key
	lcall	_write
;	ECEN4330Lab7.c:1241: x = cursor_x;
	mov	_x,_cursor_x
;	ECEN4330Lab7.c:1242: y = cursor_y;
	mov	_y,_cursor_y
;	ECEN4330Lab7.c:1243: ts = textsize;
	mov	_ts,_textsize
;	ECEN4330Lab7.c:1244: input16 |= (ASCIItoHEX(key) << 4);
	mov	dpl,_key
	lcall	_ASCIItoHEX
	mov	r7,dpl
	clr	a
	swap	a
	anl	a,#0xf0
	xch	a,r7
	swap	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf0
	xch	a,r7
	xrl	a,r7
	mov	r6,a
	mov	a,r7
	orl	_input16,a
	mov	a,r6
	orl	(_input16 + 1),a
;	ECEN4330Lab7.c:1246: key = keyDetect();
	lcall	_keyDetect
	mov	_key,dpl
;	ECEN4330Lab7.c:1247: cursor_x = x;
	mov	_cursor_x,_x
	mov	(_cursor_x + 1),#0x00
;	ECEN4330Lab7.c:1248: cursor_y = y;
	mov	_cursor_y,_y
	mov	(_cursor_y + 1),#0x00
;	ECEN4330Lab7.c:1249: textsize = ts;
	mov	_textsize,_ts
;	ECEN4330Lab7.c:1250: write(key);
	mov	dpl,_key
	lcall	_write
;	ECEN4330Lab7.c:1251: x = cursor_x;
	mov	_x,_cursor_x
;	ECEN4330Lab7.c:1252: y = cursor_y;
	mov	_y,_cursor_y
;	ECEN4330Lab7.c:1253: ts = textsize;
	mov	_ts,_textsize
;	ECEN4330Lab7.c:1254: input16 |= ASCIItoHEX(key);
	mov	dpl,_key
	lcall	_ASCIItoHEX
	mov	r7,dpl
	mov	r6,#0x00
	mov	a,r7
	orl	_input16,a
	mov	a,r6
	orl	(_input16 + 1),a
;	ECEN4330Lab7.c:1255: dataSize = input16;
	mov	_dataSize,_input16
	mov	(_dataSize + 1),(_input16 + 1)
;	ECEN4330Lab7.c:1258: if(dataSize == 0x0000){
	mov	a,_dataSize
	orl	a,(_dataSize + 1)
	jnz	00102$
;	ECEN4330Lab7.c:1259: invalidInput();
	lcall	_invalidInput
;	ECEN4330Lab7.c:1260: validInput = 0;
	mov	_validInput,#0x00
	ljmp	00104$
00102$:
;	ECEN4330Lab7.c:1263: validInput = 1;
	mov	_validInput,#0x01
;	ECEN4330Lab7.c:1265: } while (validInput == 0);
;	ECEN4330Lab7.c:1266: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RAM_CHECK'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	ECEN4330Lab7.c:1277: void RAM_CHECK(){
;	-----------------------------------------
;	 function RAM_CHECK
;	-----------------------------------------
_RAM_CHECK:
;	ECEN4330Lab7.c:1279: data = 0;
	mov	_data,#0x00
;	ECEN4330Lab7.c:1280: dataEnd = 0;
	mov	_dataEnd,#0x00
;	ECEN4330Lab7.c:1283: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1284: LCD_string_write("\nWriting 0x55\nto all\nexternal RAM\nlocations.\n\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1285: testRAM(RAMcheckVal1);
	mov	dpl,#0x55
	lcall	_testRAM
;	ECEN4330Lab7.c:1286: RAMwrite(0xFFFF, RAMcheckVal1);
	mov	_RAMwrite_PARM_2,#0x55
	mov	dptr,#0xffff
	lcall	_RAMwrite
;	ECEN4330Lab7.c:1288: setTextColor(GREEN, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07e0
	lcall	_setTextColor
;	ECEN4330Lab7.c:1289: LCD_string_write("Write\ncomplete.\n");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1290: delay(200);
	mov	dptr,#0x00c8
	lcall	_delay
;	ECEN4330Lab7.c:1293: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1294: LCD_string_write("\nVerifying all\nRAM locations\nequal 0x55.\n\n");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1296: do
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	ECEN4330Lab7.c:1298: data = RAMread(i);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_RAMread
	mov	_data,dpl
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:1299: i++;
	inc	r6
	cjne	r6,#0x00,00163$
	inc	r7
00163$:
;	ECEN4330Lab7.c:1300: } while (data == RAMcheckVal1 && i <= __END_RAM__);
	mov	a,#0x55
	cjne	a,_data,00164$
	mov	a,#0x01
	sjmp	00165$
00164$:
	clr	a
00165$:
	mov	r5,a
	jz	00129$
	clr	c
	mov	a,#0xfe
	subb	a,r6
	mov	a,#0xff
	subb	a,r7
	jnc	00102$
00129$:
;	ECEN4330Lab7.c:1301: if(data == RAMcheckVal1){
	mov	a,r5
	jz	00106$
;	ECEN4330Lab7.c:1302: data = RAMread(0xFFFF);
	mov	dptr,#0xffff
	push	ar7
	push	ar6
	lcall	_RAMread
	mov	_data,dpl
	pop	ar6
	pop	ar7
00106$:
;	ECEN4330Lab7.c:1306: if(data != RAMcheckVal1){
	mov	a,#0x55
	cjne	a,_data,00169$
	sjmp	00117$
00169$:
;	ECEN4330Lab7.c:1307: setTextColor(RED, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf800
	push	ar7
	push	ar6
	lcall	_setTextColor
;	ECEN4330Lab7.c:1308: LCD_string_write("1st RAM check\nunsuccessful.\n\n");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1309: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN4330Lab7.c:1311: LCD_string_write("Error at:\n");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:1312: HEXtoASCII_16write(i - 1);
	mov	a,r6
	add	a,#0xff
	mov	dpl,a
	mov	a,r7
	addc	a,#0xff
	mov	dph,a
	lcall	_HEXtoASCII_16write
;	ECEN4330Lab7.c:1313: LCD_string_write(": 0x");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1314: HEXtoASCII_8write(data);
	mov	dpl,_data
	lcall	_HEXtoASCII_8write
;	ECEN4330Lab7.c:1316: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1317: LCD_string_write("Returning to\nmain menu.");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1318: delay(200);
	mov	dptr,#0x00c8
	ljmp	_delay
00117$:
;	ECEN4330Lab7.c:1323: setTextColor(GREEN, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07e0
	lcall	_setTextColor
;	ECEN4330Lab7.c:1324: LCD_string_write("1st RAM check\nsuccessful.\n\n");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1325: delay(200);
	mov	dptr,#0x00c8
	lcall	_delay
;	ECEN4330Lab7.c:1327: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1328: LCD_string_write("\nWriting 0xAA\nto all\nexternal RAM\nlocations.\n\n");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1329: testRAM(RAMcheckVal2);
	mov	dpl,#0xaa
	lcall	_testRAM
;	ECEN4330Lab7.c:1330: RAMwrite(0xFFFF, RAMcheckVal2);
	mov	_RAMwrite_PARM_2,#0xaa
	mov	dptr,#0xffff
	lcall	_RAMwrite
;	ECEN4330Lab7.c:1331: setTextColor(GREEN, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07e0
	lcall	_setTextColor
;	ECEN4330Lab7.c:1332: LCD_string_write("Write\ncomplete.\n");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1333: delay(200);
	mov	dptr,#0x00c8
	lcall	_delay
;	ECEN4330Lab7.c:1336: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1337: LCD_string_write("\nVerifying all\nRAM locations\nequal 0xAA.\n\n");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1339: do
	mov	r6,#0x00
	mov	r7,#0x00
00108$:
;	ECEN4330Lab7.c:1341: data = RAMread(i);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_RAMread
	mov	_data,dpl
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:1342: i++;
	inc	r6
	cjne	r6,#0x00,00170$
	inc	r7
00170$:
;	ECEN4330Lab7.c:1343: } while (data == RAMcheckVal2 && i <= __END_RAM__);
	mov	a,#0xaa
	cjne	a,_data,00171$
	mov	a,#0x01
	sjmp	00172$
00171$:
	clr	a
00172$:
	mov	r5,a
	jz	00130$
	clr	c
	mov	a,#0xfe
	subb	a,r6
	mov	a,#0xff
	subb	a,r7
	jnc	00108$
00130$:
;	ECEN4330Lab7.c:1344: if(data == RAMcheckVal2){
	mov	a,r5
	jz	00112$
;	ECEN4330Lab7.c:1345: data = RAMread(0xFFFF);
	mov	dptr,#0xffff
	push	ar7
	push	ar6
	lcall	_RAMread
	mov	_data,dpl
	pop	ar6
	pop	ar7
00112$:
;	ECEN4330Lab7.c:1348: if(data != RAMcheckVal2){
	mov	a,#0xaa
	cjne	a,_data,00176$
	sjmp	00114$
00176$:
;	ECEN4330Lab7.c:1349: setTextColor(RED, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf800
	push	ar7
	push	ar6
	lcall	_setTextColor
;	ECEN4330Lab7.c:1350: LCD_string_write("2nd RAM check\nunsuccessful.\n\n");
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1351: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN4330Lab7.c:1353: LCD_string_write("Error at:\n");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:1354: HEXtoASCII_16write(i - 1);
	mov	a,r6
	add	a,#0xff
	mov	dpl,a
	mov	a,r7
	addc	a,#0xff
	mov	dph,a
	lcall	_HEXtoASCII_16write
;	ECEN4330Lab7.c:1355: LCD_string_write(": 0x");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1356: HEXtoASCII_8write(data);
	mov	dpl,_data
	lcall	_HEXtoASCII_8write
;	ECEN4330Lab7.c:1358: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1359: LCD_string_write("Returning to\nmain menu.");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1360: delay(100);
	mov	dptr,#0x0064
	ljmp	_delay
00114$:
;	ECEN4330Lab7.c:1365: setTextColor(GREEN, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07e0
	lcall	_setTextColor
;	ECEN4330Lab7.c:1366: LCD_string_write("2nd RAM check\nsuccessful.\n\n");
	mov	dptr,#___str_20
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1367: LCD_string_write("RAM check\ncomplete.\n\n");
	mov	dptr,#___str_21
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1368: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN4330Lab7.c:1369: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1370: LCD_string_write("Returning to\nmain menu.");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1371: delay(100);
	mov	dptr,#0x0064
;	ECEN4330Lab7.c:1374: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'MOVE'
;------------------------------------------------------------
;	ECEN4330Lab7.c:1397: void MOVE(){
;	-----------------------------------------
;	 function MOVE
;	-----------------------------------------
_MOVE:
;	ECEN4330Lab7.c:1398: endAddrCalc = 0;
	clr	a
	mov	_endAddrCalc,a
	mov	(_endAddrCalc + 1),a
	mov	(_endAddrCalc + 2),a
	mov	(_endAddrCalc + 3),a
;	ECEN4330Lab7.c:1399: addr0 = 0;                  // Source Address
	mov	_addr0,a
	mov	(_addr0 + 1),a
;	ECEN4330Lab7.c:1400: addr1 = 0;                  // Source End Address
	mov	_addr1,a
	mov	(_addr1 + 1),a
;	ECEN4330Lab7.c:1401: addr2 = 0;                  // Destination Address
	mov	_addr2,a
	mov	(_addr2 + 1),a
;	ECEN4330Lab7.c:1402: addr3 = 0;                  // Destination End Address
	mov	_addr3,a
	mov	(_addr3 + 1),a
;	ECEN4330Lab7.c:1403: currAddr0 = 0;              // Current Source Address
	mov	_currAddr0,a
	mov	(_currAddr0 + 1),a
;	ECEN4330Lab7.c:1404: currAddr1 = 0;              // Current Destination Address
	mov	_currAddr1,a
	mov	(_currAddr1 + 1),a
;	ECEN4330Lab7.c:1407: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1408: LCD_string_write("\nEnter source\nstarting RAM\naddress:\n\n\n  0x____");
	mov	dptr,#___str_22
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1409: cursor_x -= 4 * textsize * 6;
	mov	a,_textsize
	mov	b,#0x18
	mul	ab
	mov	r6,a
	mov	r7,b
	mov	a,_cursor_x
	clr	c
	subb	a,r6
	mov	_cursor_x,a
	mov	a,(_cursor_x + 1)
	subb	a,r7
	mov	(_cursor_x + 1),a
;	ECEN4330Lab7.c:1410: inputRead16();
	lcall	_inputRead16
;	ECEN4330Lab7.c:1411: addr0 = input16;
	mov	_addr0,_input16
	mov	(_addr0 + 1),(_input16 + 1)
;	ECEN4330Lab7.c:1414: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1415: LCD_string_write("\nEnter\ndestination\nstarting RAM\naddress:\n\n\n  0x____");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1416: cursor_x -= 4 * textsize * 6;
	mov	a,_textsize
	mov	b,#0x18
	mul	ab
	mov	r6,a
	mov	r7,b
	mov	a,_cursor_x
	clr	c
	subb	a,r6
	mov	_cursor_x,a
	mov	a,(_cursor_x + 1)
	subb	a,r7
	mov	(_cursor_x + 1),a
;	ECEN4330Lab7.c:1417: inputRead16();
	lcall	_inputRead16
;	ECEN4330Lab7.c:1418: addr2 = input16;
	mov	_addr2,_input16
	mov	(_addr2 + 1),(_input16 + 1)
;	ECEN4330Lab7.c:1421: inputDataType();
	lcall	_inputDataType
;	ECEN4330Lab7.c:1424: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1425: inputDataSize();
	lcall	_inputDataSize
;	ECEN4330Lab7.c:1428: if(addr2 > addr0){
	clr	c
	mov	a,_addr0
	subb	a,_addr2
	mov	a,(_addr0 + 1)
	subb	a,(_addr2 + 1)
	jnc	00108$
;	ECEN4330Lab7.c:1429: endAddrCalc = addr2 + (dataSize * dataType);
	mov	__mulint_PARM_2,_dataType
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,_dataSize
	mov	dph,(_dataSize + 1)
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,_addr2
	mov	r4,a
	mov	a,r7
	addc	a,(_addr2 + 1)
	mov	r5,a
	mov	_endAddrCalc,r4
	mov	(_endAddrCalc + 1),r5
	mov	(_endAddrCalc + 2),#0x00
	mov	(_endAddrCalc + 3),#0x00
;	ECEN4330Lab7.c:1430: if(endAddrCalc > 0xFFFF){
	clr	c
	mov	a,#0xff
	subb	a,_endAddrCalc
	mov	a,#0xff
	subb	a,(_endAddrCalc + 1)
	clr	a
	subb	a,(_endAddrCalc + 2)
	clr	a
	subb	a,(_endAddrCalc + 3)
	jnc	00102$
;	ECEN4330Lab7.c:1431: addr3 = 0xFFFF;
	mov	_addr3,#0xff
	mov	(_addr3 + 1),#0xff
	sjmp	00103$
00102$:
;	ECEN4330Lab7.c:1434: addr3 = addr2 + (dataSize * dataType);
	mov	a,r6
	add	a,_addr2
	mov	_addr3,a
	mov	a,r7
	addc	a,(_addr2 + 1)
	mov	(_addr3 + 1),a
00103$:
;	ECEN4330Lab7.c:1436: dataSize = addr3 - addr2;
	mov	a,_addr3
	clr	c
	subb	a,_addr2
	mov	_dataSize,a
	mov	a,(_addr3 + 1)
	subb	a,(_addr2 + 1)
	mov	(_dataSize + 1),a
;	ECEN4330Lab7.c:1437: addr1 = addr0 + dataSize;
	mov	a,_dataSize
	add	a,_addr0
	mov	_addr1,a
	mov	a,(_dataSize + 1)
	addc	a,(_addr0 + 1)
	mov	(_addr1 + 1),a
	sjmp	00109$
00108$:
;	ECEN4330Lab7.c:1440: endAddrCalc = addr0 + (dataSize * dataType);
	mov	__mulint_PARM_2,_dataType
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,_dataSize
	mov	dph,(_dataSize + 1)
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,_addr0
	mov	r4,a
	mov	a,r7
	addc	a,(_addr0 + 1)
	mov	r5,a
	mov	_endAddrCalc,r4
	mov	(_endAddrCalc + 1),r5
	mov	(_endAddrCalc + 2),#0x00
	mov	(_endAddrCalc + 3),#0x00
;	ECEN4330Lab7.c:1441: if(endAddrCalc > 0xFFFF){
	clr	c
	mov	a,#0xff
	subb	a,_endAddrCalc
	mov	a,#0xff
	subb	a,(_endAddrCalc + 1)
	clr	a
	subb	a,(_endAddrCalc + 2)
	clr	a
	subb	a,(_endAddrCalc + 3)
	jnc	00105$
;	ECEN4330Lab7.c:1442: addr1 = 0xFFFF;
	mov	_addr1,#0xff
	mov	(_addr1 + 1),#0xff
	sjmp	00106$
00105$:
;	ECEN4330Lab7.c:1445: addr1 = addr0 + (dataSize * dataType);
	mov	a,r6
	add	a,_addr0
	mov	_addr1,a
	mov	a,r7
	addc	a,(_addr0 + 1)
	mov	(_addr1 + 1),a
00106$:
;	ECEN4330Lab7.c:1447: dataSize = addr1 - addr0;
	mov	a,_addr1
	clr	c
	subb	a,_addr0
	mov	_dataSize,a
	mov	a,(_addr1 + 1)
	subb	a,(_addr0 + 1)
	mov	(_dataSize + 1),a
;	ECEN4330Lab7.c:1448: addr3 = addr2 + dataSize;
	mov	a,_dataSize
	add	a,_addr2
	mov	_addr3,a
	mov	a,(_dataSize + 1)
	addc	a,(_addr2 + 1)
	mov	(_addr3 + 1),a
00109$:
;	ECEN4330Lab7.c:1453: if(addr0 < addr2 && addr1 > addr2){
	clr	c
	mov	a,_addr0
	subb	a,_addr2
	mov	a,(_addr0 + 1)
	subb	a,(_addr2 + 1)
	jnc	00113$
	clr	c
	mov	a,_addr2
	subb	a,_addr1
	mov	a,(_addr2 + 1)
	subb	a,(_addr1 + 1)
	jnc	00113$
;	ECEN4330Lab7.c:1454: currAddr0 = addr1;
	mov	_currAddr0,_addr1
	mov	(_currAddr0 + 1),(_addr1 + 1)
;	ECEN4330Lab7.c:1455: for(currAddr1 = addr3; currAddr1 >= addr2; currAddr1--){
	mov	_currAddr1,_addr3
	mov	(_currAddr1 + 1),(_addr3 + 1)
00117$:
	clr	c
	mov	a,_currAddr1
	subb	a,_addr2
	mov	a,(_currAddr1 + 1)
	subb	a,(_addr2 + 1)
	jc	00114$
;	ECEN4330Lab7.c:1456: data = RAMread(currAddr0);
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	lcall	_RAMread
	mov	_data,dpl
;	ECEN4330Lab7.c:1457: RAMwrite(currAddr1, data);
	mov	_RAMwrite_PARM_2,_data
	mov	dpl,_currAddr1
	mov	dph,(_currAddr1 + 1)
	lcall	_RAMwrite
;	ECEN4330Lab7.c:1458: currAddr0--;
	dec	_currAddr0
	mov	a,#0xff
	cjne	a,_currAddr0,00166$
	dec	(_currAddr0 + 1)
00166$:
;	ECEN4330Lab7.c:1455: for(currAddr1 = addr3; currAddr1 >= addr2; currAddr1--){
	dec	_currAddr1
	mov	a,#0xff
	cjne	a,_currAddr1,00167$
	dec	(_currAddr1 + 1)
00167$:
	sjmp	00117$
00113$:
;	ECEN4330Lab7.c:1465: currAddr0 = addr0;
	mov	_currAddr0,_addr0
	mov	(_currAddr0 + 1),(_addr0 + 1)
;	ECEN4330Lab7.c:1466: for(currAddr1 = addr2; currAddr1 <= addr3; currAddr1++){
	mov	_currAddr1,_addr2
	mov	(_currAddr1 + 1),(_addr2 + 1)
00120$:
	clr	c
	mov	a,_addr3
	subb	a,_currAddr1
	mov	a,(_addr3 + 1)
	subb	a,(_currAddr1 + 1)
	jc	00114$
;	ECEN4330Lab7.c:1467: data = RAMread(currAddr0);
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	lcall	_RAMread
	mov	_data,dpl
;	ECEN4330Lab7.c:1468: RAMwrite(currAddr1, data);
	mov	_RAMwrite_PARM_2,_data
	mov	dpl,_currAddr1
	mov	dph,(_currAddr1 + 1)
	lcall	_RAMwrite
;	ECEN4330Lab7.c:1469: currAddr0++;
	inc	_currAddr0
	clr	a
	cjne	a,_currAddr0,00169$
	inc	(_currAddr0 + 1)
00169$:
;	ECEN4330Lab7.c:1466: for(currAddr1 = addr2; currAddr1 <= addr3; currAddr1++){
	inc	_currAddr1
	clr	a
	cjne	a,_currAddr1,00120$
	inc	(_currAddr1 + 1)
	sjmp	00120$
00114$:
;	ECEN4330Lab7.c:1474: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1475: setTextColor(GREEN, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07e0
	lcall	_setTextColor
;	ECEN4330Lab7.c:1476: LCD_string_write("\nMove complete.\n\n");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1477: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN4330Lab7.c:1478: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1479: LCD_string_write("Returning to\nmain menu.");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1480: delay(100);
	mov	dptr,#0x0064
;	ECEN4330Lab7.c:1481: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'COUNT'
;------------------------------------------------------------
;i                         Allocated to registers 
;------------------------------------------------------------
;	ECEN4330Lab7.c:1489: void COUNT(){
;	-----------------------------------------
;	 function COUNT
;	-----------------------------------------
_COUNT:
;	ECEN4330Lab7.c:1490: endAddrCalc = 0;
	clr	a
	mov	_endAddrCalc,a
	mov	(_endAddrCalc + 1),a
	mov	(_endAddrCalc + 2),a
	mov	(_endAddrCalc + 3),a
;	ECEN4330Lab7.c:1491: addr0 = 0;                      // Starting Address
	mov	_addr0,a
	mov	(_addr0 + 1),a
;	ECEN4330Lab7.c:1492: addr1 = 0;                      // End Address
	mov	_addr1,a
	mov	(_addr1 + 1),a
;	ECEN4330Lab7.c:1493: dataSize = 0;                   // Data Size
	mov	_dataSize,a
	mov	(_dataSize + 1),a
;	ECEN4330Lab7.c:1494: byte1 = 0;                       // Find Value
	mov	_byte1,a
	mov	(_byte1 + 1),a
;	ECEN4330Lab7.c:1495: count = 0;
	mov	_count,a
	mov	(_count + 1),a
;	ECEN4330Lab7.c:1496: addr3 = 0;						// Count overflow
	mov	_addr3,a
	mov	(_addr3 + 1),a
;	ECEN4330Lab7.c:1497: dataEnd = 0;
;	1-genFromRTrack replaced	mov	_dataEnd,#0x00
	mov	_dataEnd,a
;	ECEN4330Lab7.c:1500: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1501: LCD_string_write("\nEnter\nstarting RAM\naddress:\n\n  0x____");
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1502: cursor_x -= 4 * textsize * 6;
	mov	a,_textsize
	mov	b,#0x18
	mul	ab
	mov	r6,a
	mov	r7,b
	mov	a,_cursor_x
	clr	c
	subb	a,r6
	mov	_cursor_x,a
	mov	a,(_cursor_x + 1)
	subb	a,r7
	mov	(_cursor_x + 1),a
;	ECEN4330Lab7.c:1503: inputRead16();                  // Read input
	lcall	_inputRead16
;	ECEN4330Lab7.c:1504: addr0 = input16;                // Start address
	mov	_addr0,_input16
	mov	(_addr0 + 1),(_input16 + 1)
;	ECEN4330Lab7.c:1507: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1508: inputDataSize();                // Prompt & read input
	lcall	_inputDataSize
;	ECEN4330Lab7.c:1511: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1512: LCD_string_write("\nEnter search\nvalue:\n\n  0x__");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1513: cursor_x -= 2 * textsize * 6;
	mov	a,_textsize
	mov	b,#0x0c
	mul	ab
	mov	r6,a
	mov	r7,b
	mov	a,_cursor_x
	clr	c
	subb	a,r6
	mov	_cursor_x,a
	mov	a,(_cursor_x + 1)
	subb	a,r7
	mov	(_cursor_x + 1),a
;	ECEN4330Lab7.c:1514: inputRead8();                  // Read input
	lcall	_inputRead8
;	ECEN4330Lab7.c:1515: byte1 = input8;                 // Find value
	mov	_byte1,_input8
	mov	(_byte1 + 1),#0x00
;	ECEN4330Lab7.c:1518: endAddrCalc = addr0 + dataSize;
	mov	a,_dataSize
	add	a,_addr0
	mov	r6,a
	mov	a,(_dataSize + 1)
	addc	a,(_addr0 + 1)
	mov	r7,a
	mov	_endAddrCalc,r6
	mov	(_endAddrCalc + 1),r7
	mov	(_endAddrCalc + 2),#0x00
	mov	(_endAddrCalc + 3),#0x00
;	ECEN4330Lab7.c:1519: if(endAddrCalc < addr0){ // RAM overflow
	mov	r4,_addr0
	mov	r5,(_addr0 + 1)
	mov	r6,#0x00
	mov	r7,#0x00
	clr	c
	mov	a,_endAddrCalc
	subb	a,r4
	mov	a,(_endAddrCalc + 1)
	subb	a,r5
	mov	a,(_endAddrCalc + 2)
	subb	a,r6
	mov	a,(_endAddrCalc + 3)
	subb	a,r7
	jnc	00102$
;	ECEN4330Lab7.c:1520: addr1 = 0xFFFF;             // Set end address
	mov	_addr1,#0xff
;	ECEN4330Lab7.c:1521: dataSize = addr1 - addr0;   // Recalculate data size
	mov	a,#0xff
	mov	(_addr1 + 1),a
	clr	c
	subb	a,_addr0
	mov	_dataSize,a
	mov	a,#0xff
	subb	a,(_addr0 + 1)
	mov	(_dataSize + 1),a
	sjmp	00103$
00102$:
;	ECEN4330Lab7.c:1524: addr1 = addr0 + dataSize;
	mov	a,_dataSize
	add	a,_addr0
	mov	_addr1,a
	mov	a,(_dataSize + 1)
	addc	a,(_addr0 + 1)
	mov	(_addr1 + 1),a
00103$:
;	ECEN4330Lab7.c:1542: int i = addr0;
	mov	r6,_addr0
	mov	r7,(_addr0 + 1)
;	ECEN4330Lab7.c:1543: while(i <= addr1 && dataEnd == 0){
00111$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,_addr1
	subb	a,r4
	mov	a,(_addr1 + 1)
	subb	a,r5
	jc	00113$
	mov	a,_dataEnd
	jnz	00113$
;	ECEN4330Lab7.c:1544: data = RAMread(i);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_RAMread
	mov	_data,dpl
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:1545: if(data == byte1){
	mov	r4,_data
	mov	r5,#0x00
	mov	a,r4
	cjne	a,_byte1,00107$
	mov	a,r5
	cjne	a,(_byte1 + 1),00107$
;	ECEN4330Lab7.c:1546: if(count == 0xFFFF){
	mov	a,#0xff
	cjne	a,_count,00105$
	cjne	a,(_count + 1),00105$
;	ECEN4330Lab7.c:1547: addr3 = 1;
	mov	_addr3,#0x01
	mov	(_addr3 + 1),#0x00
00105$:
;	ECEN4330Lab7.c:1549: count++;
	inc	_count
	clr	a
	cjne	a,_count,00173$
	inc	(_count + 1)
00173$:
00107$:
;	ECEN4330Lab7.c:1551: if(i == 0xFFFF){
	mov	ar4,r6
	mov	ar5,r7
	cjne	r4,#0xff,00109$
	cjne	r5,#0xff,00109$
;	ECEN4330Lab7.c:1552: dataEnd = 1;
	mov	_dataEnd,#0x01
00109$:
;	ECEN4330Lab7.c:1554: i++;
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
	sjmp	00111$
00113$:
;	ECEN4330Lab7.c:1557: if(count > 0 || addr3 == 1){
	mov	a,_count
	orl	a,(_count + 1)
	jnz	00119$
	mov	a,#0x01
	cjne	a,_addr3,00178$
	dec	a
	cjne	a,(_addr3 + 1),00178$
	sjmp	00179$
00178$:
	sjmp	00120$
00179$:
00119$:
;	ECEN4330Lab7.c:1558: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1559: setTextColor(GREEN, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07e0
	lcall	_setTextColor
;	ECEN4330Lab7.c:1560: LCD_string_write("\n0x");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1561: HEXtoASCII_8write(byte1);
	mov	dpl,_byte1
	lcall	_HEXtoASCII_8write
;	ECEN4330Lab7.c:1562: LCD_string_write(" found\n");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1564: if(count > 0){
	mov	a,_count
	orl	a,(_count + 1)
	jz	00117$
;	ECEN4330Lab7.c:1565: HEXtoASCII_16write(count);
	mov	dpl,_count
	mov	dph,(_count + 1)
	lcall	_HEXtoASCII_16write
	sjmp	00118$
00117$:
;	ECEN4330Lab7.c:1567: else if(addr3 == 1){
	mov	a,#0x01
	cjne	a,_addr3,00181$
	dec	a
	cjne	a,(_addr3 + 1),00181$
	sjmp	00182$
00181$:
	sjmp	00118$
00182$:
;	ECEN4330Lab7.c:1568: LCD_string_write("0x10000");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_LCD_string_write
00118$:
;	ECEN4330Lab7.c:1570: LCD_string_write("\ntimes.");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1571: delay(300);
	mov	dptr,#0x012c
	lcall	_delay
;	ECEN4330Lab7.c:1572: FIND_display();                 // Display dump data
	ljmp	_FIND_display
00120$:
;	ECEN4330Lab7.c:1575: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1576: LCD_string_write("\n0x");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1577: HEXtoASCII_8write(byte1);
	mov	dpl,_byte1
	lcall	_HEXtoASCII_8write
;	ECEN4330Lab7.c:1578: LCD_string_write(" not\nfound in\nexternal RAM\n");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1579: HEXtoASCII_16write(addr0);
	mov	dpl,_addr0
	mov	dph,(_addr0 + 1)
	lcall	_HEXtoASCII_16write
;	ECEN4330Lab7.c:1580: LCD_string_write(" -\n");
	mov	dptr,#___str_32
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1581: HEXtoASCII_16write(addr1);
	mov	dpl,_addr1
	mov	dph,(_addr1 + 1)
	lcall	_HEXtoASCII_16write
;	ECEN4330Lab7.c:1582: delay(300);
	mov	dptr,#0x012c
	lcall	_delay
;	ECEN4330Lab7.c:1583: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1584: LCD_string_write("Returning to\nmain menu.");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1585: delay(200);
	mov	dptr,#0x00c8
;	ECEN4330Lab7.c:1587: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'DUMP_display'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	ECEN4330Lab7.c:1595: void DUMP_display(){
;	-----------------------------------------
;	 function DUMP_display
;	-----------------------------------------
_DUMP_display:
;	ECEN4330Lab7.c:1598: currAddr1 = 0;              // Page Count
	clr	a
	mov	_currAddr1,a
	mov	(_currAddr1 + 1),a
;	ECEN4330Lab7.c:1599: dataEnd = 0;
;	1-genFromRTrack replaced	mov	_dataEnd,#0x00
	mov	_dataEnd,a
;	ECEN4330Lab7.c:1600: addr2 = 0;					// Prev data count
	mov	_addr2,a
	mov	(_addr2 + 1),a
;	ECEN4330Lab7.c:1602: currAddr0 = addr0;          // Set current address
	mov	_currAddr0,_addr0
	mov	(_currAddr0 + 1),(_addr0 + 1)
;	ECEN4330Lab7.c:1604: do{
00134$:
;	ECEN4330Lab7.c:1605: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1606: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	ECEN4330Lab7.c:1607: LCD_string_write("\n");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1610: if(dataSize >= 10){
	clr	c
	mov	a,_dataSize
	subb	a,#0x0a
	mov	a,(_dataSize + 1)
	subb	a,#0x00
	jnc	00258$
	ljmp	00119$
00258$:
;	ECEN4330Lab7.c:1611: addr2 = 10;
	mov	_addr2,#0x0a
	mov	(_addr2 + 1),#0x00
;	ECEN4330Lab7.c:1613: for(i = 0; i < 10; i++){
	mov	r6,#0x00
	mov	r7,#0x00
00140$:
;	ECEN4330Lab7.c:1614: HEXtoASCII_16write(currAddr0);
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	push	ar7
	push	ar6
	lcall	_HEXtoASCII_16write
;	ECEN4330Lab7.c:1615: LCD_string_write(": 0x");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:1616: for(j = 0; j < dataType; j++){
	mov	r4,#0x00
	mov	r5,#0x00
00138$:
	mov	r2,_dataType
	mov	r3,#0x00
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	ECEN4330Lab7.c:1617: HEXtoASCII_8write(RAMread(currAddr0));
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_RAMread
	lcall	_HEXtoASCII_8write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:1618: currAddr0++;
	inc	_currAddr0
	clr	a
	cjne	a,_currAddr0,00260$
	inc	(_currAddr0 + 1)
00260$:
;	ECEN4330Lab7.c:1616: for(j = 0; j < dataType; j++){
	inc	r4
	cjne	r4,#0x00,00138$
	inc	r5
	sjmp	00138$
00101$:
;	ECEN4330Lab7.c:1620: LCD_string_write("\n");
	mov	dptr,#___str_33
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:1621: dataSize--;
	dec	_dataSize
	mov	a,#0xff
	cjne	a,_dataSize,00262$
	dec	(_dataSize + 1)
00262$:
;	ECEN4330Lab7.c:1613: for(i = 0; i < 10; i++){
	inc	r6
	cjne	r6,#0x00,00263$
	inc	r7
00263$:
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00264$
	ljmp	00140$
00264$:
;	ECEN4330Lab7.c:1623: currAddr1++;        // Next page
	inc	_currAddr1
	clr	a
	cjne	a,_currAddr1,00265$
	inc	(_currAddr1 + 1)
00265$:
	ljmp	00120$
00119$:
;	ECEN4330Lab7.c:1627: else if(dataSize > 0 && dataSize < 10){
	mov	a,_dataSize
	orl	a,(_dataSize + 1)
	jnz	00266$
	ljmp	00115$
00266$:
	clr	c
	mov	a,_dataSize
	subb	a,#0x0a
	mov	a,(_dataSize + 1)
	subb	a,#0x00
	jc	00267$
	ljmp	00115$
00267$:
;	ECEN4330Lab7.c:1628: addr2 = dataSize;
	mov	_addr2,_dataSize
	mov	(_addr2 + 1),(_dataSize + 1)
;	ECEN4330Lab7.c:1630: while(dataSize > 0){
00104$:
	mov	a,_dataSize
	orl	a,(_dataSize + 1)
	jz	00106$
;	ECEN4330Lab7.c:1631: HEXtoASCII_16write(currAddr0);
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	lcall	_HEXtoASCII_16write
;	ECEN4330Lab7.c:1632: LCD_string_write(": 0x");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1633: for(j = 0; j < dataType; j++){
	mov	r6,#0x00
	mov	r7,#0x00
00143$:
	mov	r4,_dataType
	mov	r5,#0x00
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	ECEN4330Lab7.c:1634: HEXtoASCII_8write(RAMread(currAddr0));
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	push	ar7
	push	ar6
	lcall	_RAMread
	lcall	_HEXtoASCII_8write
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:1635: currAddr0++;
	inc	_currAddr0
	clr	a
	cjne	a,_currAddr0,00270$
	inc	(_currAddr0 + 1)
00270$:
;	ECEN4330Lab7.c:1633: for(j = 0; j < dataType; j++){
	inc	r6
	cjne	r6,#0x00,00143$
	inc	r7
	sjmp	00143$
00103$:
;	ECEN4330Lab7.c:1637: LCD_string_write("\n");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1638: dataSize--;
	dec	_dataSize
	mov	a,#0xff
	cjne	a,_dataSize,00272$
	dec	(_dataSize + 1)
00272$:
	sjmp	00104$
00106$:
;	ECEN4330Lab7.c:1640: if(addr3 > 0){
	mov	a,_addr3
	orl	a,(_addr3 + 1)
	jz	00109$
;	ECEN4330Lab7.c:1641: HEXtoASCII_16write(currAddr0);
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	lcall	_HEXtoASCII_16write
;	ECEN4330Lab7.c:1642: LCD_string_write(": 0x");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1643: for(j = 0; j < addr3; j++){
	mov	r6,#0x00
	mov	r7,#0x00
00146$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,r4
	subb	a,_addr3
	mov	a,r5
	subb	a,(_addr3 + 1)
	jnc	00107$
;	ECEN4330Lab7.c:1644: HEXtoASCII_8write(RAMread(currAddr0));
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	push	ar7
	push	ar6
	lcall	_RAMread
	lcall	_HEXtoASCII_8write
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:1645: currAddr0++;
	inc	_currAddr0
	clr	a
	cjne	a,_currAddr0,00275$
	inc	(_currAddr0 + 1)
00275$:
;	ECEN4330Lab7.c:1643: for(j = 0; j < addr3; j++){
	inc	r6
	cjne	r6,#0x00,00146$
	inc	r7
	sjmp	00146$
00107$:
;	ECEN4330Lab7.c:1647: currAddr0 -= addr3;
	mov	a,_currAddr0
	clr	c
	subb	a,_addr3
	mov	_currAddr0,a
	mov	a,(_currAddr0 + 1)
	subb	a,(_addr3 + 1)
	mov	(_currAddr0 + 1),a
;	ECEN4330Lab7.c:1648: LCD_string_write("\n");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_LCD_string_write
00109$:
;	ECEN4330Lab7.c:1650: currAddr1++; 
	inc	_currAddr1
	clr	a
	cjne	a,_currAddr1,00120$
	inc	(_currAddr1 + 1)
	sjmp	00120$
00115$:
;	ECEN4330Lab7.c:1653: else if(dataSize == 0 && addr3 > 0){
	mov	a,_dataSize
	orl	a,(_dataSize + 1)
	jnz	00120$
	mov	a,_addr3
	orl	a,(_addr3 + 1)
	jz	00120$
;	ECEN4330Lab7.c:1654: addr2 = dataSize;
	mov	_addr2,_dataSize
	mov	(_addr2 + 1),(_dataSize + 1)
;	ECEN4330Lab7.c:1655: HEXtoASCII_16write(currAddr0);
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	lcall	_HEXtoASCII_16write
;	ECEN4330Lab7.c:1656: LCD_string_write(": 0x");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1657: for(j = 0; j < addr3; j++){
	mov	r6,#0x00
	mov	r7,#0x00
00149$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,r4
	subb	a,_addr3
	mov	a,r5
	subb	a,(_addr3 + 1)
	jnc	00110$
;	ECEN4330Lab7.c:1658: HEXtoASCII_8write(RAMread(currAddr0));
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	push	ar7
	push	ar6
	lcall	_RAMread
	lcall	_HEXtoASCII_8write
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:1659: currAddr0++;
	inc	_currAddr0
	clr	a
	cjne	a,_currAddr0,00281$
	inc	(_currAddr0 + 1)
00281$:
;	ECEN4330Lab7.c:1657: for(j = 0; j < addr3; j++){
	inc	r6
	cjne	r6,#0x00,00149$
	inc	r7
	sjmp	00149$
00110$:
;	ECEN4330Lab7.c:1661: LCD_string_write("\n");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1662: currAddr1++; 
	inc	_currAddr1
	clr	a
	cjne	a,_currAddr1,00283$
	inc	(_currAddr1 + 1)
00283$:
;	ECEN4330Lab7.c:1663: currAddr0 -= addr3;
	mov	a,_currAddr0
	clr	c
	subb	a,_addr3
	mov	_currAddr0,a
	mov	a,(_currAddr0 + 1)
	subb	a,(_addr3 + 1)
	mov	(_currAddr0 + 1),a
00120$:
;	ECEN4330Lab7.c:1667: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	ECEN4330Lab7.c:1668: LCD_string_write("  (0) - Next Page\n  (1) - Prev Page\n  (E) - END\n");
	mov	dptr,#___str_34
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1669: HEXtoASCII_16write(currAddr1);
	mov	dpl,_currAddr1
	mov	dph,(_currAddr1 + 1)
	lcall	_HEXtoASCII_16write
;	ECEN4330Lab7.c:1670: key = keyDetect();
	lcall	_keyDetect
	mov	_key,dpl
;	ECEN4330Lab7.c:1671: switch (key)
	mov	a,#0x30
	cjne	a,_key,00284$
	sjmp	00121$
00284$:
	mov	a,#0x31
	cjne	a,_key,00285$
	sjmp	00125$
00285$:
	mov	a,#0x45
	cjne	a,_key,00286$
	ljmp	00129$
00286$:
	ljmp	00130$
;	ECEN4330Lab7.c:1675: case '0':
00121$:
;	ECEN4330Lab7.c:1676: validInput = 1;
	mov	_validInput,#0x01
;	ECEN4330Lab7.c:1679: if(dataSize > 0){
	mov	a,_dataSize
	orl	a,(_dataSize + 1)
	jz	00123$
;	ECEN4330Lab7.c:1680: dataEnd = 0;
	mov	_dataEnd,#0x00
	ljmp	00135$
00123$:
;	ECEN4330Lab7.c:1686: dataEnd = 0;
	mov	_dataEnd,#0x00
;	ECEN4330Lab7.c:1687: currAddr0 -= (addr2 * dataType); // 1st address of previous page displayed
	mov	__mulint_PARM_2,_dataType
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,_addr2
	mov	dph,(_addr2 + 1)
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,_currAddr0
	clr	c
	subb	a,r6
	mov	_currAddr0,a
	mov	a,(_currAddr0 + 1)
	subb	a,r7
	mov	(_currAddr0 + 1),a
;	ECEN4330Lab7.c:1688: dataSize += addr2;  // restore data size of previous page
	mov	a,_addr2
	add	a,_dataSize
	mov	_dataSize,a
	mov	a,(_addr2 + 1)
	addc	a,(_dataSize + 1)
	mov	(_dataSize + 1),a
;	ECEN4330Lab7.c:1689: currAddr1--;
	dec	_currAddr1
	mov	a,#0xff
	cjne	a,_currAddr1,00288$
	dec	(_currAddr1 + 1)
00288$:
;	ECEN4330Lab7.c:1690: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1691: LCD_string_write("\nEnd of Data.");
	mov	dptr,#___str_35
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1692: delay(200);
	mov	dptr,#0x00c8
	lcall	_delay
;	ECEN4330Lab7.c:1694: break;
	ljmp	00135$
;	ECEN4330Lab7.c:1697: case '1':
00125$:
;	ECEN4330Lab7.c:1700: if(currAddr1 > 1){
	clr	c
	mov	a,#0x01
	subb	a,_currAddr1
	clr	a
	subb	a,(_currAddr1 + 1)
	jnc	00127$
;	ECEN4330Lab7.c:1701: dataEnd = 0;
	mov	_dataEnd,#0x00
;	ECEN4330Lab7.c:1702: currAddr0 -= ((addr2 + 10) * dataType);
	mov	a,#0x0a
	add	a,_addr2
	mov	r6,a
	clr	a
	addc	a,(_addr2 + 1)
	mov	r7,a
	mov	__mulint_PARM_2,_dataType
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,_currAddr0
	clr	c
	subb	a,r4
	mov	_currAddr0,a
	mov	a,(_currAddr0 + 1)
	subb	a,r5
	mov	(_currAddr0 + 1),a
;	ECEN4330Lab7.c:1703: currAddr1 -= 2;
	mov	a,_currAddr1
	add	a,#0xfe
	mov	_currAddr1,a
	mov	a,(_currAddr1 + 1)
	addc	a,#0xff
	mov	(_currAddr1 + 1),a
;	ECEN4330Lab7.c:1704: dataSize += (addr2 + 10);
	mov	a,r6
	add	a,_dataSize
	mov	_dataSize,a
	mov	a,r7
	addc	a,(_dataSize + 1)
	mov	(_dataSize + 1),a
	ljmp	00135$
00127$:
;	ECEN4330Lab7.c:1709: dataEnd = 0;
	mov	_dataEnd,#0x00
;	ECEN4330Lab7.c:1710: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1711: LCD_string_write("End of Data");
	mov	dptr,#___str_36
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1712: delay(200);
	mov	dptr,#0x00c8
	lcall	_delay
;	ECEN4330Lab7.c:1713: currAddr0 -= (addr2 * dataType);
	mov	__mulint_PARM_2,_dataType
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,_addr2
	mov	dph,(_addr2 + 1)
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,_currAddr0
	clr	c
	subb	a,r6
	mov	_currAddr0,a
	mov	a,(_currAddr0 + 1)
	subb	a,r7
	mov	(_currAddr0 + 1),a
;	ECEN4330Lab7.c:1714: currAddr1--;
	dec	_currAddr1
	mov	a,#0xff
	cjne	a,_currAddr1,00290$
	dec	(_currAddr1 + 1)
00290$:
;	ECEN4330Lab7.c:1715: dataSize += addr2;
	mov	a,_addr2
	add	a,_dataSize
	mov	_dataSize,a
	mov	a,(_addr2 + 1)
	addc	a,(_dataSize + 1)
	mov	(_dataSize + 1),a
;	ECEN4330Lab7.c:1717: break;
;	ECEN4330Lab7.c:1720: case 'E':
	sjmp	00135$
00129$:
;	ECEN4330Lab7.c:1721: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1722: LCD_string_write("\nReturning to\nMain Menu.");
	mov	dptr,#___str_37
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1723: delay(200);
	mov	dptr,#0x00c8
	lcall	_delay
;	ECEN4330Lab7.c:1724: dataEnd = 1;
	mov	_dataEnd,#0x01
;	ECEN4330Lab7.c:1725: break;
;	ECEN4330Lab7.c:1728: default:
	sjmp	00135$
00130$:
;	ECEN4330Lab7.c:1729: dataEnd = 0;
	mov	_dataEnd,#0x00
;	ECEN4330Lab7.c:1730: invalidInput();
	lcall	_invalidInput
;	ECEN4330Lab7.c:1731: if(addr2 > 0 ){
	mov	a,_addr2
	orl	a,(_addr2 + 1)
	jz	00135$
;	ECEN4330Lab7.c:1732: currAddr0 -= (addr2 * dataType);
	mov	__mulint_PARM_2,_dataType
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,_addr2
	mov	dph,(_addr2 + 1)
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,_currAddr0
	clr	c
	subb	a,r6
	mov	_currAddr0,a
	mov	a,(_currAddr0 + 1)
	subb	a,r7
	mov	(_currAddr0 + 1),a
;	ECEN4330Lab7.c:1733: currAddr1 --;
	dec	_currAddr1
	mov	a,#0xff
	cjne	a,_currAddr1,00292$
	dec	(_currAddr1 + 1)
00292$:
;	ECEN4330Lab7.c:1734: dataSize += addr2;
	mov	a,_addr2
	add	a,_dataSize
	mov	_dataSize,a
	mov	a,(_addr2 + 1)
	addc	a,(_dataSize + 1)
	mov	(_dataSize + 1),a
;	ECEN4330Lab7.c:1735: addr2 = 0;
	clr	a
	mov	_addr2,a
	mov	(_addr2 + 1),a
;	ECEN4330Lab7.c:1738: }
00135$:
;	ECEN4330Lab7.c:1739: } while(dataEnd == 0);
	mov	a,_dataEnd
	jnz	00293$
	ljmp	00134$
00293$:
;	ECEN4330Lab7.c:1740: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DUMP'
;------------------------------------------------------------
;	ECEN4330Lab7.c:1748: void DUMP(){
;	-----------------------------------------
;	 function DUMP
;	-----------------------------------------
_DUMP:
;	ECEN4330Lab7.c:1749: endAddrCalc = 0;
	clr	a
	mov	_endAddrCalc,a
	mov	(_endAddrCalc + 1),a
	mov	(_endAddrCalc + 2),a
	mov	(_endAddrCalc + 3),a
;	ECEN4330Lab7.c:1750: addr0 = 0;                      // Source Address
	mov	_addr0,a
	mov	(_addr0 + 1),a
;	ECEN4330Lab7.c:1751: addr1 = 0;                      // Source End Address
	mov	_addr1,a
	mov	(_addr1 + 1),a
;	ECEN4330Lab7.c:1752: dataType = 0;                   // Data Type
;	1-genFromRTrack replaced	mov	_dataType,#0x00
	mov	_dataType,a
;	ECEN4330Lab7.c:1753: dataSize = 0;                   // Data Size
	mov	_dataSize,a
	mov	(_dataSize + 1),a
;	ECEN4330Lab7.c:1754: addr3 = 0;						// Remainder
	mov	_addr3,a
	mov	(_addr3 + 1),a
;	ECEN4330Lab7.c:1757: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1758: LCD_string_write("\nEnter source\nstarting RAM\naddress:\n\n  0x____");
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1759: cursor_x -= 4 * textsize * 6;
	mov	a,_textsize
	mov	b,#0x18
	mul	ab
	mov	r6,a
	mov	r7,b
	mov	a,_cursor_x
	clr	c
	subb	a,r6
	mov	_cursor_x,a
	mov	a,(_cursor_x + 1)
	subb	a,r7
	mov	(_cursor_x + 1),a
;	ECEN4330Lab7.c:1760: inputRead16();                  // Read input
	lcall	_inputRead16
;	ECEN4330Lab7.c:1761: addr0 = input16;                // Set starting address
	mov	_addr0,_input16
	mov	(_addr0 + 1),(_input16 + 1)
;	ECEN4330Lab7.c:1764: inputDataType();                // Prompt & read input
	lcall	_inputDataType
;	ECEN4330Lab7.c:1767: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1768: inputDataSize();                // Prompt & read input
	lcall	_inputDataSize
;	ECEN4330Lab7.c:1771: endAddrCalc = addr0 + (dataType * dataSize);
	mov	r6,_dataType
	mov	r7,#0x00
	mov	__mulint_PARM_2,_dataSize
	mov	(__mulint_PARM_2 + 1),(_dataSize + 1)
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,_addr0
	mov	r2,a
	mov	a,r5
	addc	a,(_addr0 + 1)
	mov	r3,a
	mov	_endAddrCalc,r2
	mov	(_endAddrCalc + 1),r3
	mov	(_endAddrCalc + 2),#0x00
	mov	(_endAddrCalc + 3),#0x00
;	ECEN4330Lab7.c:1772: if(endAddrCalc < addr0){ // RAM overflow
	mov	r0,_addr0
	mov	r1,(_addr0 + 1)
	mov	r2,#0x00
	mov	r3,#0x00
	clr	c
	mov	a,_endAddrCalc
	subb	a,r0
	mov	a,(_endAddrCalc + 1)
	subb	a,r1
	mov	a,(_endAddrCalc + 2)
	subb	a,r2
	mov	a,(_endAddrCalc + 3)
	subb	a,r3
	jnc	00102$
;	ECEN4330Lab7.c:1773: addr1 = 0xFFFF;             // Set end address
	mov	_addr1,#0xff
	mov	(_addr1 + 1),#0xff
	sjmp	00103$
00102$:
;	ECEN4330Lab7.c:1776: addr1 = addr0 + (dataType * dataSize) - 1;
	mov	a,r4
	add	a,_addr0
	mov	r4,a
	mov	a,r5
	addc	a,(_addr0 + 1)
	mov	r5,a
	mov	a,r4
	add	a,#0xff
	mov	_addr1,a
	mov	a,r5
	addc	a,#0xff
	mov	(_addr1 + 1),a
00103$:
;	ECEN4330Lab7.c:1778: dataSize = ((addr1 - addr0) + 1) / dataType;   // Recalculate data size
	mov	a,_addr1
	clr	c
	subb	a,_addr0
	mov	r4,a
	mov	a,(_addr1 + 1)
	subb	a,(_addr0 + 1)
	mov	r5,a
	inc	r4
	cjne	r4,#0x00,00111$
	inc	r5
00111$:
	mov	__divuint_PARM_2,r6
	mov	(__divuint_PARM_2 + 1),r7
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__divuint
	mov	_dataSize,dpl
	mov	(_dataSize + 1),dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:1779: addr3 = ((addr1 - addr0) + 1) % dataType;
	mov	__moduint_PARM_2,r6
	mov	(__moduint_PARM_2 + 1),r7
	mov	dpl,r4
	mov	dph,r5
	lcall	__moduint
	mov	_addr3,dpl
	mov	(_addr3 + 1),dph
;	ECEN4330Lab7.c:1798: DUMP_display();                 // Display dump data
;	ECEN4330Lab7.c:1799: }
	ljmp	_DUMP_display
;------------------------------------------------------------
;Allocation info for local variables in function 'EDIT_display'
;------------------------------------------------------------
;addr                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	ECEN4330Lab7.c:1809: void EDIT_display(unsigned int addr){
;	-----------------------------------------
;	 function EDIT_display
;	-----------------------------------------
_EDIT_display:
;	ECEN4330Lab7.c:1812: data = RAMread(addr);
	mov	r6,dpl
	mov  r7,dph
	push	ar7
	push	ar6
	lcall	_RAMread
	mov	_data,dpl
;	ECEN4330Lab7.c:1815: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1816: LCD_string_write("\n");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_LCD_string_write
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:1817: HEXtoASCII_16write(addr);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_HEXtoASCII_16write
;	ECEN4330Lab7.c:1818: LCD_string_write(": 0x");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1819: HEXtoASCII_8write(data);
	mov	dpl,_data
	lcall	_HEXtoASCII_8write
;	ECEN4330Lab7.c:1822: LCD_string_write("\n\nNew value:\n  0x__");
	mov	dptr,#___str_39
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1823: cursor_x -= 2 * textsize * 6;
	mov	a,_textsize
	mov	b,#0x0c
	mul	ab
	mov	r4,a
	mov	r5,b
	mov	a,_cursor_x
	clr	c
	subb	a,r4
	mov	_cursor_x,a
	mov	a,(_cursor_x + 1)
	subb	a,r5
	mov	(_cursor_x + 1),a
;	ECEN4330Lab7.c:1824: inputRead8();
	lcall	_inputRead8
	pop	ar6
	pop	ar7
;	ECEN4330Lab7.c:1825: RAMwrite(addr, input8);
	mov	_RAMwrite_PARM_2,_input8
	mov	dpl,r6
	mov	dph,r7
	lcall	_RAMwrite
;	ECEN4330Lab7.c:1828: LCD_string_write("\n\n\n\n(1) Edit next\nRAM location\n\n");
	mov	dptr,#___str_40
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1829: LCD_string_write("(E) End");
	mov	dptr,#___str_41
	mov	b,#0x80
;	ECEN4330Lab7.c:1830: }
	ljmp	_LCD_string_write
;------------------------------------------------------------
;Allocation info for local variables in function 'EDIT'
;------------------------------------------------------------
;	ECEN4330Lab7.c:1843: void EDIT(){
;	-----------------------------------------
;	 function EDIT
;	-----------------------------------------
_EDIT:
;	ECEN4330Lab7.c:1844: dataEnd = 0;
	mov	_dataEnd,#0x00
;	ECEN4330Lab7.c:1845: scrollEnd = 0;
	mov	_scrollEnd,#0x00
;	ECEN4330Lab7.c:1846: validInput = 0;
	mov	_validInput,#0x00
;	ECEN4330Lab7.c:1849: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1850: LCD_string_write("\nEnter\nstarting RAM\naddress:\n\n  0x____");
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1851: cursor_x -= 4 * textsize * 6;
	mov	a,_textsize
	mov	b,#0x18
	mul	ab
	mov	r6,a
	mov	r7,b
	mov	a,_cursor_x
	clr	c
	subb	a,r6
	mov	_cursor_x,a
	mov	a,(_cursor_x + 1)
	subb	a,r7
	mov	(_cursor_x + 1),a
;	ECEN4330Lab7.c:1854: inputRead16();
	lcall	_inputRead16
;	ECEN4330Lab7.c:1857: while(scrollEnd == 0 && dataEnd == 0){
00112$:
	mov	a,_scrollEnd
	jnz	00114$
	mov	a,_dataEnd
	jnz	00114$
;	ECEN4330Lab7.c:1860: do
00108$:
;	ECEN4330Lab7.c:1862: EDIT_display(input16);
	mov	dpl,_input16
	mov	dph,(_input16 + 1)
	lcall	_EDIT_display
;	ECEN4330Lab7.c:1863: key = keyDetect();
	lcall	_keyDetect
	mov	_key,dpl
;	ECEN4330Lab7.c:1865: switch (key)
	mov	a,#0x31
	cjne	a,_key,00153$
	sjmp	00101$
00153$:
	mov	a,#0x45
;	ECEN4330Lab7.c:1869: case '1':
	cjne	a,_key,00106$
	sjmp	00105$
00101$:
;	ECEN4330Lab7.c:1870: validInput = 1;
	mov	_validInput,#0x01
;	ECEN4330Lab7.c:1873: if(input16 == 0xFFFF){
	mov	a,#0xff
	cjne	a,_input16,00103$
	cjne	a,(_input16 + 1),00103$
;	ECEN4330Lab7.c:1874: scrollEnd = 1;
	mov	_scrollEnd,#0x01
	sjmp	00109$
00103$:
;	ECEN4330Lab7.c:1879: input16++;
	inc	_input16
	clr	a
	cjne	a,_input16,00157$
	inc	(_input16 + 1)
00157$:
;	ECEN4330Lab7.c:1880: scrollEnd = 0;
	mov	_scrollEnd,#0x00
;	ECEN4330Lab7.c:1882: break;
;	ECEN4330Lab7.c:1885: case 'E':
	sjmp	00109$
00105$:
;	ECEN4330Lab7.c:1886: validInput = 1;
	mov	_validInput,#0x01
;	ECEN4330Lab7.c:1887: dataEnd = 1;
	mov	_dataEnd,#0x01
;	ECEN4330Lab7.c:1888: break;
;	ECEN4330Lab7.c:1891: default:
	sjmp	00109$
00106$:
;	ECEN4330Lab7.c:1892: validInput = 0;
	mov	_validInput,#0x00
;	ECEN4330Lab7.c:1893: invalidInput();
	lcall	_invalidInput
;	ECEN4330Lab7.c:1895: }
00109$:
;	ECEN4330Lab7.c:1896: } while (validInput == 0);
	mov	a,_validInput
	jz	00108$
	sjmp	00112$
00114$:
;	ECEN4330Lab7.c:1900: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1901: if(scrollEnd == 1){
	mov	a,#0x01
	cjne	a,_scrollEnd,00116$
;	ECEN4330Lab7.c:1902: setTextColor(RED, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xf800
	lcall	_setTextColor
;	ECEN4330Lab7.c:1903: LCD_string_write("\nEnd of data.\n");
	mov	dptr,#___str_42
	mov	b,#0x80
	lcall	_LCD_string_write
00116$:
;	ECEN4330Lab7.c:1907: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1908: LCD_string_write("\nReturning to\nmain menu.");
	mov	dptr,#___str_43
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1909: delay(200);
	mov	dptr,#0x00c8
;	ECEN4330Lab7.c:1910: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'FIND_display'
;------------------------------------------------------------
;	ECEN4330Lab7.c:1924: void FIND_display(){
;	-----------------------------------------
;	 function FIND_display
;	-----------------------------------------
_FIND_display:
;	ECEN4330Lab7.c:1925: addr2 = 0;						// first addr of page
	clr	a
	mov	_addr2,a
	mov	(_addr2 + 1),a
;	ECEN4330Lab7.c:1926: currAddr1 = 0;					// page count
	mov	_currAddr1,a
	mov	(_currAddr1 + 1),a
;	ECEN4330Lab7.c:1927: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1928: currAddr0 = addr0;				// Load starting address
	mov	_currAddr0,_addr0
	mov	(_currAddr0 + 1),(_addr0 + 1)
;	ECEN4330Lab7.c:1929: data = RAMread(currAddr0);		// Read data from starting address
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	lcall	_RAMread
	mov	_data,dpl
;	ECEN4330Lab7.c:1932: while(data != byte1 && currAddr0 < addr1){
00102$:
	mov	r6,_data
	mov	r7,#0x00
	mov	a,r6
	cjne	a,_byte1,00235$
	mov	a,r7
	cjne	a,(_byte1 + 1),00235$
	sjmp	00104$
00235$:
	clr	c
	mov	a,_currAddr0
	subb	a,_addr1
	mov	a,(_currAddr0 + 1)
	subb	a,(_addr1 + 1)
	jnc	00104$
;	ECEN4330Lab7.c:1933: currAddr0++;				// Next RAM address
	inc	_currAddr0
	clr	a
	cjne	a,_currAddr0,00237$
	inc	(_currAddr0 + 1)
00237$:
;	ECEN4330Lab7.c:1934: data = RAMread(currAddr0);	// Read data from RAM
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	lcall	_RAMread
	mov	_data,dpl
	sjmp	00102$
00104$:
;	ECEN4330Lab7.c:1938: if(data != byte1 && currAddr0 == addr1){
	mov	r6,_data
	mov	r7,#0x00
	mov	a,r6
	cjne	a,_byte1,00238$
	mov	a,r7
	cjne	a,(_byte1 + 1),00238$
	sjmp	00142$
00238$:
	mov	a,_addr1
	cjne	a,_currAddr0,00142$
	mov	a,(_addr1 + 1)
	cjne	a,(_currAddr0 + 1),00142$
;	ECEN4330Lab7.c:1939: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1940: LCD_string_write("\n0x");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1941: HEXtoASCII_8write(byte1);
	mov	dpl,_byte1
	lcall	_HEXtoASCII_8write
;	ECEN4330Lab7.c:1942: LCD_string_write(" not\nfound in\naddress range\n\n");
	mov	dptr,#___str_44
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1943: HEXtoASCII_16write(addr0);
	mov	dpl,_addr0
	mov	dph,(_addr0 + 1)
	lcall	_HEXtoASCII_16write
;	ECEN4330Lab7.c:1944: LCD_string_write(" -\n");
	mov	dptr,#___str_32
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1945: HEXtoASCII_16write(addr1);
	mov	dpl,_addr1
	mov	dph,(_addr1 + 1)
	lcall	_HEXtoASCII_16write
;	ECEN4330Lab7.c:1946: delay(200);
	mov	dptr,#0x00c8
	lcall	_delay
;	ECEN4330Lab7.c:1947: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1948: LCD_string_write("Returning to\nmain menu.");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1949: delay(100);
	mov	dptr,#0x0064
	ljmp	_delay
00142$:
;	ECEN4330Lab7.c:1957: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1958: setTextColor(GREEN, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07e0
	lcall	_setTextColor
;	ECEN4330Lab7.c:1959: LCD_string_write("\n0x");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1960: HEXtoASCII_8write(byte1);
	mov	dpl,_byte1
	lcall	_HEXtoASCII_8write
;	ECEN4330Lab7.c:1961: LCD_string_write(" found at\nthe following\naddresses:\n\n");
	mov	dptr,#___str_45
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1962: delay(200);
	mov	dptr,#0x00c8
	lcall	_delay
;	ECEN4330Lab7.c:1963: addr2 = currAddr0;					// Load first found address of page
	mov	_addr2,_currAddr0
	mov	(_addr2 + 1),(_currAddr0 + 1)
;	ECEN4330Lab7.c:1968: do{
00138$:
;	ECEN4330Lab7.c:1969: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:1970: currAddr0 = addr2;				// Load current address	
	mov	_currAddr0,_addr2
	mov	(_currAddr0 + 1),(_addr2 + 1)
;	ECEN4330Lab7.c:1971: HEXtoASCII_16write(currAddr0);	// Write found address to LCD
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	lcall	_HEXtoASCII_16write
;	ECEN4330Lab7.c:1972: count = 7;						// Set page address display counter
	mov	_count,#0x07
	mov	(_count + 1),#0x00
;	ECEN4330Lab7.c:1973: currAddr1++;					// Increment page count
	inc	_currAddr1
	clr	a
	cjne	a,_currAddr1,00241$
	inc	(_currAddr1 + 1)
00241$:
;	ECEN4330Lab7.c:1979: if(currAddr0 != 0xFFFF){
	mov	a,#0xff
	cjne	a,_currAddr0,00242$
	cjne	a,(_currAddr0 + 1),00242$
	sjmp	00112$
00242$:
;	ECEN4330Lab7.c:1980: do{
00108$:
;	ECEN4330Lab7.c:1981: currAddr0++;				// Next RAM address
	inc	_currAddr0
	clr	a
	cjne	a,_currAddr0,00243$
	inc	(_currAddr0 + 1)
00243$:
;	ECEN4330Lab7.c:1982: data = RAMread(currAddr0);	// Read data
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	lcall	_RAMread
	mov	_data,dpl
;	ECEN4330Lab7.c:1983: if(data == byte1){			// If data = search value
	mov	r6,_data
	mov	r7,#0x00
	mov	a,r6
	cjne	a,_byte1,00109$
	mov	a,r7
	cjne	a,(_byte1 + 1),00109$
;	ECEN4330Lab7.c:1984: count--;				// Decrement page address display counter
	dec	_count
	mov	a,#0xff
	cjne	a,_count,00246$
	dec	(_count + 1)
00246$:
;	ECEN4330Lab7.c:1985: LCD_string_write("\n");	// Next line
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1986: HEXtoASCII_16write(currAddr0);	// Display found address
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	lcall	_HEXtoASCII_16write
00109$:
;	ECEN4330Lab7.c:1988: }while(currAddr0 < addr1 && count > 0);
	clr	c
	mov	a,_currAddr0
	subb	a,_addr1
	mov	a,(_currAddr0 + 1)
	subb	a,(_addr1 + 1)
	jnc	00112$
	mov	a,_count
	orl	a,(_count + 1)
	jnz	00108$
00112$:
;	ECEN4330Lab7.c:1995: setCursor(0, 250);
	mov	_setCursor_PARM_2,#0xfa
	mov	(_setCursor_PARM_2 + 1),#0x00
	mov	dptr,#0x0000
	lcall	_setCursor
;	ECEN4330Lab7.c:1996: setTextSize(2);
	mov	dpl,#0x02
	lcall	_setTextSize
;	ECEN4330Lab7.c:1997: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:1998: LCD_string_write("  (0) - Next Page\n  (1) - Prev Page\n  (E) - END\n");
	mov	dptr,#___str_34
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:1999: HEXtoASCII_16write(currAddr1);
	mov	dpl,_currAddr1
	mov	dph,(_currAddr1 + 1)
	lcall	_HEXtoASCII_16write
;	ECEN4330Lab7.c:2005: key = keyDetect();
	lcall	_keyDetect
	mov	_key,dpl
;	ECEN4330Lab7.c:2006: switch (key)
	mov	a,#0x30
	cjne	a,_key,00249$
	sjmp	00113$
00249$:
	mov	a,#0x31
	cjne	a,_key,00250$
	ljmp	00126$
00250$:
	mov	a,#0x45
	cjne	a,_key,00251$
	ljmp	00135$
00251$:
	ljmp	00136$
;	ECEN4330Lab7.c:2012: case '0':
00113$:
;	ECEN4330Lab7.c:2017: if(currAddr0 >= addr1){
	clr	c
	mov	a,_currAddr0
	subb	a,_addr1
	mov	a,(_currAddr0 + 1)
	subb	a,(_addr1 + 1)
	jc	00117$
;	ECEN4330Lab7.c:2018: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:2019: LCD_string_write("End of Data.");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:2020: delay(200);
	mov	dptr,#0x00c8
	lcall	_delay
;	ECEN4330Lab7.c:2021: currAddr1--;	// Reset page count to last displayed page 
	dec	_currAddr1
	mov	a,#0xff
	cjne	a,_currAddr1,00253$
	dec	(_currAddr1 + 1)
00253$:
	ljmp	00139$
;	ECEN4330Lab7.c:2034: do{
00117$:
;	ECEN4330Lab7.c:2035: currAddr0++;			// Next RAM address
	inc	_currAddr0
	clr	a
	cjne	a,_currAddr0,00254$
	inc	(_currAddr0 + 1)
00254$:
;	ECEN4330Lab7.c:2036: data = RAMread(currAddr0);	// Read data
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	lcall	_RAMread
	mov	_data,dpl
;	ECEN4330Lab7.c:2037: if(data == byte1){			// If data matches search value
	mov	r6,_data
	mov	r7,#0x00
	mov	a,r6
	cjne	a,_byte1,00118$
	mov	a,r7
	cjne	a,(_byte1 + 1),00118$
;	ECEN4330Lab7.c:2038: addr2 = currAddr0;		// Set first address of display page
	mov	_addr2,_currAddr0
	mov	(_addr2 + 1),(_currAddr0 + 1)
00118$:
;	ECEN4330Lab7.c:2040: }while(currAddr0 < addr1 && data != byte1);
	clr	c
	mov	a,_currAddr0
	subb	a,_addr1
	mov	a,(_currAddr0 + 1)
	subb	a,(_addr1 + 1)
	jnc	00119$
	mov	r6,_data
	mov	r7,#0x00
	mov	a,r6
	cjne	a,_byte1,00117$
	mov	a,r7
	cjne	a,(_byte1 + 1),00117$
00119$:
;	ECEN4330Lab7.c:2046: if(currAddr0 >= addr1 && data != byte1){
	clr	c
	mov	a,_currAddr0
	subb	a,_addr1
	mov	a,(_currAddr0 + 1)
	subb	a,(_addr1 + 1)
	jnc	00260$
	ljmp	00139$
00260$:
	mov	r6,_data
	mov	r7,#0x00
	mov	a,r6
	cjne	a,_byte1,00261$
	mov	a,r7
	cjne	a,(_byte1 + 1),00261$
	ljmp	00139$
00261$:
;	ECEN4330Lab7.c:2047: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:2048: LCD_string_write("End of Data.");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:2049: delay(200);
	mov	dptr,#0x00c8
	lcall	_delay
;	ECEN4330Lab7.c:2050: currAddr1--;	// Reset page count to last displayed page
	dec	_currAddr1
	mov	a,#0xff
	cjne	a,_currAddr1,00262$
	dec	(_currAddr1 + 1)
00262$:
;	ECEN4330Lab7.c:2055: break;
	ljmp	00139$
;	ECEN4330Lab7.c:2062: case '1':
00126$:
;	ECEN4330Lab7.c:2066: if(currAddr1 == 1){
	mov	a,#0x01
	cjne	a,_currAddr1,00263$
	dec	a
	cjne	a,(_currAddr1 + 1),00263$
	sjmp	00264$
00263$:
	sjmp	00133$
00264$:
;	ECEN4330Lab7.c:2067: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:2068: LCD_string_write("End of Data.");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:2069: delay(200);
	mov	dptr,#0x00c8
	lcall	_delay
;	ECEN4330Lab7.c:2070: currAddr1--;	// Reset page count to last displayed page
	dec	_currAddr1
	mov	a,#0xff
	cjne	a,_currAddr1,00265$
	dec	(_currAddr1 + 1)
00265$:
	ljmp	00139$
00133$:
;	ECEN4330Lab7.c:2078: currAddr0 = addr2;
	mov	_currAddr0,_addr2
	mov	(_currAddr0 + 1),(_addr2 + 1)
;	ECEN4330Lab7.c:2079: count = 0;
	clr	a
	mov	_count,a
	mov	(_count + 1),a
;	ECEN4330Lab7.c:2080: while(count < 8){
00129$:
	clr	c
	mov	a,_count
	subb	a,#0x08
	mov	a,(_count + 1)
	subb	a,#0x00
	jnc	00131$
;	ECEN4330Lab7.c:2081: currAddr0--;
	dec	_currAddr0
	mov	a,#0xff
	cjne	a,_currAddr0,00267$
	dec	(_currAddr0 + 1)
00267$:
;	ECEN4330Lab7.c:2082: data = RAMread(currAddr0);
	mov	dpl,_currAddr0
	mov	dph,(_currAddr0 + 1)
	lcall	_RAMread
	mov	_data,dpl
;	ECEN4330Lab7.c:2083: if(data == byte1){
	mov	r6,_data
	mov	r7,#0x00
	mov	a,r6
	cjne	a,_byte1,00129$
	mov	a,r7
	cjne	a,(_byte1 + 1),00129$
;	ECEN4330Lab7.c:2084: count++;
	inc	_count
	clr	a
	cjne	a,_count,00129$
	inc	(_count + 1)
	sjmp	00129$
00131$:
;	ECEN4330Lab7.c:2087: addr2 = currAddr0;
	mov	_addr2,_currAddr0
	mov	(_addr2 + 1),(_currAddr0 + 1)
;	ECEN4330Lab7.c:2088: currAddr1 -= 2;
	mov	a,_currAddr1
	add	a,#0xfe
	mov	_currAddr1,a
	mov	a,(_currAddr1 + 1)
	addc	a,#0xff
	mov	(_currAddr1 + 1),a
;	ECEN4330Lab7.c:2090: break;
;	ECEN4330Lab7.c:2096: case 'E':
	sjmp	00139$
00135$:
;	ECEN4330Lab7.c:2097: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:2098: LCD_string_write("Returning to\nmain menu.");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:2099: delay(200);
	mov	dptr,#0x00c8
	lcall	_delay
;	ECEN4330Lab7.c:2100: break;
;	ECEN4330Lab7.c:2106: default:
	sjmp	00139$
00136$:
;	ECEN4330Lab7.c:2107: invalidInput();
	lcall	_invalidInput
;	ECEN4330Lab7.c:2108: currAddr1--;
	dec	_currAddr1
	mov	a,#0xff
	cjne	a,_currAddr1,00271$
	dec	(_currAddr1 + 1)
00271$:
;	ECEN4330Lab7.c:2111: }
00139$:
;	ECEN4330Lab7.c:2112: }while(key != 'E');
	mov	a,#0x45
	cjne	a,_key,00272$
	ret
00272$:
	ljmp	00138$
;	ECEN4330Lab7.c:2114: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FIND'
;------------------------------------------------------------
;	ECEN4330Lab7.c:2122: void FIND(){
;	-----------------------------------------
;	 function FIND
;	-----------------------------------------
_FIND:
;	ECEN4330Lab7.c:2123: endAddrCalc = 0;
	clr	a
	mov	_endAddrCalc,a
	mov	(_endAddrCalc + 1),a
	mov	(_endAddrCalc + 2),a
	mov	(_endAddrCalc + 3),a
;	ECEN4330Lab7.c:2124: addr0 = 0;                      // Starting Address
	mov	_addr0,a
	mov	(_addr0 + 1),a
;	ECEN4330Lab7.c:2125: addr1 = 0;                      // End Address
	mov	_addr1,a
	mov	(_addr1 + 1),a
;	ECEN4330Lab7.c:2126: dataType = 0;                   // Data Type
;	1-genFromRTrack replaced	mov	_dataType,#0x00
	mov	_dataType,a
;	ECEN4330Lab7.c:2127: dataSize = 0;                   // Data Size
	mov	_dataSize,a
	mov	(_dataSize + 1),a
;	ECEN4330Lab7.c:2128: byte1 = 0;                       // Find Value
	mov	_byte1,a
	mov	(_byte1 + 1),a
;	ECEN4330Lab7.c:2131: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:2132: LCD_string_write("\nEnter\nstarting RAM\naddress:\n\n   0x____");
	mov	dptr,#___str_47
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:2133: cursor_x -= 4 * textsize * 6;
	mov	a,_textsize
	mov	b,#0x18
	mul	ab
	mov	r6,a
	mov	r7,b
	mov	a,_cursor_x
	clr	c
	subb	a,r6
	mov	_cursor_x,a
	mov	a,(_cursor_x + 1)
	subb	a,r7
	mov	(_cursor_x + 1),a
;	ECEN4330Lab7.c:2134: inputRead16();                  // Read input
	lcall	_inputRead16
;	ECEN4330Lab7.c:2135: addr0 = input16;                // Start address
	mov	_addr0,_input16
	mov	(_addr0 + 1),(_input16 + 1)
;	ECEN4330Lab7.c:2141: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:2142: inputDataSize();                // Prompt & read input
	lcall	_inputDataSize
;	ECEN4330Lab7.c:2145: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:2146: LCD_string_write("\nEnter search\nvalue:\n\n   0x__");
	mov	dptr,#___str_48
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:2147: cursor_x -= 2 * textsize * 6;
	mov	a,_textsize
	mov	b,#0x0c
	mul	ab
	mov	r6,a
	mov	r7,b
	mov	a,_cursor_x
	clr	c
	subb	a,r6
	mov	_cursor_x,a
	mov	a,(_cursor_x + 1)
	subb	a,r7
	mov	(_cursor_x + 1),a
;	ECEN4330Lab7.c:2148: inputRead8();                  // Read input
	lcall	_inputRead8
;	ECEN4330Lab7.c:2149: byte1 = input8;                 // Find value
	mov	_byte1,_input8
	mov	(_byte1 + 1),#0x00
;	ECEN4330Lab7.c:2152: endAddrCalc = addr0 + dataSize;
	mov	a,_dataSize
	add	a,_addr0
	mov	r6,a
	mov	a,(_dataSize + 1)
	addc	a,(_addr0 + 1)
	mov	r7,a
	mov	_endAddrCalc,r6
	mov	(_endAddrCalc + 1),r7
	mov	(_endAddrCalc + 2),#0x00
	mov	(_endAddrCalc + 3),#0x00
;	ECEN4330Lab7.c:2153: if(endAddrCalc < addr0){ // RAM overflow
	mov	r4,_addr0
	mov	r5,(_addr0 + 1)
	mov	r6,#0x00
	mov	r7,#0x00
	clr	c
	mov	a,_endAddrCalc
	subb	a,r4
	mov	a,(_endAddrCalc + 1)
	subb	a,r5
	mov	a,(_endAddrCalc + 2)
	subb	a,r6
	mov	a,(_endAddrCalc + 3)
	subb	a,r7
	jnc	00102$
;	ECEN4330Lab7.c:2154: addr1 = 0xFFFF;             // Set end address
	mov	_addr1,#0xff
;	ECEN4330Lab7.c:2155: dataSize = addr1 - addr0;   // Recalculate data size
	mov	a,#0xff
	mov	(_addr1 + 1),a
	clr	c
	subb	a,_addr0
	mov	_dataSize,a
	mov	a,#0xff
	subb	a,(_addr0 + 1)
	mov	(_dataSize + 1),a
	sjmp	00103$
00102$:
;	ECEN4330Lab7.c:2158: addr1 = addr0 + dataSize;
	mov	a,_dataSize
	add	a,_addr0
	mov	_addr1,a
	mov	a,(_dataSize + 1)
	addc	a,(_addr0 + 1)
	mov	(_addr1 + 1),a
00103$:
;	ECEN4330Lab7.c:2178: FIND_display();                 // Display dump data
;	ECEN4330Lab7.c:2179: }
	ljmp	_FIND_display
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_mainMenu'
;------------------------------------------------------------
;__1310720043              Allocated to registers 
;__1310720044              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1966080046              Allocated to registers 
;__1966080047              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1966080049              Allocated to registers 
;__1966080050              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1966080052              Allocated to registers 
;__1966080053              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1966080055              Allocated to registers 
;__1966080056              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1966080058              Allocated to registers 
;__1966080059              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1966080061              Allocated to registers 
;__1966080062              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1966080064              Allocated to registers 
;__1966080065              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;------------------------------------------------------------
;	ECEN4330Lab7.c:2241: void LCD_mainMenu() {
;	-----------------------------------------
;	 function LCD_mainMenu
;	-----------------------------------------
_LCD_mainMenu:
;	ECEN4330Lab7.c:2243: key = 0;
	mov	_key,#0x00
;	ECEN4330Lab7.c:2244: iowrite8(seg7_address, 0xC0);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	a,#0xc0
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2247: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:2248: setTextColor(GREEN, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0x07e0
	lcall	_setTextColor
;	ECEN4330Lab7.c:2249: LCD_string_write("   Cameron\n   Biniamow\n");
	mov	dptr,#___str_49
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:2250: LCD_string_write("  ECEN-4330\n\n");
	mov	dptr,#___str_50
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:2253: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:2254: LCD_string_write("(A) RAM CHECK\n");
	mov	dptr,#___str_51
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:2255: LCD_string_write("(B) MOVE\n");
	mov	dptr,#___str_52
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:2256: LCD_string_write("(C) COUNT\n");
	mov	dptr,#___str_53
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:2257: LCD_string_write("(D) DUMP\n");
	mov	dptr,#___str_54
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:2258: LCD_string_write("(E) EDIT\n");
	mov	dptr,#___str_55
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:2259: LCD_string_write("(F) FIND\n");
	mov	dptr,#___str_56
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:2262: setTextColor(WHITE, BLACK);
	clr	a
	mov	_setTextColor_PARM_2,a
	mov	(_setTextColor_PARM_2 + 1),a
	mov	dptr,#0xffff
	lcall	_setTextColor
;	ECEN4330Lab7.c:2263: setTextSize(1);
	mov	dpl,#0x01
	lcall	_setTextSize
;	ECEN4330Lab7.c:2264: setCursor(3, 304);
	mov	_setCursor_PARM_2,#0x30
	mov	(_setCursor_PARM_2 + 1),#0x01
	mov	dptr,#0x0003
	lcall	_setCursor
;	ECEN4330Lab7.c:2265: LCD_string_write("Spring 2021");
	mov	dptr,#___str_57
	mov	b,#0x80
	lcall	_LCD_string_write
;	ECEN4330Lab7.c:2266: rtcPrint();
	lcall	_rtcPrint
;	ECEN4330Lab7.c:2269: key = keyDetect();
	lcall	_keyDetect
	mov	_key,dpl
;	ECEN4330Lab7.c:2270: switch (key)
	mov	a,#0x41
	cjne	a,_key,00143$
	sjmp	00101$
00143$:
	mov	a,#0x42
	cjne	a,_key,00144$
	sjmp	00102$
00144$:
	mov	a,#0x43
	cjne	a,_key,00145$
	sjmp	00103$
00145$:
	mov	a,#0x44
	cjne	a,_key,00146$
	sjmp	00104$
00146$:
	mov	a,#0x45
	cjne	a,_key,00147$
	sjmp	00105$
00147$:
	mov	a,#0x46
;	ECEN4330Lab7.c:2272: case 'A':
	cjne	a,_key,00107$
	sjmp	00106$
00101$:
;	ECEN4330Lab7.c:2273: iowrite8(seg7_address, 0x88);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	a,#0x88
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2274: RAM_CHECK();
;	ECEN4330Lab7.c:2275: break;
;	ECEN4330Lab7.c:2276: case 'B':
	ljmp	_RAM_CHECK
00102$:
;	ECEN4330Lab7.c:2277: iowrite8(seg7_address, 0x83);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	a,#0x83
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2278: MOVE();
;	ECEN4330Lab7.c:2279: break;
;	ECEN4330Lab7.c:2280: case 'C':
	ljmp	_MOVE
00103$:
;	ECEN4330Lab7.c:2281: iowrite8(seg7_address, 0xC6);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	a,#0xc6
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2282: COUNT();
;	ECEN4330Lab7.c:2283: break;
;	ECEN4330Lab7.c:2284: case 'D':
	ljmp	_COUNT
00104$:
;	ECEN4330Lab7.c:2285: iowrite8(seg7_address, 0xA1);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	a,#0xa1
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2286: DUMP();
;	ECEN4330Lab7.c:2287: break;
;	ECEN4330Lab7.c:2288: case 'E':
	ljmp	_DUMP
00105$:
;	ECEN4330Lab7.c:2289: iowrite8(seg7_address, 0x86);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	a,#0x86
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2290: EDIT();
;	ECEN4330Lab7.c:2291: break;
;	ECEN4330Lab7.c:2292: case 'F':
	ljmp	_EDIT
00106$:
;	ECEN4330Lab7.c:2293: iowrite8(seg7_address, 0x8E);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	a,#0x8e
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2294: FIND();
;	ECEN4330Lab7.c:2295: break;
;	ECEN4330Lab7.c:2304: default:
	ljmp	_FIND
00107$:
;	ECEN4330Lab7.c:2305: iowrite8(seg7_address, 0xFF);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	a,#0xff
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2306: invalidInput();
;	ECEN4330Lab7.c:2308: }
;	ECEN4330Lab7.c:2309: }
	ljmp	_invalidInput
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;__1310720067              Allocated to registers 
;__1310720068              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720070              Allocated to registers 
;__1310720071              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720073              Allocated to registers 
;__1310720074              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720076              Allocated to registers 
;__1310720077              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720079              Allocated to registers 
;__1310720080              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720082              Allocated to registers 
;__1310720083              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;__1310720085              Allocated to registers 
;__1310720086              Allocated to registers 
;map_address               Allocated to registers 
;d                         Allocated to registers 
;------------------------------------------------------------
;	ECEN4330Lab7.c:2318: void main (void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	ECEN4330Lab7.c:2319: CD = 0;
;	assignBit
	clr	_P3_5
;	ECEN4330Lab7.c:2320: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2322: UART_Init();
	lcall	_UART_Init
;	ECEN4330Lab7.c:2323: rtcInit();
	lcall	_rtcInit
;	ECEN4330Lab7.c:2325: iowrite8(seg7_address, 0xFE);//a
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	a,#0xfe
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2326: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN4330Lab7.c:2327: iowrite8(seg7_address, 0xFC);//a & b
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	a,#0xfc
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2328: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN4330Lab7.c:2329: iowrite8(seg7_address, 0xF8);//a & b & c
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	a,#0xf8
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2330: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN4330Lab7.c:2331: iowrite8(seg7_address, 0xF0);//a & b & c & d
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	a,#0xf0
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2332: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN4330Lab7.c:2333: iowrite8(seg7_address, 0xE0);//a & b & c & d & e
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	a,#0xe0
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2334: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN4330Lab7.c:2335: iowrite8(seg7_address, 0xC0);//a & b & c & d & e & f
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	a,#0xc0
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2336: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN4330Lab7.c:2337: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2338: CD = 1;
;	assignBit
	setb	_P3_5
;	ECEN4330Lab7.c:2340: TFT_LCD_INIT();
	lcall	_TFT_LCD_INIT
;	ECEN4330Lab7.c:2341: iowrite8(seg7_address, 0xF9);
	mov	dpl,_seg7_address
	mov	dph,(_seg7_address + 1)
;	ECEN4330Lab7.c:166: IOM = 1;
;	assignBit
	setb	_P3_4
;	ECEN4330Lab7.c:167: *map_address = d;
	mov	a,#0xf9
	movx	@dptr,a
;	ECEN4330Lab7.c:168: IOM = 0;
;	assignBit
	clr	_P3_4
;	ECEN4330Lab7.c:2342: resetLCD();
	lcall	_resetLCD
;	ECEN4330Lab7.c:2344: while(1) {
00102$:
;	ECEN4330Lab7.c:2345: LCD_mainMenu();
	lcall	_LCD_mainMenu
;	ECEN4330Lab7.c:2347: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_font:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x5b	; 91
	.db #0x4f	; 79	'O'
	.db #0x5b	; 91
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x6b	; 107	'k'
	.db #0x4f	; 79	'O'
	.db #0x6b	; 107	'k'
	.db #0x3e	; 62
	.db #0x1c	; 28
	.db #0x3e	; 62
	.db #0x7c	; 124
	.db #0x3e	; 62
	.db #0x1c	; 28
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x1c	; 28
	.db #0x57	; 87	'W'
	.db #0x7d	; 125
	.db #0x57	; 87	'W'
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x5e	; 94
	.db #0x7f	; 127
	.db #0x5e	; 94
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0xc3	; 195
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0xdb	; 219
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x3a	; 58
	.db #0x06	; 6
	.db #0x0e	; 14
	.db #0x26	; 38
	.db #0x29	; 41
	.db #0x79	; 121	'y'
	.db #0x29	; 41
	.db #0x26	; 38
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x05	; 5
	.db #0x25	; 37
	.db #0x3f	; 63
	.db #0x5a	; 90	'Z'
	.db #0x3c	; 60
	.db #0xe7	; 231
	.db #0x3c	; 60
	.db #0x5a	; 90	'Z'
	.db #0x7f	; 127
	.db #0x3e	; 62
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x3e	; 62
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x7f	; 127
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x5f	; 95
	.db #0x5f	; 95
	.db #0x00	; 0
	.db #0x5f	; 95
	.db #0x5f	; 95
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x66	; 102	'f'
	.db #0x89	; 137
	.db #0x95	; 149
	.db #0x6a	; 106	'j'
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x94	; 148
	.db #0xa2	; 162
	.db #0xff	; 255
	.db #0xa2	; 162
	.db #0x94	; 148
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x7e	; 126
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x7e	; 126
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x2a	; 42
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1e	; 30
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x30	; 48	'0'
	.db #0x38	; 56	'8'
	.db #0x3e	; 62
	.db #0x38	; 56	'8'
	.db #0x30	; 48	'0'
	.db #0x06	; 6
	.db #0x0e	; 14
	.db #0x3e	; 62
	.db #0x0e	; 14
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5f	; 95
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x2a	; 42
	.db #0x7f	; 127
	.db #0x2a	; 42
	.db #0x12	; 18
	.db #0x23	; 35
	.db #0x13	; 19
	.db #0x08	; 8
	.db #0x64	; 100	'd'
	.db #0x62	; 98	'b'
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x56	; 86	'V'
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x1c	; 28
	.db #0x7f	; 127
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x70	; 112	'p'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x3e	; 62
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x46	; 70	'F'
	.db #0x21	; 33
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x4d	; 77	'M'
	.db #0x33	; 51	'3'
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x27	; 39
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x39	; 57	'9'
	.db #0x3c	; 60
	.db #0x4a	; 74	'J'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x31	; 49	'1'
	.db #0x41	; 65	'A'
	.db #0x21	; 33
	.db #0x11	; 17
	.db #0x09	; 9
	.db #0x07	; 7
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x46	; 70	'F'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x29	; 41
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x59	; 89	'Y'
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x5d	; 93
	.db #0x59	; 89	'Y'
	.db #0x4e	; 78	'N'
	.db #0x7c	; 124
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x7c	; 124
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x73	; 115	's'
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x02	; 2
	.db #0x1c	; 28
	.db #0x02	; 2
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x7f	; 127
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x21	; 33
	.db #0x5e	; 94
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x29	; 41
	.db #0x46	; 70	'F'
	.db #0x26	; 38
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x32	; 50	'2'
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x38	; 56	'8'
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x63	; 99	'c'
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x63	; 99	'c'
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x61	; 97	'a'
	.db #0x59	; 89	'Y'
	.db #0x49	; 73	'I'
	.db #0x4d	; 77	'M'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x7f	; 127
	.db #0x38	; 56	'8'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x7e	; 126
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x18	; 24
	.db #0xa4	; 164
	.db #0xa4	; 164
	.db #0x9c	; 156
	.db #0x78	; 120	'x'
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x7d	; 125
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3d	; 61
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0xfc	; 252
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0xfc	; 252
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x48	; 72	'H'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x24	; 36
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x3f	; 63
	.db #0x44	; 68	'D'
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x7c	; 124
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1c	; 28
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x4c	; 76	'L'
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x7c	; 124
	.db #0x44	; 68	'D'
	.db #0x64	; 100	'd'
	.db #0x54	; 84	'T'
	.db #0x4c	; 76	'L'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x36	; 54	'6'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x77	; 119	'w'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x36	; 54	'6'
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x3c	; 60
	.db #0x26	; 38
	.db #0x23	; 35
	.db #0x26	; 38
	.db #0x3c	; 60
	.db #0x1e	; 30
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0x61	; 97	'a'
	.db #0x12	; 18
	.db #0x3a	; 58
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x7a	; 122	'z'
	.db #0x38	; 56	'8'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x59	; 89	'Y'
	.db #0x21	; 33
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x79	; 121	'y'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x78	; 120	'x'
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x79	; 121	'y'
	.db #0x40	; 64
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x52	; 82	'R'
	.db #0x72	; 114	'r'
	.db #0x12	; 18
	.db #0x39	; 57	'9'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x59	; 89	'Y'
	.db #0x39	; 57	'9'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x59	; 89	'Y'
	.db #0x39	; 57	'9'
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x58	; 88	'X'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x7c	; 124
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x45	; 69	'E'
	.db #0x7d	; 125
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x45	; 69	'E'
	.db #0x7c	; 124
	.db #0x40	; 64
	.db #0x7d	; 125
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x7d	; 125
	.db #0xf0	; 240
	.db #0x28	; 40
	.db #0x25	; 37
	.db #0x28	; 40
	.db #0xf0	; 240
	.db #0x7c	; 124
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x7c	; 124
	.db #0x54	; 84	'T'
	.db #0x7c	; 124
	.db #0x0a	; 10
	.db #0x09	; 9
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x32	; 50	'2'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x32	; 50	'2'
	.db #0x3a	; 58
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x3a	; 58
	.db #0x32	; 50	'2'
	.db #0x4a	; 74	'J'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0x3a	; 58
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x21	; 33
	.db #0x7a	; 122	'z'
	.db #0x3a	; 58
	.db #0x42	; 66	'B'
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x9d	; 157
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x7d	; 125
	.db #0x3d	; 61
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x3d	; 61
	.db #0x3d	; 61
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3d	; 61
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0xff	; 255
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x48	; 72	'H'
	.db #0x7e	; 126
	.db #0x49	; 73	'I'
	.db #0x43	; 67	'C'
	.db #0x66	; 102	'f'
	.db #0x2b	; 43
	.db #0x2f	; 47
	.db #0xfc	; 252
	.db #0x2f	; 47
	.db #0x2b	; 43
	.db #0xff	; 255
	.db #0x09	; 9
	.db #0x29	; 41
	.db #0xf6	; 246
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0x88	; 136
	.db #0x7e	; 126
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x20	; 32
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x79	; 121	'y'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x7d	; 125
	.db #0x41	; 65	'A'
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x4a	; 74	'J'
	.db #0x32	; 50	'2'
	.db #0x38	; 56	'8'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x22	; 34
	.db #0x7a	; 122	'z'
	.db #0x00	; 0
	.db #0x7a	; 122	'z'
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x72	; 114	'r'
	.db #0x7d	; 125
	.db #0x0d	; 13
	.db #0x19	; 25
	.db #0x31	; 49	'1'
	.db #0x7d	; 125
	.db #0x26	; 38
	.db #0x29	; 41
	.db #0x29	; 41
	.db #0x2f	; 47
	.db #0x28	; 40
	.db #0x26	; 38
	.db #0x29	; 41
	.db #0x29	; 41
	.db #0x29	; 41
	.db #0x26	; 38
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x4d	; 77	'M'
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x38	; 56	'8'
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x38	; 56	'8'
	.db #0x2f	; 47
	.db #0x10	; 16
	.db #0xc8	; 200
	.db #0xac	; 172
	.db #0xba	; 186
	.db #0x2f	; 47
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x34	; 52	'4'
	.db #0xfa	; 250
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7b	; 123
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x2a	; 42
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x2a	; 42
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0xf4	; 244
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x17	; 23
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x17	; 23
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xf4	; 244
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x17	; 23
	.db #0x10	; 16
	.db #0x17	; 23
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0xf4	; 244
	.db #0x04	; 4
	.db #0xf4	; 244
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x17	; 23
	.db #0x14	; 20
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0xf4	; 244
	.db #0x14	; 20
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0xff	; 255
	.db #0x14	; 20
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0xfc	; 252
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x34	; 52	'4'
	.db #0x7e	; 126
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x7e	; 126
	.db #0x02	; 2
	.db #0x7e	; 126
	.db #0x02	; 2
	.db #0x63	; 99	'c'
	.db #0x55	; 85	'U'
	.db #0x49	; 73	'I'
	.db #0x41	; 65	'A'
	.db #0x63	; 99	'c'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x7e	; 126
	.db #0x20	; 32
	.db #0x1e	; 30
	.db #0x20	; 32
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x7e	; 126
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x99	; 153
	.db #0xa5	; 165
	.db #0xe7	; 231
	.db #0xa5	; 165
	.db #0x99	; 153
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x49	; 73	'I'
	.db #0x2a	; 42
	.db #0x1c	; 28
	.db #0x4c	; 76	'L'
	.db #0x72	; 114	'r'
	.db #0x01	; 1
	.db #0x72	; 114	'r'
	.db #0x4c	; 76	'L'
	.db #0x30	; 48	'0'
	.db #0x4a	; 74	'J'
	.db #0x4d	; 77	'M'
	.db #0x4d	; 77	'M'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x78	; 120	'x'
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0xbc	; 188
	.db #0x62	; 98	'b'
	.db #0x5a	; 90	'Z'
	.db #0x46	; 70	'F'
	.db #0x3d	; 61
	.db #0x3e	; 62
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7e	; 126
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x5f	; 95
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x40	; 64
	.db #0x51	; 81	'Q'
	.db #0x4a	; 74	'J'
	.db #0x44	; 68	'D'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x44	; 68	'D'
	.db #0x4a	; 74	'J'
	.db #0x51	; 81	'Q'
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x6b	; 107	'k'
	.db #0x6b	; 107	'k'
	.db #0x08	; 8
	.db #0x36	; 54	'6'
	.db #0x12	; 18
	.db #0x36	; 54	'6'
	.db #0x24	; 36
	.db #0x36	; 54	'6'
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x19	; 25
	.db #0x1d	; 29
	.db #0x17	; 23
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_keypad:
	.db #0x31	; 49	'1'
	.db #0x34	; 52	'4'
	.db #0x37	; 55	'7'
	.db #0x45	; 69	'E'
	.db #0x32	; 50	'2'
	.db #0x35	; 53	'5'
	.db #0x38	; 56	'8'
	.db #0x30	; 48	'0'
	.db #0x33	; 51	'3'
	.db #0x36	; 54	'6'
	.db #0x39	; 57	'9'
	.db #0x46	; 70	'F'
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.area CONST   (CODE)
___str_0:
	.ascii ":"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "0x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.ascii "   Invalid"
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "    Input"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.ascii "Select Data"
	.db 0x0a
	.ascii "Type:"
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "(1) Byte"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "(2) Word"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "(3) Double"
	.db 0x0a
	.ascii "    Word"
	.db 0x0a
	.db 0x0a
	.ascii "  _"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.ascii "Enter Data"
	.db 0x0a
	.ascii "Size:"
	.db 0x0a
	.db 0x0a
	.ascii "  0x____"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.ascii "Writing 0x55"
	.db 0x0a
	.ascii "to all"
	.db 0x0a
	.ascii "external RAM"
	.db 0x0a
	.ascii "locations."
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "Write"
	.db 0x0a
	.ascii "complete."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0a
	.ascii "Verifying all"
	.db 0x0a
	.ascii "RAM locations"
	.db 0x0a
	.ascii "equal 0x55."
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "1st RAM check"
	.db 0x0a
	.ascii "unsuccessful."
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "Error at:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii ": 0x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "Returning to"
	.db 0x0a
	.ascii "main menu."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "1st RAM check"
	.db 0x0a
	.ascii "successful."
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0a
	.ascii "Writing 0xAA"
	.db 0x0a
	.ascii "to all"
	.db 0x0a
	.ascii "external RAM"
	.db 0x0a
	.ascii "locations."
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0a
	.ascii "Verifying all"
	.db 0x0a
	.ascii "RAM locations"
	.db 0x0a
	.ascii "equal 0xAA."
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "2nd RAM check"
	.db 0x0a
	.ascii "unsuccessful."
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "2nd RAM check"
	.db 0x0a
	.ascii "successful."
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "RAM check"
	.db 0x0a
	.ascii "complete."
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.db 0x0a
	.ascii "Enter source"
	.db 0x0a
	.ascii "starting RAM"
	.db 0x0a
	.ascii "address:"
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.ascii "  0x____"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.db 0x0a
	.ascii "Enter"
	.db 0x0a
	.ascii "destination"
	.db 0x0a
	.ascii "starting RAM"
	.db 0x0a
	.ascii "address:"
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.ascii "  0x____"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.db 0x0a
	.ascii "Move complete."
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.db 0x0a
	.ascii "Enter"
	.db 0x0a
	.ascii "starting RAM"
	.db 0x0a
	.ascii "address:"
	.db 0x0a
	.db 0x0a
	.ascii "  0x____"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.db 0x0a
	.ascii "Enter search"
	.db 0x0a
	.ascii "value:"
	.db 0x0a
	.db 0x0a
	.ascii "  0x__"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.db 0x0a
	.ascii "0x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii " found"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "0x10000"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.db 0x0a
	.ascii "times."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii " not"
	.db 0x0a
	.ascii "found in"
	.db 0x0a
	.ascii "external RAM"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii " -"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "  (0) - Next Page"
	.db 0x0a
	.ascii "  (1) - Prev Page"
	.db 0x0a
	.ascii "  (E) - END"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.db 0x0a
	.ascii "End of Data."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "End of Data"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.db 0x0a
	.ascii "Returning to"
	.db 0x0a
	.ascii "Main Menu."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.db 0x0a
	.ascii "Enter source"
	.db 0x0a
	.ascii "starting RAM"
	.db 0x0a
	.ascii "address:"
	.db 0x0a
	.db 0x0a
	.ascii "  0x____"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.db 0x0a
	.db 0x0a
	.ascii "New value:"
	.db 0x0a
	.ascii "  0x__"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.ascii "(1) Edit next"
	.db 0x0a
	.ascii "RAM location"
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.ascii "(E) End"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.db 0x0a
	.ascii "End of data."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.db 0x0a
	.ascii "Returning to"
	.db 0x0a
	.ascii "main menu."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.ascii " not"
	.db 0x0a
	.ascii "found in"
	.db 0x0a
	.ascii "address range"
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.ascii " found at"
	.db 0x0a
	.ascii "the following"
	.db 0x0a
	.ascii "addresses:"
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
	.ascii "End of Data."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
	.db 0x0a
	.ascii "Enter"
	.db 0x0a
	.ascii "starting RAM"
	.db 0x0a
	.ascii "address:"
	.db 0x0a
	.db 0x0a
	.ascii "   0x____"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.db 0x0a
	.ascii "Enter search"
	.db 0x0a
	.ascii "value:"
	.db 0x0a
	.db 0x0a
	.ascii "   0x__"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.ascii "   Cameron"
	.db 0x0a
	.ascii "   Biniamow"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.ascii "  ECEN-4330"
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_51:
	.ascii "(A) RAM CHECK"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_52:
	.ascii "(B) MOVE"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_53:
	.ascii "(C) COUNT"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_54:
	.ascii "(D) DUMP"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_55:
	.ascii "(E) EDIT"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_56:
	.ascii "(F) FIND"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_57:
	.ascii "Spring 2021"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
