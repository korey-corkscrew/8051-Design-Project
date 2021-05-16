/**********************************************************************
 * * Cameron Biniamow
 * * ECEN 4330: Lab 6
 * * University of Nebraska - Lincoln
 * * Spring 2021
 * 
 * Pin declarations:
 * * IOM --> P3^4
 * * LCD CD --> P3^5
 * * RD --> P3^3
 * * WR --> P3^2
 * 
 * Includes following functions:
 * * LCD Driver - Initializes LCD. Provides general use of LCD.
 * * RAM Check - Verifies proper operation of external RAM.
 * * Move - Moves data from a source block of RAM to a destination block of RAM.
 * * Count - Counts # of times an input value is found in RAM. Displays locations.
 * * Dump - Displays data contents of a specified block of RAM.
 * * Edit - Edit contents of RAM addresses.
 * * Find - Displays RAM addresses that contain a search value.
 * * RTC - Displays time value from RTC
 * * UART - Receive data from ESP module via UART
 *********************************************************************/

/// ** the code uses P0 for 8-bit interface
/// ** IOM --> P3^4
/// ** CD --> P3^5

# include "ecen4330lcdh.h"
# include "font.h"

// keypad configuration
__code unsigned char keypad[4][4] =    {{'1','4','7','E'},
                {'2','5','8','0'},
                {'3','6','9','F'},
                {'A','B','C','D'} };
unsigned char colloc, rowloc;
// store it in a variable the lcd address
__xdata unsigned char* lcd_address = (unsigned char __xdata*) __LCD_ADDRESS__;
__xdata unsigned char* seg7_address = (unsigned char __xdata*) __SEG_7_ADDRESS__;

__xdata unsigned char* read_ram_address;

# define write8inline(d) {         \
    IOM = 1;                            \
    *lcd_address = d;                       \
    IOM = 0;                            \
}

# define write8 write8inline
// data write
# define write8DataInline(d) {  \
    CD = 1;                     \
    write8(d);                  \
}
// command or register write
# define write8RegInline(d) {   \
    CD = 0;                     \
    write8(d);                  \
}

// inline definitions
# define write8Reg write8RegInline
# define write8Data write8DataInline

# define RAMcheckVal1 0x55
# define RAMcheckVal2 0xAA 


u16 cursor_x, cursor_y;  /// cursor_y and cursor_x globals
u8 textsize, rotation; /// textsize and rotation
u16
    textcolor,      ////< 16-bit background color for print()
    textbgcolor;    ////< 16-bit text color for print()
u16
    _width,         ////< Display width as modified by current rotation
    _height;        ////< Display height as modified by current rotation
    

// Global variables used for memory conservation 
// Keeping these variables in internal RAM to preserve data integrity of external RAM functions
unsigned char key;
unsigned int input16;
unsigned char input8;
unsigned char dataType;
unsigned int dataSize;
unsigned char validInput;
unsigned char dataEnd;
unsigned char scrollEnd;
unsigned char data;
unsigned int addr0, addr1, addr2, addr3;
unsigned int currAddr0, currAddr1;
unsigned int byte, byte1;
unsigned char ASCII;
unsigned int count = 0;
unsigned long endAddrCalc;
unsigned char xCursorHold, yCursorHold, textSizeHold;
unsigned char x, y, ts;

volatile unsigned char received_byte = 0;
volatile unsigned char received_flag = 0;

void HEXtoASCII_8write(unsigned char h);
void FIND_display();
void write(u8 c);

/**********************************************************************
 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 **********************************************************************
 * 
 * ========================== UART Functions ==========================
 * 
 **********************************************************************
 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 *********************************************************************/



/**********************************************************************
 * * Interrupt Enable -- DONE [CONFIRMED]
 * 
 * Enables interrupt for received UART data
 *********************************************************************/
void ISR_receive() __interrupt (4) {
    if (RI == 1){
        received_byte = SBUF;
        RI = 0;
        received_flag = 1;
    }
}


/**********************************************************************
 * * UART Initialization -- DONE [CONFIRMED]
 * 
 * Configures UART communication
 *********************************************************************/
void UART_Init(){
    SCON = 0x50;  // Asynchronous mode, 8-bit data and 1-stop bit
    TMOD = 0x20;  // Timer1 in Mode2. in 8 bit auto reload
    TH1 =  0xFD;  // Load timer value for 9600 baudrate
    TR1 = 1;      // Turn ON the timer for Baud rate generation
    ES  = 1;      // Enable Serial Interrupt
    EA  = 1;      // Enable Global Interrupt bit
}


/**********************************************************************
 * * UART Transmit -- DONE [CONFIRMED]
 * 
 * Transmits data through UART
 *********************************************************************/
void UART_transmit(){
    SBUF = byte;
    while(TI == 1);
    TI = 0;
}


/**********************************************************************
 * * I/O Write 8 (bits) -- DONE [CONFIRMED]
 * 
 * Writes a byte to an I/O device
 *********************************************************************/
inline void iowrite8(unsigned char __xdata* map_address, unsigned char d) {
    IOM = 1;
    *map_address = d;
    IOM = 0;
}


/**********************************************************************
 * * I/O Read 8 (bits) -- DONE [CONFIRMED]
 * 
 * Reads a byte from an I/O device
 *********************************************************************/
inline unsigned char ioread8(unsigned char __xdata* map_address) {
    data = 0;
    IOM = 1;                            
    data = *map_address;
    IOM = 0;    
    return data;   
}


/**********************************************************************
 * * Delay -- DONE [CONFIRMED]
 * 
 * Delay of (n) ms
 *********************************************************************/
void delay (int d) /// x 1ms
{
    int i,j;
    for (i=0;i<d;i++)
    {
    	for (j=0;j<1000;j++);
    }
}


/**********************************************************************
 * * Write Register 8 (bits) -- DONE
 * 
 * 
 *********************************************************************/
void writeRegister8(u8 a, u8 d) {
    CD = __CMD__;
    write8(a);
    CD = __DATA__;
    write8(d);
}


/**********************************************************************
 * * Write Register 16 (bits) -- DONE
 * 
 * 
 *********************************************************************/
void writeRegister16(u16 a, u16 d){
    unsigned short int hi, lo;
    hi = (a) >> 8;
    lo = (a);
    write8Reg(hi);
    write8Reg(lo);
    hi = (d) >> 8;
    lo = (d);
    CD = 1 ;
    write8Data(hi);
    write8Data(lo);
}


/**********************************************************************
 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 **********************************************************************
 * 
 * ========================== RTC Functions ===========================
 * 
 **********************************************************************
 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 *********************************************************************/



/**********************************************************************
 * * RTC Initialization -- DONE
 * 
 * Resets RTC 
 * Clears RTC registers
 * Start RTC
 *********************************************************************/
void rtcInit(void) {
    __xdata unsigned int i;

    rtcCmd(__REG_F__, __HR_24__|__STOP__|__RESET__);  // stop and reset
    
    // clear the registers
    for (i = __S1_REG__; i < __REG_D__;i++) {
        rtcWrite(i, 0x00);
    }
    
    rtcCmd(__REG_F__, __HR_24__);
}


/**********************************************************************
 * * RTC Busy -- DONE
 * 
 * Checks status of RTC
 *********************************************************************/
void rtcBusy(void) {
    __xdata unsigned char* map_address =  (unsigned char __xdata*) (__REG_D__);
    while((ioread8(map_address) & 0x02));
}


/**********************************************************************
 * * RTC Command -- DONE
 * 
 * Writes a command to RTC
 *********************************************************************/
inline void rtcCmd(unsigned int addr, unsigned char d) {
    __xdata unsigned char* map_address =  (unsigned char __xdata*) addr;
    iowrite8(map_address, d);
}


