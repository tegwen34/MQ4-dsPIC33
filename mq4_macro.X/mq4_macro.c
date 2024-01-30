#include "pic24_all.h"
#include "stdio.h"
#include "math.h"
#include "pic24_clockfreq.h"

//LCD TANIMLAMA
#define RS_HIGH()        _LATB9 = 1
#define RS_LOW()         _LATB9 = 0
#define CONFIG_RS()      CONFIG_RB9_AS_DIG_OUTPUT()
#define E_HIGH()         _LATB14 = 1
#define E_LOW()          _LATB14 = 0
#define CONFIG_E()       CONFIG_RB14_AS_DIG_OUTPUT()
#define LCD4O          (_LATB5)
#define LCD5O          (_LATB6)
#define LCD6O          (_LATB7)
#define LCD7O          (_LATB8)
#define CONFIG_LCD4_AS_OUTPUT() CONFIG_RB5_AS_DIG_OUTPUT()
#define CONFIG_LCD5_AS_OUTPUT() CONFIG_RB6_AS_DIG_OUTPUT()
#define CONFIG_LCD6_AS_OUTPUT() CONFIG_RB7_AS_DIG_OUTPUT()
#define CONFIG_LCD7_AS_OUTPUT() CONFIG_RB8_AS_DIG_OUTPUT()
#define BUZZER          _LATB12
#define CONFIG_BUZZER() CONFIG_RB12_AS_DIG_OUTPUT()
// ADC TANIMLAMA 
#define USE_12BIT_ADC

#ifdef  USE_12BIT_ADC
#define   ADC_LEN           12
#define   ADC_NSTEPS        4096
#define   ADC_12BIT_FLAG    1
#else
#define   ADC_LEN           10
#define   ADC_NSTEPS        1024
#define   ADC_12BIT_FLAG    0
#endif



//Output lower 4-bits of u8_c to LCD data lines


//Configure the control lines for the LCD
void configControlLCD(void) {
  CONFIG_RS();     //RS
  
  CONFIG_E();      //E
  //Configure 4-bit data bus for output
  CONFIG_LCD4_AS_OUTPUT();   //D4
  CONFIG_LCD5_AS_OUTPUT();   //D5
  CONFIG_LCD6_AS_OUTPUT();   //D6
  CONFIG_LCD7_AS_OUTPUT();   //D7
 
}

//Pulse the E clock, 1 us delay around edges for
//setup/hold times
void pulseE(void) {
  DELAY_US(2);
  E_HIGH();
  DELAY_US(2);
  E_LOW();
  DELAY_US(2);
}

/* Write a byte (u8_Cmd) to the LCD.
u8_DataFlag is '1' if data byte, '0' if command byte
u8_CheckBusy is '1' if must poll busy bit before write, else simply delay before write
u8_Send8Bits is '1' if must send all 8 bits, else send only upper 4-bits
*/
void outputToBusLCD(uint8_t u8_c) {
  LCD4O = u8_c & 0x01;          //D4
  LCD5O = (u8_c >> 1)& 0x01;    //D5
  LCD6O = (u8_c >> 2)& 0x01;    //D6
  LCD7O = (u8_c >> 3)& 0x01;    //D7
}
void lcd_init_write(unsigned char u8_Cmd)
{
    RS_LOW();
    
    //LATB = (LATB & 0x0f) | ( u8_Cmd & 0xf0);//Make No Affect on other Port Pins
    outputToBusLCD((u8_Cmd >> 4));  // send upper 4 bits
    pulseE(); //Send Enable Signal to LCD
    RS_HIGH();
}
void InitLCD()
{  
    /* Wait a bit after power-up */ 
    DELAY_MS(200);          //wait for device to settle
    lcd_init_write(0x30); //Special Sequence:Write Function Set.
    DELAY_MS(100);          //wait for device to settle(50);
    lcd_init_write(0x30);//Special Sequence:Write Function Set.
    DELAY_MS(100);          //wait for device to settle;
    lcd_init_write(0x30);//Special Sequence:Write Function Set.
    DELAY_MS(100);          //wait for device to settle;
    lcd_init_write(0x20);// 0x20 for 4-bit
    DELAY_MS(0);          //wait for device to settle;         
}

