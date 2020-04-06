# 1 "plot.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "plot.c" 2







# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 1 3



# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\musl_xc8.h" 1 3
# 4 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 2 3
# 22 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 127 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long uintptr_t;
# 142 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long intptr_t;
# 158 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;




typedef __int24 int24_t;




typedef long int32_t;





typedef long long int64_t;
# 188 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;




typedef __uint24 uint24_t;




typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 229 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 22 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 2 3


typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 139 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/stdint.h" 1 3
typedef int32_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint32_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 139 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 2 3
# 8 "plot.c" 2

# 1 "./plot.h" 1
# 35 "./plot.h"
typedef struct
{
    uint8_t plotBuf[128];
    uint8_t oldPlotBuf[128];
    uint8_t plotBufIndex;
} plot_t;


extern plot_t plot1, plot2;

void addToPlot(plot_t* plot, int16_t sample);
void clearPlot(plot_t* plot, uint8_t value);
void drawPlot(plot_t* plot, uint8_t x, uint8_t y, uint8_t h, uint16_t color);
# 9 "plot.c" 2

# 1 "./graphics.h" 1
# 49 "./graphics.h"
# 1 "./font.h" 1
# 57 "./font.h"
typedef struct
{
    uint8_t w;
    uint8_t h;
    uint8_t ASCII_Start;
    uint8_t ASCII_End;
    uint8_t DType;
    uint8_t *data;
}FONT;
# 49 "./graphics.h" 2

# 1 "./images.h" 1
# 52 "./images.h"
 typedef struct
{
  uint8_t width;
  uint8_t height;
  uint8_t bytes_per_pixel;
  uint8_t pixel_data[];
}IMAGE;

typedef struct
{
  uint8_t width;
  uint8_t height;
  uint8_t bytes_per_pixel;
  uint8_t pixel_data[16 * 16 * 2 + 1];
}IMAGE16;

typedef struct
{
  uint8_t width;
  uint8_t height;
  uint8_t bytes_per_pixel;
  uint8_t pixel_data[32 * 32 * 2 + 1];
}IMAGE32;

typedef struct
{
  uint8_t width;
  uint8_t height;
  uint8_t bytes_per_pixel;
  uint8_t pixel_data[5 * 10 * 2 + 1];
}IMAGE5x10;

typedef struct
{
  uint8_t width;
  uint8_t height;
  uint8_t bytes_per_pixel;
  uint8_t pixel_data[10 * 10 * 2 + 1];
}IMAGE10;

typedef struct
{
  uint8_t width;
  uint8_t height;
  uint8_t bytes_per_pixel;
  uint8_t pixel_data[20 * 20 * 2 + 1];
}IMAGE20;

typedef struct
{
  uint8_t width;
  uint8_t height;
  uint8_t bytes_per_pixel;
  uint8_t pixel_data[16 * 19 * 2 + 1];
}IMAGE16x19;

typedef struct
{
  uint8_t width;
  uint8_t height;
  uint8_t bytes_per_pixel;
  uint8_t pixel_data[50 * 60 * 2 + 1];
}IMAGE50x60;

typedef struct
{
  uint8_t width;
  uint8_t height;
  uint8_t bytes_per_pixel;
  uint8_t pixel_data[70 * 30 * 2 + 1];
}IMAGE70x65;

typedef struct
{
  uint8_t width;
  uint8_t height;
  uint8_t bytes_per_pixel;
  uint8_t pixel_data[100 * 20 * 2 + 1];
}IMAGE100x20;
# 50 "./graphics.h" 2
# 61 "./graphics.h"
void GFX_Initialize(void);




void GFX_ClearScreen(uint16_t color);




void GFX_SetFgColor(uint16_t color);




void GFX_SetBgColor(uint16_t color);




void GFX_DrawPixel(uint8_t x, uint8_t y, uint16_t color);




void GFX_DrawLine(uint8_t xStart, uint8_t yStart, uint8_t xEnd, uint8_t yEnd, uint16_t color);




void GFX_DrawFastHLine(uint8_t x, uint8_t y, uint8_t width, uint16_t color);




void GFX_DrawFastVLine(uint8_t x, uint8_t y, uint8_t height, uint16_t color);




void GFX_DrawRectangle(uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint16_t color);




void GFX_FillRectangle(uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint16_t color);




void GFX_DrawTriangle(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, uint16_t color);




void GFX_FillTriangle(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, uint16_t color);




void GFX_DrawCircle(uint8_t x, uint8_t y, uint8_t radius, uint16_t color);




void GFX_FillCircle(uint8_t x, uint8_t y, uint8_t radius, uint16_t color);




void GFX_DrawArc(uint8_t x, uint8_t y, uint8_t radius, uint8_t quadrants, uint16_t color);




void GFX_DrawBitmap(uint8_t x, uint8_t y, IMAGE *imageData);




void GFX_DrawIndexedBitmap(uint8_t x, uint8_t y, uint8_t *indexedImageData);




void GFX_SetFont(FONT *font);




void GFX_DrawText(uint8_t x, uint8_t y, char *string, uint16_t fgColor, uint16_t bgColor);
# 10 "plot.c" 2



plot_t plot1, plot2;

void addToPlot(plot_t* plot, int16_t sample) {

    if(sample<0) {
        sample = 0;
    }
    if(sample>255) {
        sample = 255;
    }

    plot->oldPlotBuf[plot->plotBufIndex] = plot->plotBuf[(plot->plotBufIndex+127)%128];
    plot->plotBuf[plot->plotBufIndex] = sample;
    plot->plotBufIndex++;
    plot->plotBufIndex = plot->plotBufIndex % 128;
}

void clearPlot(plot_t* plot, uint8_t value) {
    for(uint8_t i=0; i<128; i++) {
        plot->oldPlotBuf[i] = value;
        plot->plotBuf[i] = value;
    }
    plot->plotBufIndex = 0;
}


void drawPlot(plot_t* plot, uint8_t x, uint8_t y, uint8_t h, uint16_t color) {
    uint16_t sample;

    uint8_t x1, y1;



    for(uint16_t i=0; i<127; i++) {

        x1 = x+i;


        sample = 255 - plot->oldPlotBuf[(plot->plotBufIndex+i)%128];
        sample *= h;
        sample = sample >> 8;
        if(sample>h-1) {
            sample = h-1;
        }
        y1 = y+sample;
# 67 "plot.c"
        GFX_DrawPixel(x1, y1, 0x0000);





        sample = 255 - plot->plotBuf[(plot->plotBufIndex+i)%128];
        sample *= h;
        sample = sample >> 8;
        if(sample>h-1) {
            sample = h-1;
        }
        y1 = y+sample;
# 89 "plot.c"
        GFX_DrawPixel(x1, y1, color);


    }
}