/**********************************************************************
 * * RTC Write -- DONE
 * 
 * Writes a byte of data to RTC
 *********************************************************************/
inline void rtcWrite(unsigned int addr, unsigned char d) {
    __xdata unsigned char* map_address =  (unsigned char __xdata*) addr;
    rtcCmd(__REG_D__, 0x01);
    rtcBusy();
    iowrite8(map_address, 0x00);
    rtcCmd(__REG_D__, d);
}


/**********************************************************************
 * * RTC Read -- DONE
 * 
 * Reads time values from RTC
 * Returns values in ASCII
 *********************************************************************/
inline unsigned char rtcRead(unsigned int addr) {
    __xdata unsigned char* map_address =  (unsigned char __xdata*) addr;
    rtcCmd(__REG_D__, 0x01); // hold on
    rtcBusy();
    data = ioread8(map_address);

    data = (data & 0x0F) | 0x30; // ascii the lower word
    rtcCmd(__REG_D__, 0x00); // hold off
    return data;
}


/**********************************************************************
 * * RTC Print -- DONE
 * 
 * Reads time values from RTC
 * Prints time on LCD in format:   HH : MM : SS
 *********************************************************************/
void rtcPrint(void) {
    unsigned char t = 0;

    xCursorHold = cursor_x;
    yCursorHold = cursor_y;
    textSizeHold = textsize;
	
    setTextColor(GRAY, BLACK);
    setTextSize(2);
    setCursor(132, 304);

    t = rtcRead(__H10_REG__);
    write(t);
    t = rtcRead(__H1_REG__);
    write(t);
    LCD_string_write(":");
    t = rtcRead(__MI10_REG__);
    write(t);
    t = rtcRead(__MI1_REG__);
    write(t);
    LCD_string_write(":");
    t = rtcRead(__S10_REG__); 
    write(t);
    t = rtcRead(__S1_REG__);
    write(t);
	
    cursor_x = xCursorHold;
    cursor_y = yCursorHold;
    textsize = textSizeHold;
}


/**********************************************************************
 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 **********************************************************************
 * 
 * ========================== LCD Functions ===========================
 * 
 **********************************************************************
 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 *********************************************************************/



/**********************************************************************
 * * Set Cursor -- DONE
 * 
 * Set cursor on LCD to input coordinates
 *********************************************************************/
void setCursor(u16 x, u16 y){
    cursor_x = x;
    cursor_y = y;
}


/**********************************************************************
 * * Set Text Color -- DONE
 * 
 * Sets text color and background color
 *********************************************************************/
void setTextColor(u16 x, u16 y){
    textcolor =  x;
    textbgcolor = y;
}


/**********************************************************************
 * * Set Text Size -- DONE
 * 
 * Sets text size (1 - 8)
 *********************************************************************/
void setTextSize(u8 s){
    if (s > 8) return;
    textsize = (s>0) ? s : 1 ;
}


/**********************************************************************
 * * Set Rotation -- DONE
 * 
 * 
 *********************************************************************/
void setRotation(u8 flag){
    switch(flag) {
        case 0:
            flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_BGR);
            _width = TFTWIDTH;
            _height = TFTHEIGHT;
            break;
        case 1:
            flag = (ILI9341_MADCTL_MV | ILI9341_MADCTL_BGR);
            _width = TFTHEIGHT;
            _height = TFTWIDTH;
            break;
        case 2:
            flag = (ILI9341_MADCTL_MY | ILI9341_MADCTL_BGR);
            _width = TFTWIDTH;
            _height = TFTHEIGHT;
            break;
      case 3:
            flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_MY | ILI9341_MADCTL_MV | ILI9341_MADCTL_BGR);
            _width = TFTHEIGHT;
            _height = TFTWIDTH;
            break;
        default:
            flag = (ILI9341_MADCTL_MX | ILI9341_MADCTL_BGR);
            _width = TFTWIDTH;
            _height = TFTHEIGHT;
            break;
    }
    writeRegister8(ILI9341_MEMCONTROL, flag);
}


/**********************************************************************
 * * Set Address -- DONE
 * 
 * 
 *********************************************************************/
// set address definition
void setAddress(unsigned int x1,unsigned int y1,unsigned int x2,unsigned int y2){
    write8Reg(0x2A);
    write8Data(x1 >> 8);
    write8Data(x1);
    write8Data(x2 >> 8);
    write8Data(x2);
    write8Reg(0x2B);
    write8Data(y1 >> 8);
    write8Data(y1);
    write8Data(y2 >> 8);
    write8Data(y2);
}


/**********************************************************************
 * * LCD Initialization -- DONE
 * 
 * 
 *********************************************************************/
void TFT_LCD_INIT(void){
    _width = TFTWIDTH;
    _height = TFTHEIGHT;

    IOM = 0;
    CD = 1;

    write8Reg(0x00);
    write8Data(0x00);
    write8Data(0x00);
    write8Data(0x00);
    delay(200);

    writeRegister8(ILI9341_SOFTRESET, 0);
    delay(50);

    writeRegister8(ILI9341_DISPLAYOFF, 0);
    delay(10);

    writeRegister8(ILI9341_POWERCONTROL1, 0x23);
    writeRegister8(ILI9341_POWERCONTROL2, 0x11);
    write8Reg(ILI9341_VCOMCONTROL1);
    write8Data(0x3d);
    write8Data(0x30);
    writeRegister8(ILI9341_VCOMCONTROL2, 0xaa);
    writeRegister8(ILI9341_MEMCONTROL, ILI9341_MADCTL_MY | ILI9341_MADCTL_BGR);
    write8Reg(ILI9341_PIXELFORMAT);
    write8Data(0x55);
    write8Data(0x00);
    writeRegister16(ILI9341_FRAMECONTROL, 0x001B);
    writeRegister8(ILI9341_ENTRYMODE, 0x07);
    writeRegister8(ILI9341_SLEEPOUT, 0);
    delay(150);

    writeRegister8(ILI9341_DISPLAYON, 0);
    delay(500);

    setAddress(0,0,_width-1,_height-1);
}


/**********************************************************************
 * * Draw Pixel -- DONE
 * 
 * 
 *********************************************************************/
void drawPixel(u16 x3,u16 y3,u16 color1)
{
    setAddress(x3,y3,x3+1,y3+1);
    CD=0; 
    write8(0x2C);
    CD = 1;
    write8(color1>>8);
    write8(color1);
}


/**********************************************************************
 * * Fill Rectangle -- DONE
 * 
 * 
 *********************************************************************/
void fillRect(u16 x,u16 y,u16 w,u16 h,u16 color){
    if ((x >= TFTWIDTH) || (y >= TFTHEIGHT))
    {
        return;
    }

    if ((x+w-1) >= TFTWIDTH)
    {
        w = TFTWIDTH-x;
    }

    if ((y+h-1) >= TFTHEIGHT)
    {
        h = TFTHEIGHT-y;
    }

    setAddress(x, y, x+w-1, y+h-1);
    write8Reg(0x2C);
    CD = 1;
    for(y=h; y>0; y--)
    {
        for(x=w; x>0; x--)
        {
            write8(color>>8); 
            write8(color);
        }
    }
}


/**********************************************************************
 * * Fill LCD Screen -- DONE
 * 
 * Fills LCD screen with input color
 *********************************************************************/