void lcd_cmd(uint8_t cmd)
{
     RS_LOW();
     //LATB = (LATB & 0x0f) | ( cmd & 0xf0);
     outputToBusLCD((cmd >> 4));  // send upper 4 bits
     //Send Higher Nibble to LCDPORT
     pulseE(); //Send Enable Signal to LCD
     outputToBusLCD(cmd);     // send lower 4 bits
     //LATB = (LATB & 0x0f) | ( cmd <<4);
     //Send Lower Nibble to LCDPORT
     pulseE(); //Send Enable Signal to LCD
     
     RS_HIGH();
     __delay_ms(50);  
}
void lcd_write_data (char harf)
{
    RS_HIGH();
     //LATB = (LATB & 0x0f) | (harf & 0xf0);//Make No Affect on other Port Pins
     outputToBusLCD((harf >> 4));  // send upper 4 bits
     //Send Higher Nibble to LCDPORT
    pulseE(); //Send Enable Signal to LCD
    //LATB = (LATB & 0x0f) | (harf<<4);//Make No Affect on other Port Pins
	outputToBusLCD(harf);
     //Send Lower Nibble to LCDPORT
     pulseE(); //Send Enable Signal to LCD
     RS_LOW();
     __delay_ms(50);  
}
void lcd_data( uint8_t row,  uint8_t column, uint8_t *data)
{
   uint8_t temp;
	switch(row)
	{
		case 1:
			temp=(column-1) + 0x80;     //First row address
            break;
		case 2:
			temp= (column-1) + 0xC0;     //Second row address
	}	
    lcd_cmd(temp);
    do
	{
		lcd_write_data(*data++);
	}while(*data);
}
void InitBUZZER(){
    CONFIG_BUZZER();
    BUZZER = 0;
}
void buzzerOn() {
    BUZZER = 1;
}

void buzzerOff() {
    BUZZER = 0;
}

int main (void) {
  configClock ();
  configControlLCD();      //configure the LCD control lines
  InitBUZZER();
  InitLCD();               //initialize the LCD 
  uint16_t  u16_gazsensor;
  float   f_gazsensor;
  int count;
  float f_gazsensorppm;
  char lcd_buffer[16];
  configBasic(HELLO_MSG); 
  CONFIG_RA0_AS_ANALOG();
  //DL=0 (4bit), N=1 (2 sat?r),F=0 (5X8))
    lcd_cmd(0x28);//Function set(001(DL)NFxx)- DL=0 (4bit), N=1 (2 lines),F=0 (5X8)
    lcd_cmd(0x0E);//Display on/off control(00001DCB)-turns on Display and cursor, no blink.
    lcd_cmd(0x06);  // Entry mode set (000001(I/D)S)- Automatic Increment - No Display shift.
    lcd_cmd(0x01);//clear display, sets DDRAM address 0 in address counter.
    lcd_cmd(0x02);//Sets DDRAM address 0 in address counter. 
  while (1) {
   configADC1_ManualCH0(RA0_AN, 31, ADC_12BIT_FLAG );
   u16_gazsensor = convertADC1(); 
   // 
   f_gazsensor= (5.0/ADC_NSTEPS)*u16_gazsensor; // ADC VOLTAGE CONVERT
   float a = (9700.0 / 5.0); // (10000 - 300) / 5
   float b = 300.0; // Min gas(ppm) value
   float ppm = a * f_gazsensor + b; 
   if (ppm >= 7000) {
            buzzerOn();  
            lcd_data(1,1,"Gas High!        "); 
        } else {
         lcd_data(1,1,"Gas Sensor Value:");
         buzzerOff(); 
        }
   printf("ADC Value: %1.4fV.--------->",    \
            (double) f_gazsensor );
    printf("Gas Sensor value%1.4fppm. \n",    \
           (double) ppm);
    // Lcd Ekrana Input yazd?rma //
    sprintf(lcd_buffer, " %1.4fppm", ppm);
   
    lcd_data(2, 3, (uint8_t*)lcd_buffer);  
     
    DELAY_MS(10);
}
}



