/// all the required header for project here

# include <AT89C55.h>
# include "registers.h"
# include "bmp_image.h"

// define any address for lcd for address decoding
// use a latch
# define __LCD_ADDRESS__ 0x4000
# define __SEG_7_ADDRESS__ 0x8000
# define __RTC_ADDRESS__ 0x0000

// RTC address registers

# define __S1_REG__			__RTC_ADDRESS__ + 0x00
# define __S10_REG__		__RTC_ADDRESS__ + 0x01
# define __MI1_REG__		__RTC_ADDRESS__ + 0x02
# define __MI10_REG__		__RTC_ADDRESS__ + 0x03
# define __H1_REG__			__RTC_ADDRESS__ + 0x04
# define __H10_REG__		__RTC_ADDRESS__ + 0x05
# define __D1_REG__ 		__RTC_ADDRESS__ + 0x06
# define __D10_REG__		__RTC_ADDRESS__ + 0x07
# define __M1_REG__			__RTC_ADDRESS__ + 0x08
# define __M10_REG__		__RTC_ADDRESS__ + 0x09
# define __Y1_REG__			__RTC_ADDRESS__ + 0x0A
# define __Y10_REG__		__RTC_ADDRESS__ + 0x0B
# define __W_REG__			__RTC_ADDRESS__ + 0x0C
# define __REG_D__			__RTC_ADDRESS__ + 0x0D
# define __REG_E__			__RTC_ADDRESS__ + 0x0E
# define __REG_F__			__RTC_ADDRESS__ + 0x0F

// F register values
# define __HR_24__ 			0x04
# define __STOP__			0x02
# define __RESET__			0x01

# define __START_RAM__ 0x0000
# define __END_RAM__ 0xFFFE
/// LCD specific variables
// width and height of lcd in pixels
# define TFTWIDTH 240
# define TFTHEIGHT 320



// if needed to remeber command/data lines and active/idle signals

# define __ACTIVE__ 0
# define __IDLE__ 1
# define __CMD__ 0
# define __DATA__ 1

# define __KEYPAD_PORT__ P1


// defining important pins for LCD interfacing
// This is how it is defined for
# define IOM P3_4
# define CD P3_5


// definition of colors in 2-bytes
#define BLACK 0x0000
#define GRAY 0xD6BA
#define BLUE 0x001F
#define RED 0xF800
#define GREEN 0x07E0
#define CYAN 0x07FF
#define MAGENTA 0xF81F
#define YELLOW 0xFFE0
#define WHITE 0xFFFF

// variable definitions

#define	u8 unsigned char
#define	u16 unsigned int
#define	u32 unsigned long


//
/// function declaration


void TFT_LCD_INIT(void);  // init function
void delay(int d);  // delay function for d ms

//void write8(u8 d);
//void write8Data(u8 d);
//void writeProbe(void);


void TFT_LCD_BEGIN(void);  // begin LCD
void writeRegister8(u8 a, u8 d);
void writeRegister16(u16 a, u16 d);
void fillScreen(unsigned int color);  // fill screen with the color defined
// set address to bound your operational area
void setAddress(unsigned int x1,unsigned int y1,unsigned int x2,unsigned int y);
// reset your LCD
void reset(void);



// draw PIXEL at one pixel
void drawPixel(u16 x3,u16 y3,u16 colour1);
// fill your LCD in operating region
void lcdfill(u16 xsta,u16 ysta,u16 xend,u16 yend,u16 color);


void fillRect(u16 x,u16 y,u16 w,u16 h,u16 color);

// draw a character
void drawchar(int x, int y, unsigned char c,u16 color, u16 bg, u8 size);
//void write(u8 c);
// set cursor in certain pixel
void setCursor(u16 x, u16 y);
// set textcolor
void setTextColor(u16 x, u16 y);
// set textsize
void setTextSize(u8 s);

// set string write
void LCD_string_write(char *str);
// dont really need this function
void drawGrayscaleBitmap(int x, int y, const u16 bitmap[], int w, int h, u16 color) ;

// draw circles
void drawCircle(int x0, int y0, int r, u16 color);
// test circles
void testCircles(u8 radius, u16 color);
//void DrawRectangle(u16 x1, u16 y1, u16 x2, u16 y2);
u32 myPow(u8 m, u8 n);
void showNumberLCD(u16 x, u16 y, u32 num, u8 len);
void showNumber2LCD(u16 x, u16 y, u32 num, u8 len);

unsigned char keyDetect();
void testRAM(unsigned char d);
void freeType();
unsigned int reverse(unsigned char d);
void asciiToDec(unsigned char d);
void asciiToHex(unsigned char d);
void rtcInit(void);
void rtcBusy(void);
inline void rtcCmd(unsigned int addr, unsigned char d);
inline void rtcWrite(unsigned int addr, unsigned char d);
inline unsigned char rtcRead(unsigned int addr);
void rtcPrint(void);