void fillScreen(unsigned int Color){
    long len = (long)TFTWIDTH * (long)TFTHEIGHT;
    int blocks;
    unsigned char  i, hi = Color >> 8, lo = Color;

    blocks = (u16)(len / 64); // 64 pixels/block
    setAddress(0,0,TFTWIDTH-1,TFTHEIGHT-1);
    write8Reg(0x2C);
    CD = 1;
    write8(hi); 
    write8(lo);
    len--;
    while(blocks--) {
        i = 16; // 64 pixels/block / 4 pixels/pass
        do {
            write8(hi); write8(lo);write8(hi); write8(lo);
            write8(hi); write8(lo);write8(hi); write8(lo);
      } while(--i);
    }
    for(i = (char)len & 63; i--; ) {
      write8(hi); 
      write8(lo);
    }
}


/**********************************************************************
 * * Draw Character -- DONE
 * 
 * Creates character for display on LCD
 *********************************************************************/
void drawChar(int x, int y, unsigned char c,u16 color, u16 bg, u8 size){
    if ((x >=TFTWIDTH) || // Clip right
        (y >=TFTHEIGHT)           || // Clip bottom
        ((x + 6 * size - 1) < 0) || // Clip left
        ((y + 8 * size - 1) < 0))   // Clip top
    {
        return;
    }

    for (char i=0; i<6; i++ )
    {
        u8 line;

        if (i == 5)
        {
            line = 0x0;
        }
        else
        {
            line = pgm_read_byte(font+(c*5)+i);
        }

        for (char j = 0; j<8; j++)
        {
            if (line & 0x1)
            {
                if (size == 1) // default size
                {
                    drawPixel(x+i, y+j, color);
                }
                else {  // big size
                    fillRect(x+(i*size), y+(j*size), size, size, color);
                }
            } else if (bg != color)
            {
                if (size == 1) // default size
                {
                    drawPixel(x+i, y+j, bg);
                }
                else
                {  // big size
                    fillRect(x+i*size, y+j*size, size, size, bg);
                }
            }

            line >>= 1;
        }
    }

}


/**********************************************************************
 * * LCD Character Write -- DONE
 * 
 * Writes the input character to LCD
 *********************************************************************/
void write(u8 c)
{
    if (c == '\n')
    {
        cursor_y += textsize*8;
        cursor_x  = 0;
    }
    else if (c == '\r')
    {

    }
    else
    {
        drawChar(cursor_x, cursor_y, c, textcolor, textbgcolor, textsize);
        cursor_x += textsize*6;
    }
}


/**********************************************************************
 * * LCD String Write -- DONE
 * 
 * Writes a string to LCD
 *********************************************************************/
void LCD_string_write(char *str)
{
    int i;
    for(i=0;str[i]!=0;i++)  /* Send each char of string till the NULL */
    {
        write(str[i]);  /* Call transmit data function */
    }
}


/**********************************************************************
 * * Key Detect -- DONE
 * 
 * 
 *********************************************************************/
unsigned char keyDetect(){
    __KEYPAD_PORT__=0xF0;           /*set port direction as input-output*/
	received_flag = 0;
    do
    {
        __KEYPAD_PORT__ = 0xF0;
        colloc = __KEYPAD_PORT__;
        colloc&= 0xF0;  /* mask port for column read only */
    }while(colloc != 0xF0 && received_flag == 0);     /* read status of column */

    do
    {
        do
        {
            //delay(20);  /* 20ms key debounce time */
			rtcPrint();
            colloc = (__KEYPAD_PORT__ & 0xF0);  /* read status of column */
        }while(colloc == 0xF0 && received_flag == 0); /* check for any key press */

        delay(1);
        colloc = (__KEYPAD_PORT__ & 0xF0);
    }while(colloc == 0xF0 && received_flag == 0);
			
	if(received_flag == 0){
		while(1)
		{
			/* now check for rows */
			__KEYPAD_PORT__= 0xFE;                                          /* check for pressed key in 1st row */
			colloc = (__KEYPAD_PORT__ & 0xF0);
			if(colloc != 0xF0)
			{
				rowloc = 0;
				break;
			}

			__KEYPAD_PORT__ = 0xFD;                                 /* check for pressed key in 2nd row */
			colloc = (__KEYPAD_PORT__ & 0xF0);
			if(colloc != 0xF0)
			{
				rowloc = 1;
				break;
			}

			__KEYPAD_PORT__ = 0xFB;         /* check for pressed key in 3rd row */
			colloc = (__KEYPAD_PORT__ & 0xF0);
			if(colloc != 0xF0)
			{
				rowloc = 2;
				break;
			}

			__KEYPAD_PORT__ = 0xF7;         /* check for pressed key in 4th row */
			colloc = (__KEYPAD_PORT__ & 0xF0);
			if(colloc != 0xF0)
			{
				rowloc = 3;
				break;
			}
		}

		if(colloc == 0xE0)
		{
			return(keypad[rowloc][0]);
		}
		else if(colloc == 0xD0)
		{
			return(keypad[rowloc][1]);
		}
		else if(colloc == 0xB0)
		{
			return(keypad[rowloc][2]);
		}
		else
		{
			return(keypad[rowloc][3]);
		}
	}
	else{
		received_flag = 0;
		return received_byte - 0x40;
	}
}


/**********************************************************************
 * * ASCII -> HEX -- DONE
 * 
 * Converts an ASCII character into HEX (ex. 'A' -> 0x0A)
 *********************************************************************/
unsigned char ASCIItoHEX(unsigned char a){
    unsigned char h;
    
    switch (a)
    {
    case '0':
        h = 0x00;
        break;
    case '1':
        h = 0x01;
        break;
    case '2':
        h = 0x02;
        break;
    case '3':
        h = 0x03;
        break;
    case '4':
        h = 0x04;
        break;
    case '5':
        h = 0x05;
        break;
    case '6':
        h = 0x06;
        break;
    case '7':
        h = 0x07;
        break;
    case '8':
        h = 0x08;
        break;
    case '9':
        h = 0x09;
        break;
    case 'A':
        h = 0x0A;
        break;
    case 'B':
        h = 0x0B;
        break;
    case 'C':
        h = 0x0C;
        break;
    case 'D':
        h = 0x0D;
        break;
    case 'E':
        h = 0x0E;
        break;
    case 'F':
        h = 0x0F;
        break;
    default:
        h = 0x00;
        break;
    }
    return h;
}

/**********************************************************************
 * * HEX -> ASCII -- DONE
 * 
 * Converts a HEX value into ASCII format (ex. 0xA -> 'A')
 *********************************************************************/
unsigned char HEXtoASCII(unsigned int h){
    unsigned char a;
    
    switch (h)
    {
    case 0x0000:
        a = '0';
        break;
    case 0x0001:
        a = '1';
        break;
    case 0x0002:
        a = '2';
        break;
    case 0x0003:
        a = '3';
        break;
    case 0x0004:
        a = '4';
        break;
    case 0x0005:
        a = '5';
        break;
    case 0x0006:
        a = '6';
        break;
    case 0x0007:
        a = '7';
        break;
    case 0x0008:
        a = '8';
        break;
    case 0x0009:
        a = '9';
        break;
    case 0x000A:
        a = 'A';
        break;
    case 0x000B:
        a = 'B';
        break;
    case 0x000C:
        a = 'C';
        break;
    case 0x000D:
        a = 'D';
        break;
    case 0x000E:
        a = 'E';
        break;
    case 0x000F:
        a = 'F';
        break;
    default:
        a = '0';
        break;
    }
    return a;
}


/**********************************************************************
 * * HEX to ASCII Write 8 (bits) on LCD -- DONE
 * 
 * 
 *********************************************************************/
void HEXtoASCII_8write(unsigned char h){

    // Upper byte
    byte = (h >> 4);
    byte &= 0x0F;
    ASCII = HEXtoASCII(byte);
    write(ASCII);

    // Lower byte
    byte = (h & 0x0F);
    ASCII = HEXtoASCII(byte);
    write(ASCII);
}


/**********************************************************************
 * * HEX to ASCII Write 16 (bits) on LCD -- DONE [CONFIRMED]
 * 
 * 
 *********************************************************************/
void HEXtoASCII_16write(unsigned int h){

    // Byte 3
    byte = (h >> 12);
    byte &= 0x000F;
    ASCII = HEXtoASCII(byte);
    LCD_string_write("0x");
    write(ASCII);

    // Byte 2
    byte = (h >> 8);
    byte &= 0x000F;
    ASCII = HEXtoASCII(byte);
    write(ASCII);

    // Byte 1
    byte = (h >> 4);
    byte &= 0x000F;
    ASCII = HEXtoASCII(byte);
    write(ASCII);

    // Byte 0
    byte = h;
    byte &= 0x000F;
    ASCII = HEXtoASCII(byte);
    write(ASCII);
}


/**********************************************************************
 * * RAM Write -- DONE [CONFIRMED]
 * 
 * Writes a byte of data to a specified RAM address (0x0000 - 0xFFFF)
 *********************************************************************/
void RAMwrite(unsigned int a, unsigned char d){
    __xdata unsigned char* ram_address;

        IOM = 0;

        // Set address
        ram_address = (unsigned char __xdata*)(a);

        // Write data to RAM
        *ram_address = d;
        IOM = 1;
}


/**********************************************************************
 * * RAM Test -- DONE [CONFIRMED]
 * 
 * 
 *********************************************************************/
void testRAM(unsigned char d){
	unsigned int i;
	__xdata unsigned char* ram_address;

	for (i = __START_RAM__; i<=__END_RAM__; i++) {
		IOM = 0;
		ram_address = (unsigned char __xdata*)(i);
		*ram_address = d;
		IOM = 1;
	}

}


/**********************************************************************
 * * RAM Read -- DONE [CONFIRMED]
 * 
 * Returns byte of data held in a specified RAM address (0x0000 - 0xFFFF)
 *********************************************************************/
unsigned char RAMread(unsigned int a){
    __xdata unsigned char* ram_address;

        IOM = 0;

        // Set address
        ram_address = (unsigned char __xdata*)(a);

        // Read data from RAM
        data = *ram_address;
        IOM = 1;
        return data;
}


/**********************************************************************
 * * Reset LCD -- DONE [CONFIRMED]
 * 
 * Sets background color to black
 * Sets text color to gray
 * Sets text size to 3
 * Clears LCD
 * Moves cursor to top left corner
 *********************************************************************/
void resetLCD(){
    setRotation(4);
    setTextColor(GRAY, BLACK);
    setTextSize(3);
    fillScreen(BLACK);
    setCursor(0, 0);
}


/**********************************************************************
 * * Invalid Input -- DONE [CONFIRMED]
 * 
 * Clears LCD
 * Sets text color to red
 * Writes "Invalid Input" on LCD
 * Holds message for 2 seconds
 * Clears LCD
 *********************************************************************/
void invalidInput(){
    resetLCD();
    setTextColor(RED, BLACK);
    
    // Write message
    LCD_string_write("\n   Invalid\n\n");
    LCD_string_write("    Input");

    // Hold for 2 seconds
    delay(200);
    resetLCD();
}


/**********************************************************************
 * * Read 4 HEX Inputs -- DONE [CONFIRMED]
 * 
 * Reads four consecutive inputs from the keypad
 * Writes the ASCII value of the key on the LCD as it is being pressed
 * Packs input values into one 16-bit value (1st key MSB)
 * Returns 16-bit value
 *********************************************************************/
void inputRead16(){
    input16 = 0x0000;
    
    setTextColor(WHITE, BLACK);

    // MSB - Read from keypad & write to LCD
    key = keyDetect();
	setTextColor(WHITE, BLACK);
    write(key);
    input16 |= (ASCIItoHEX(key) << 12);
    
    key = keyDetect();
	setTextColor(WHITE, BLACK);
    write(key);
    input16 |= (ASCIItoHEX(key) << 8);
    
    key = keyDetect();
	setTextColor(WHITE, BLACK);
    write(key);
    input16 |= (ASCIItoHEX(key) << 4);
    
    key = keyDetect();
	setTextColor(WHITE, BLACK);
    write(key);
    input16 |= ASCIItoHEX(key);
}

/**********************************************************************
 * * Read 2 HEX Inputs -- DONE [CONFIRMED]
 * 
 * Reads two consecutive inputs from the keypad
 * Writes the ASCII value of the key on the LCD as it is being pressed
 * Packs input values into one 8-bit value (1st key MSB)
 * Returns 8-bit value
 *********************************************************************/
void inputRead8(){
    setTextColor(WHITE, BLACK);

    input8 = 0x00;
    
    key = keyDetect();
	setTextColor(WHITE, BLACK);
    write(key);
    input8 |= (ASCIItoHEX(key) << 4);
    
    key = keyDetect();
	setTextColor(WHITE, BLACK);
    write(key);
    input8 |= ASCIItoHEX(key);
}


/**********************************************************************
 * * Input Data Type -- DONE [TEST USER INTERFACE UPDATE]
 * 
 * Prompts user to select data type:
 * (1) BYTE
 * (2) WORD
 * (3) DOUBLE WORD
 * 
 * Reads input from keypad
 * Verifies valid input
 * 
 * Returns data type as number of bytes:
 * BYTE = 1
 * WORD = 2
 * DOUBLE WORD = 4
 *********************************************************************/
void inputDataType(){
    validInput = 0;
    dataType = 0;

    do
    {
        // Prompt user
        resetLCD();
		setTextColor(WHITE, BLACK);
        LCD_string_write("\nSelect Data\nType:\n\n");
        LCD_string_write("(1) Byte\n");
        LCD_string_write("(2) Word\n");
        LCD_string_write("(3) Double\n    Word\n\n  _");
		cursor_x -= textsize * 6;
		x = cursor_x;
		y = cursor_y;
		ts = textsize;

        // Read input
        setTextColor(WHITE, BLACK);
        key = keyDetect();
		cursor_x = x;
		cursor_y = y;
		textsize = ts;
        write(key);

        switch (key)
        {
        // Byte
        case '1':
            dataType = 1;
            validInput = 1;
            break;

        // Word
        case '2':
            dataType = 2;
            validInput = 1;
            break;

        // Double word
        case '3':
            dataType = 4;
            validInput = 1;
            break;

        // Invalid input
        default:
            invalidInput();
            validInput = 0;
        break;
        }
    } while (validInput == 0);
}


/**********************************************************************
 * * Input Data Size -- DONE [CONFIRMED]
 * 
 * Prompts user to input 16-bit data size in HEX
 * Reads 4 HEX inputs from keypad
 * Prints key on LCD as it is pressed
 * Returns the 16-bit data size
 *********************************************************************/
void inputDataSize(){
    validInput = 0;
    dataSize = 0x0000;

    do
    {
        // Prompts user
        resetLCD();
        LCD_string_write("\nEnter Data\nSize:\n\n  0x____");
        cursor_x -= 4 * textsize * 6;
		x = cursor_x;
		y = cursor_y;
		ts = textsize;
        // Reads input
        input16 = 0x0000;
    
		setTextColor(WHITE, BLACK);

		// MSB - Read from keypad & write to LCD
		key = keyDetect();
		cursor_x = x;
		cursor_y = y;
		textsize = ts;
		write(key);
		x = cursor_x;
		y = cursor_y;
		ts = textsize;
		input16 |= (ASCIItoHEX(key) << 12);
		
		key = keyDetect();
		cursor_x = x;
		cursor_y = y;
		textsize = ts;
		write(key);
		x = cursor_x;
		y = cursor_y;
		ts = textsize;
		input16 |= (ASCIItoHEX(key) << 8);
		
		key = keyDetect();
		cursor_x = x;
		cursor_y = y;
		textsize = ts;
		write(key);
		x = cursor_x;
		y = cursor_y;
		ts = textsize;
		input16 |= (ASCIItoHEX(key) << 4);
		
		key = keyDetect();
		cursor_x = x;
		cursor_y = y;
		textsize = ts;
		write(key);
		x = cursor_x;
		y = cursor_y;
		ts = textsize;
		input16 |= ASCIItoHEX(key);
		dataSize = input16;

        // Input validation
        if(dataSize == 0x0000){
            invalidInput();
            validInput = 0;
        }
        else{
            validInput = 1;
        }
    } while (validInput == 0);
}

/**********************************************************************
 * * RAM Check -- DONE [CONFIRMED]
 * 
 * Writes 0x55 to all RAM locations 0x0000 - 0xFFFF
 * Verifies data
 * 
 * Writes 0xAA to all RAM locations
 * Verifies data
 *********************************************************************/
void RAM_CHECK(){
    unsigned int i;
	data = 0;
	dataEnd = 0;

    // Write 0x55 to all RAM locations
    resetLCD();
    LCD_string_write("\nWriting 0x55\nto all\nexternal RAM\nlocations.\n\n");
    testRAM(RAMcheckVal1);
	RAMwrite(0xFFFF, RAMcheckVal1);

    setTextColor(GREEN, BLACK);
    LCD_string_write("Write\ncomplete.\n");
	delay(200);

    // Verify all RAM locations equal 0x55
    resetLCD();
    LCD_string_write("\nVerifying all\nRAM locations\nequal 0x55.\n\n");
    i = __START_RAM__;
    do
    {
        data = RAMread(i);
        i++;
    } while (data == RAMcheckVal1 && i <= __END_RAM__);
	if(data == RAMcheckVal1){
		data = RAMread(0xFFFF);
	}

    // Data error
    if(data != RAMcheckVal1){
        setTextColor(RED, BLACK);
        LCD_string_write("1st RAM check\nunsuccessful.\n\n");
        delay(100);
		
		LCD_string_write("Error at:\n");
        HEXtoASCII_16write(i - 1);
        LCD_string_write(": 0x");
        HEXtoASCII_8write(data);
		
        setTextColor(WHITE, BLACK);
        LCD_string_write("Returning to\nmain menu.");
        delay(200);
    }

    // 1st check successful. Write 0xAA to all RAM locations
    else{
        setTextColor(GREEN, BLACK);
        LCD_string_write("1st RAM check\nsuccessful.\n\n");
		delay(200);

        resetLCD();
        LCD_string_write("\nWriting 0xAA\nto all\nexternal RAM\nlocations.\n\n");
        testRAM(RAMcheckVal2);
		RAMwrite(0xFFFF, RAMcheckVal2);
        setTextColor(GREEN, BLACK);
        LCD_string_write("Write\ncomplete.\n");
		delay(200);

        // Verify all RAM locations equal 0xAA
        resetLCD();
        LCD_string_write("\nVerifying all\nRAM locations\nequal 0xAA.\n\n");
        i = __START_RAM__;
        do
        {
            data = RAMread(i);
            i++;
        } while (data == RAMcheckVal2 && i <= __END_RAM__);
		if(data == RAMcheckVal2){
			data = RAMread(0xFFFF);
		}
        // Data error
        if(data != RAMcheckVal2){
            setTextColor(RED, BLACK);
            LCD_string_write("2nd RAM check\nunsuccessful.\n\n");
            delay(100);

            LCD_string_write("Error at:\n");
            HEXtoASCII_16write(i - 1);
            LCD_string_write(": 0x");
            HEXtoASCII_8write(data);

            setTextColor(WHITE, BLACK);
            LCD_string_write("Returning to\nmain menu.");
            delay(100);
        }

        // 2nd check successful. RAM check complete
        else{
            setTextColor(GREEN, BLACK);
            LCD_string_write("2nd RAM check\nsuccessful.\n\n");
            LCD_string_write("RAM check\ncomplete.\n\n");
            delay(100);
            setTextColor(WHITE, BLACK);
            LCD_string_write("Returning to\nmain menu.");
            delay(100);
        }
    }
}


/**********************************************************************
 * * Move -- DONE [CONFIRMED]
 * 
 * Prompts user to input 16-bit source address in HEX
 * Reads 4 HEX inputs from keypad
 * Prints key on LCD as it is pressed
 * 
 * Prompts user to input 16-bit destination address in HEX
 * Reads 4 HEX inputs from keypad
 * Prints key on LCD as it is pressed
 * 
 * Prompts user to select data type
 * Verifies valid input
 * 
 * Prompts user to input 16-bit data size
 * Verifies valid input (! = 0x0000)
 * 
 * Moves data from source addresses to destination addresses
 * Returns to main menu
 *********************************************************************/
void MOVE(){
    endAddrCalc = 0;
    addr0 = 0;                  // Source Address
    addr1 = 0;                  // Source End Address
    addr2 = 0;                  // Destination Address
    addr3 = 0;                  // Destination End Address
    currAddr0 = 0;              // Current Source Address
    currAddr1 = 0;              // Current Destination Address

    // Source Address
    resetLCD();
    LCD_string_write("\nEnter source\nstarting RAM\naddress:\n\n\n  0x____");
	cursor_x -= 4 * textsize * 6;
    inputRead16();
    addr0 = input16;

    // Destination Address
    resetLCD();
    LCD_string_write("\nEnter\ndestination\nstarting RAM\naddress:\n\n\n  0x____");
	cursor_x -= 4 * textsize * 6;
    inputRead16();
    addr2 = input16;

    // Data Type
    inputDataType();

    // Data Size
    resetLCD();
    inputDataSize();

    // Data validation
    if(addr2 > addr0){
        endAddrCalc = addr2 + (dataSize * dataType);
        if(endAddrCalc > 0xFFFF){
            addr3 = 0xFFFF;
        }
        else{
            addr3 = addr2 + (dataSize * dataType);
        }
        dataSize = addr3 - addr2;
        addr1 = addr0 + dataSize;
    }
    else{
        endAddrCalc = addr0 + (dataSize * dataType);
        if(endAddrCalc > 0xFFFF){
            addr1 = 0xFFFF;
        }
        else{
            addr1 = addr0 + (dataSize * dataType);
        }
        dataSize = addr1 - addr0;
        addr3 = addr2 + dataSize;
    }

    // Move data
    // End of source locations overlap beginning of destination locations
    if(addr0 < addr2 && addr1 > addr2){
        currAddr0 = addr1;
        for(currAddr1 = addr3; currAddr1 >= addr2; currAddr1--){
            data = RAMread(currAddr0);
            RAMwrite(currAddr1, data);
            currAddr0--;
        }
    }

    // All source locations are before or after destination locations (no overlap)
    // Or beginning of source locations overlap end of destination locations
    else{
        currAddr0 = addr0;
        for(currAddr1 = addr2; currAddr1 <= addr3; currAddr1++){
            data = RAMread(currAddr0);
            RAMwrite(currAddr1, data);
            currAddr0++;
        }
    }

    // Move complete
    resetLCD();
    setTextColor(GREEN, BLACK);
    LCD_string_write("\nMove complete.\n\n");
    delay(100);
    setTextColor(WHITE, BLACK);
    LCD_string_write("Returning to\nmain menu.");
    delay(100);
}


/**********************************************************************
 * * Count -- DONE [CONFIRMED]
 * 
 * 
 *********************************************************************/
void COUNT(){
    endAddrCalc = 0;
    addr0 = 0;                      // Starting Address
    addr1 = 0;                      // End Address
    dataSize = 0;                   // Data Size
    byte1 = 0;                       // Find Value
    count = 0;
	addr3 = 0;						// Count overflow
	dataEnd = 0;

    // Source Address
    resetLCD();
    LCD_string_write("\nEnter\nstarting RAM\naddress:\n\n  0x____");
	cursor_x -= 4 * textsize * 6;
    inputRead16();                  // Read input
    addr0 = input16;                // Start address

    // Data Size
    resetLCD();
    inputDataSize();                // Prompt & read input

    // Find Value
    resetLCD();
    LCD_string_write("\nEnter search\nvalue:\n\n  0x__");
	cursor_x -= 2 * textsize * 6;
    inputRead8();                  // Read input
    byte1 = input8;                 // Find value

    // End Address
    endAddrCalc = addr0 + dataSize;
    if(endAddrCalc < addr0){ // RAM overflow
        addr1 = 0xFFFF;             // Set end address
        dataSize = addr1 - addr0;   // Recalculate data size
    }
    else{                           // No RAM overflow
        addr1 = addr0 + dataSize;
    }

	
	// Print values on LCD for testing
	/*resetLCD();
	LCD_string_write("start addr:\n");
	HEXtoASCII_16write(addr0);
	LCD_string_write("\nend addr:\n");
	HEXtoASCII_16write(addr1);
	LCD_string_write("\ndata type:\n");
	HEXtoASCII_8write(dataType);
	LCD_string_write("\ndata size:\n");
	HEXtoASCII_16write(dataSize);
	LCD_string_write("\nfind value:\n");
	HEXtoASCII_8write(byte1);
	delay(500);*/

	int i = addr0;
	while(i <= addr1 && dataEnd == 0){
		data = RAMread(i);
        if(data == byte1){
			if(count == 0xFFFF){
				addr3 = 1;
			}
            count++;
        }
		if(i == 0xFFFF){
			dataEnd = 1;
		}
		i++;
	}

    if(count > 0 || addr3 == 1){
		resetLCD();
		setTextColor(GREEN, BLACK);
        LCD_string_write("\n0x");
        HEXtoASCII_8write(byte1);
        LCD_string_write(" found\n");
		
		if(count > 0){
			HEXtoASCII_16write(count);
		}
        else if(addr3 == 1){
			LCD_string_write("0x10000");
		}
        LCD_string_write("\ntimes.");
		delay(300);
		FIND_display();                 // Display dump data
    }
	else{
		resetLCD();
		LCD_string_write("\n0x");
        HEXtoASCII_8write(byte1);
		LCD_string_write(" not\nfound in\nexternal RAM\n");
		HEXtoASCII_16write(addr0);
		LCD_string_write(" -\n");
		HEXtoASCII_16write(addr1);
		delay(300);
		resetLCD();
		LCD_string_write("Returning to\nmain menu.");
		delay(200);
	}
}


/**********************************************************************
 * * Memory Dump Display -- DUMP [CONFIRMED]
 * 
 * 
 *********************************************************************/
void DUMP_display(){
    int i, j;
    currAddr0 = 0;              // Current Source Address
    currAddr1 = 0;              // Page Count
    dataEnd = 0;
	addr2 = 0;					// Prev data count

    currAddr0 = addr0;          // Set current address
    
    do{
        resetLCD();
        setTextSize(2);
        LCD_string_write("\n");

        // 10+ addresses left to display
        if(dataSize >= 10){
            addr2 = 10;

            for(i = 0; i < 10; i++){
                HEXtoASCII_16write(currAddr0);
                LCD_string_write(": 0x");
                for(j = 0; j < dataType; j++){
                    HEXtoASCII_8write(RAMread(currAddr0));
                    currAddr0++;
                }
                LCD_string_write("\n");
                dataSize--;
            }
            currAddr1++;        // Next page
        }

        // Less than 10 but more that 0 addresses left to display
        else if(dataSize > 0 && dataSize < 10){
            addr2 = dataSize;

            while(dataSize > 0){
                HEXtoASCII_16write(currAddr0);
                LCD_string_write(": 0x");
                for(j = 0; j < dataType; j++){
                    HEXtoASCII_8write(RAMread(currAddr0));
                    currAddr0++;
                }
                LCD_string_write("\n");
                dataSize--;
            }
			if(addr3 > 0){
				HEXtoASCII_16write(currAddr0);
                LCD_string_write(": 0x");
                for(j = 0; j < addr3; j++){
                    HEXtoASCII_8write(RAMread(currAddr0));
                    currAddr0++;
                }
				currAddr0 -= addr3;
                LCD_string_write("\n");
			}
            currAddr1++; 
        }
		
		else if(dataSize == 0 && addr3 > 0){
			addr2 = dataSize;
			HEXtoASCII_16write(currAddr0);
			LCD_string_write(": 0x");
			for(j = 0; j < addr3; j++){
				HEXtoASCII_8write(RAMread(currAddr0));
				currAddr0++;
			}
			LCD_string_write("\n");
			currAddr1++; 
			currAddr0 -= addr3;
		}

		
        setCursor(0, 250);
        LCD_string_write("  (0) - Next Page\n  (1) - Prev Page\n  (E) - END\n");
		HEXtoASCII_16write(currAddr1);
        key = keyDetect();
        switch (key)
        {

        // Next Page
        case '0':
            validInput = 1;

            // Not at end of block - move to next page
            if(dataSize > 0){
                dataEnd = 0;
                //currAddr1++;        // next page
            }

            // End of block
            else{
                dataEnd = 0;
                currAddr0 -= (addr2 * dataType); // 1st address of previous page displayed
                dataSize += addr2;  // restore data size of previous page
				currAddr1--;
                resetLCD();
                LCD_string_write("\nEnd of Data.");
                delay(200);
            }
            break;

        // Previous Page
        case '1':

            // Move to previous page
            if(currAddr1 > 1){
                dataEnd = 0;
                currAddr0 -= ((addr2 + 10) * dataType);
                currAddr1 -= 2;
                dataSize += (addr2 + 10);
            }

            // Page 1 - end of data
            else{
                dataEnd = 0;
                resetLCD();
                LCD_string_write("End of Data");
                delay(200);
                currAddr0 -= (addr2 * dataType);
                currAddr1--;
                dataSize += addr2;
            }
            break;

        // End
        case 'E':
            resetLCD();
            LCD_string_write("\nReturning to\nMain Menu.");
            delay(200);
            dataEnd = 1;
            break;
        
        // Invalid input
        default:
            dataEnd = 0;
            invalidInput();
            if(addr2 > 0 ){
                currAddr0 -= (addr2 * dataType);
                currAddr1 --;
                dataSize += addr2;
                addr2 = 0;
            }
            break;
        }
    } while(dataEnd == 0);
}


/**********************************************************************
 * * Memory Dump -- DONE [CONFIRMED]
 * 
 * 
 *********************************************************************/
void DUMP(){
    endAddrCalc = 0;
    addr0 = 0;                      // Source Address
    addr1 = 0;                      // Source End Address
    dataType = 0;                   // Data Type
    dataSize = 0;                   // Data Size
	addr3 = 0;						// Remainder

    // Source Address
    resetLCD();
    LCD_string_write("\nEnter source\nstarting RAM\naddress:\n\n  0x____");
	cursor_x -= 4 * textsize * 6;
    inputRead16();                  // Read input
    addr0 = input16;                // Set starting address

    // Data Type
    inputDataType();                // Prompt & read input

    // Data Size
    resetLCD();
    inputDataSize();                // Prompt & read input

    // End Address
    endAddrCalc = addr0 + (dataType * dataSize);
    if(endAddrCalc < addr0){ // RAM overflow
        addr1 = 0xFFFF;             // Set end address
    }
    else{                           // No RAM overflow
        addr1 = addr0 + (dataType * dataSize) - 1;
    }
	dataSize = ((addr1 - addr0) + 1) / dataType;   // Recalculate data size
	addr3 = ((addr1 - addr0) + 1) % dataType;


	// Print values on LCD for testing	
	/*resetLCD();
	LCD_string_write("start addr:\n");
	HEXtoASCII_16write(addr0);
	LCD_string_write("\nend addr:\n");
	HEXtoASCII_16write(addr1);
	LCD_string_write("\ndata type:\n");
	HEXtoASCII_8write(dataType);
	LCD_string_write("\ndata size:\n");
	HEXtoASCII_16write(dataSize);
	LCD_string_write("\nremainder:\n");
	HEXtoASCII_16write(addr3);
	delay(500);*/
	
	
    // Display
    DUMP_display();                 // Display dump data
}

/**********************************************************************
 * * Edit Display -- DONE [CONFIRMED]
 * 
 * Displays input RAM location & its data contents
 * Prompts to input new data
 * Writes new data to RAM
 * Prompts to edit next RAM location or return to main menu
 *********************************************************************/
void EDIT_display(unsigned int addr){

    // Read data stored in RAM
    data = RAMread(addr);

    // Display old value
    resetLCD();
    LCD_string_write("\n");
    HEXtoASCII_16write(addr);
    LCD_string_write(": 0x");
    HEXtoASCII_8write(data);

    // New value read input & write to RAM
    LCD_string_write("\n\nNew value:\n  0x__");
	cursor_x -= 2 * textsize * 6;
    inputRead8();
    RAMwrite(addr, input8);

    // Prompt edit next location or return to main menu
    LCD_string_write("\n\n\n\n(1) Edit next\nRAM location\n\n");
    LCD_string_write("(E) End");
}


/**********************************************************************
 * * Edit -- DONE [CONFIRMED]
 * 
 * Prompts for starting RAM address
 * Reads inputs from keypad & writes to LCD as keys are pressed
 * Prompts for new data
 * Writes new data to RAM location
 * Prompts to edit next RAM address or return to main menu
 * If at end of RAM, function ends
 *********************************************************************/
void EDIT(){
    dataEnd = 0;
    scrollEnd = 0;
    validInput = 0;

    // Prompt user
    resetLCD();
    LCD_string_write("\nEnter\nstarting RAM\naddress:\n\n  0x____");
	cursor_x -= 4 * textsize * 6;
    
    // Starting RAM address
    inputRead16();
    
    // Display
    while(scrollEnd == 0 && dataEnd == 0){

        // Input validation
        do
        {
            EDIT_display(input16);
            key = keyDetect();

            switch (key)
            {

            // Scroll
            case '1':
                validInput = 1;

                // End of RAM
                if(input16 == 0xFFFF){
                    scrollEnd = 1;
                }

                // Not end of RAM
                else{
                    input16++;
                    scrollEnd = 0;
                }
                break;

            // End
            case 'E':
                validInput = 1;
                dataEnd = 1;
                break;
            
            // Invalid input
            default:
                validInput = 0;
                invalidInput();
                break;
            }
        } while (validInput == 0);
    }

    // End of RAM
    resetLCD();
    if(scrollEnd == 1){
        setTextColor(RED, BLACK);
        LCD_string_write("\nEnd of data.\n");
    }

    // Return to main menu
    setTextColor(WHITE, BLACK);
    LCD_string_write("\nReturning to\nmain menu.");
    delay(200);
}


/**********************************************************************
 * * Find Display -- NOT DONE. NEED TO IMPLEMENT ADDRESS DISPLAY & SCROLLING LOGIC
 * 
 * addr0 - Start Address
 * addr1 - End Address
 * addr2 - First address of currently displayed page
 * currAddr0 - Current address being searched
 * currAddr1 - Page count
 * data - RAM data
 * byte1 - Search value
 *********************************************************************/
void FIND_display(){
	addr2 = 0;						// first addr of page
	currAddr1 = 0;					// page count
    resetLCD();
    currAddr0 = addr0;				// Load starting address
    data = RAMread(currAddr0);		// Read data from starting address
	
	// RAM data does not match search value & RAM address is within range
    while(data != byte1 && currAddr0 < addr1){
        currAddr0++;				// Next RAM address
        data = RAMread(currAddr0);	// Read data from RAM
    }

	// RAM data does not match search value & at end of RAM range
    if(data != byte1 && currAddr0 == addr1){
        resetLCD();
        LCD_string_write("\n0x");
        HEXtoASCII_8write(byte1);
        LCD_string_write(" not\nfound in\naddress range\n\n");
        HEXtoASCII_16write(addr0);
        LCD_string_write(" -\n");
        HEXtoASCII_16write(addr1);
		delay(200);
		resetLCD();
		LCD_string_write("Returning to\nmain menu.");
		delay(100);
    }
	
	
	
	// RAM data matches search value
	//===========================================================================
    else{
        resetLCD();
		setTextColor(GREEN, BLACK);
        LCD_string_write("\n0x");
        HEXtoASCII_8write(byte1);
        LCD_string_write(" found at\nthe following\naddresses:\n\n");
		delay(200);
		addr2 = currAddr0;					// Load first found address of page
		
		
		// Display first RAM address of display page where search value is found
		//=======================================================================
		do{
			resetLCD();
			currAddr0 = addr2;				// Load current address	
			HEXtoASCII_16write(currAddr0);	// Write found address to LCD
			count = 7;						// Set page address display counter
			currAddr1++;					// Increment page count
			
			
			// Search for find value in remaining RAM addresses until end of
			// RAM or display page full (8 RAM addresses)
			//===================================================================
			if(currAddr0 != 0xFFFF){
                    do{
                    currAddr0++;				// Next RAM address
                    data = RAMread(currAddr0);	// Read data
                    if(data == byte1){			// If data = search value
                        count--;				// Decrement page address display counter
                        LCD_string_write("\n");	// Next line
                        HEXtoASCII_16write(currAddr0);	// Display found address
                    }
                }while(currAddr0 < addr1 && count > 0);
            }
			//===================================================================
			
			
			// Display user interface options and page count at bottom of page
			//===================================================================
			setCursor(0, 250);
			setTextSize(2);
			setTextColor(WHITE, BLACK);
			LCD_string_write("  (0) - Next Page\n  (1) - Prev Page\n  (E) - END\n");
			HEXtoASCII_16write(currAddr1);
			//===================================================================
			
			
			// Read input from keypad
			//===================================================================
			key = keyDetect();
			switch (key)
			{
			
				
				// Next page
				//===============================================================
				case '0':
				
				
					// End of RAM range
					//===========================================================
                    if(currAddr0 >= addr1){
                        resetLCD();
						LCD_string_write("End of Data.");
						delay(200);
						currAddr1--;	// Reset page count to last displayed page 
                    }
					//===========================================================
					
					
					// Not at end of RAM
					//===========================================================
                    else{
                        
						
						// Continue searching RAM addresses until search value
						// is found or until end of RAM range
						//=======================================================
						do{
							currAddr0++;			// Next RAM address
							data = RAMread(currAddr0);	// Read data
							if(data == byte1){			// If data matches search value
								addr2 = currAddr0;		// Set first address of display page
							}
						}while(currAddr0 < addr1 && data != byte1);
						//=======================================================
						
						
						// End of RAM range & RAM data does not match search value
                        //=======================================================
                        if(currAddr0 >= addr1 && data != byte1){
                            resetLCD();
                            LCD_string_write("End of Data.");
                            delay(200);
                            currAddr1--;	// Reset page count to last displayed page
                        }
						//=======================================================
						
                    }
					break;
					//===========================================================
				//===============================================================
					
				
				// Previous page
				//===============================================================
				case '1':
				
					// At first display page
					//===========================================================
					if(currAddr1 == 1){
						resetLCD();
						LCD_string_write("End of Data.");
						delay(200);
						currAddr1--;	// Reset page count to last displayed page
					}
					//===========================================================
					
					
					// Not at first display page
					//===========================================================
					else{
						currAddr0 = addr2;
						count = 0;
						while(count < 8){
							currAddr0--;
							data = RAMread(currAddr0);
							if(data == byte1){
								count++;
							}
						}
						addr2 = currAddr0;
						currAddr1 -= 2;
					}
					break;
					//===========================================================

				
				// End
				//===============================================================
                case 'E':
                    resetLCD();
		            LCD_string_write("Returning to\nmain menu.");
		            delay(200);
                    break;
				//===============================================================
				
				
				// Invalid input
				//===============================================================
				default:
					invalidInput();
					currAddr1--;
					break;
				//===============================================================
			}
		}while(key != 'E');
    }
}


/**********************************************************************
 * * Find -- TEST ONCE FIND_display IS COMPLETE
 * 
 * 
 *********************************************************************/
void FIND(){
    endAddrCalc = 0;
    addr0 = 0;                      // Starting Address
    addr1 = 0;                      // End Address
    dataType = 0;                   // Data Type
    dataSize = 0;                   // Data Size
    byte1 = 0;                       // Find Value

    // Source Address
    resetLCD();
    LCD_string_write("\nEnter\nstarting RAM\naddress:\n\n   0x____");
	cursor_x -= 4 * textsize * 6;
    inputRead16();                  // Read input
    addr0 = input16;                // Start address
	//if(addr0 < 0x0020){
	//	addr0 = 0x0020;
	//}

    // Data Size
    resetLCD();
    inputDataSize();                // Prompt & read input

    // Find Value
    resetLCD();
    LCD_string_write("\nEnter search\nvalue:\n\n   0x__");
	cursor_x -= 2 * textsize * 6;
    inputRead8();                  // Read input
    byte1 = input8;                 // Find value

    // End Address
    endAddrCalc = addr0 + dataSize;
    if(endAddrCalc < addr0){ // RAM overflow
        addr1 = 0xFFFF;             // Set end address
        dataSize = addr1 - addr0;   // Recalculate data size
    }
    else{                           // No RAM overflow
        addr1 = addr0 + dataSize;
    }


	// Print values on LCD for testing
	/*resetLCD();
	LCD_string_write("start addr:\n");
	HEXtoASCII_16write(addr0);
	LCD_string_write("\nend addr:\n");
	HEXtoASCII_16write(addr1);
	LCD_string_write("\ndata type:\n");
	HEXtoASCII_8write(dataType);
	LCD_string_write("\ndata size:\n");
	HEXtoASCII_16write(dataSize);
	LCD_string_write("\nfind value:\n");
	HEXtoASCII_8write(byte1);
	delay(500);*/
	
	
    // Display
    FIND_display();                 // Display dump data
}


/**********************************************************************
 * * RTC Test -- DONE [CONFIRMED]
 * 
 * 
 *********************************************************************/
/*void RTC_test(){
    resetLCD();
    setTextSize(2);
    rtcPrint();
    LCD_string_write("\n\n3 second delay\n\n");
    delay(350);
    rtcPrint();
    LCD_string_write("\n\n8 second delay\n\n");
    delay(1000);
    rtcPrint();
    delay(300);
}*/


/**********************************************************************
 * * UART Test -- DONE [CONFIRMED]
 * 
 * 
 *********************************************************************/
/*void UART_test(){
    resetLCD();
    LCD_string_write("\n(E) End\n\n");
    received_byte = 0x00;

    while(received_byte != 'E' + 0x40){
        if (received_flag == 1){
            write(received_byte - 0x40); 
            received_flag = 0;
        }
    }
}*/




/**********************************************************************
 * * LCD Main Menu -- WORKS. NEED TO IMPLEMENT RUNNING CLOCK. TEST 7-SEG UPDATE.
 * 
 * Writes: 
 * 
 * "Cameron Biniamow"
 * "ECEN-4330"
 * 
 * "(A) RAM CHECK"
 * "(B) MOVE"
 * "(C) COUNT"
 * "(D) DUMP"
 * "(E) EDIT"
 * "(F) FIND"
 * 
 * Reads input from keypad
 * Verifies valid input
 * Begins selected procedure
 *********************************************************************/
void LCD_mainMenu() {

	key = 0;
	iowrite8(seg7_address, 0xC0);
    
    // Write name & class
    resetLCD();
    setTextColor(GREEN, BLACK);
    LCD_string_write("   Cameron\n   Biniamow\n");
    LCD_string_write("  ECEN-4330\n\n");

    // List procedures
    setTextColor(WHITE, BLACK);
    LCD_string_write("(A) RAM CHECK\n");
    LCD_string_write("(B) MOVE\n");
    LCD_string_write("(C) COUNT\n");
    LCD_string_write("(D) DUMP\n");
    LCD_string_write("(E) EDIT\n");
    LCD_string_write("(F) FIND\n");
    //LCD_string_write("(1) RTC\n");
    //LCD_string_write("(2) UART\n");
	setTextColor(WHITE, BLACK);
    setTextSize(1);
	setCursor(3, 304);
	LCD_string_write("Spring 2021");
	rtcPrint();

    // Read input
    key = keyDetect();
    switch (key)
    {
    case 'A':
        iowrite8(seg7_address, 0x88);
        RAM_CHECK();
        break;
    case 'B':
        iowrite8(seg7_address, 0x83);
        MOVE();
        break;
    case 'C':
        iowrite8(seg7_address, 0xC6);
        COUNT();
        break;
    case 'D':
        iowrite8(seg7_address, 0xA1);
        DUMP();
        break;
    case 'E':
        iowrite8(seg7_address, 0x86);
        EDIT();
        break;
    case 'F':
        iowrite8(seg7_address, 0x8E);
        FIND();
        break;
    /*case '1':
        iowrite8(seg7_address, 0xF9);
        RTC_test();
        break;
    case '2':
        iowrite8(seg7_address, 0xA4);
        UART_test();
        break;*/
    default:
        iowrite8(seg7_address, 0xFF);
        invalidInput();
        break;
    }
}

/**********************************************************************
 * * Main -- DONE [CONFIRMED]
 * 
 * Sets Command & IO/M pins LOW
 * Initializes LCD
 * Loops LCD main menu
 *********************************************************************/
void main (void) {
    CD = 0;
    IOM = 0;

    UART_Init();
    rtcInit();

    iowrite8(seg7_address, 0xFE);//a
	delay(100);
	iowrite8(seg7_address, 0xFC);//a & b
	delay(100);
    iowrite8(seg7_address, 0xF8);//a & b & c
	delay(100);
    iowrite8(seg7_address, 0xF0);//a & b & c & d
	delay(100);
    iowrite8(seg7_address, 0xE0);//a & b & c & d & e
	delay(100);
	iowrite8(seg7_address, 0xC0);//a & b & c & d & e & f
	delay(100);
    IOM = 0;
    CD = 1;

    TFT_LCD_INIT();
    iowrite8(seg7_address, 0xF9);
    resetLCD();
    
    while(1) {
        LCD_mainMenu();
    }
}
 
