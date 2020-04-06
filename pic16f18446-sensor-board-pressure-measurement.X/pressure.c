/*
 * File:   pressure.c
 * Author: M19219
 *
 * Created on December 6, 2017, 2:45 PM
 */

#include "pressure.h"

uint32_t pressure10bit, pressure12bit;
uint32_t pressure10bitOffset, pressure12bitOffset;


void readPressure() {   
    uint32_t res;
    uint16_t i;
    uint32_t v;
    
    ADREF = 0x03; // ADNREF VSS; ADPREF FVR
    
    
    ADCC_GetSingleConversion(channel_Pressure);
    res = ADCC_GetAccumulatorValue() >> 6;
    
    v = res;
            
    v += 16602;
    v *= 596;
    v /= 100;
    pressure12bit = v;
  
    v = res & 0xFFFFFFFC; // 12-bit to 10-bit
    
    v += 16602;
    v *= 596;
    v /= 100;
    pressure10bit = v;
    
}


void drawPressure(uint8_t x, uint8_t y, uint16_t color) {
    
    uint8_t st[16];
    uint32_t a;
    
    a = pressure12bit;
    
    st[ 0] = ((a/1000000)%10) + '0';
    st[ 1] = ((a/100000)%10) + '0';
    st[ 2] = ((a/10000)%10) + '0';
    st[ 3] = ((a/1000)%10) + '0';
    st[ 4] = ((a/100)%10) + '0';
    st[ 5] = ((a/10)%10) + '0';  
    st[ 6] = ((a/1)%10) + '0';
    st[ 7] = ' ';
    st[ 8] = 'P';
    st[ 9] = 'a';
    st[10] = 0;  
  
    if(a<1000000) st[0] = ' ';
    if(a<100000) st[1] = ' ';
    if(a<10000) st[2] = ' ';
    if(a<1000) st[3] = ' ';
    if(a<100) st[4] = ' ';
    if(a<10) st[5] = ' ';
    
  
    GFX_DrawText(x, y, st, color, 0x0000); 
    
}


void initPressure() {
    clearPlot(&plot1, 64);
    clearPlot(&plot2, 64);
    
    readPressure();
    
    pressure10bitOffset = pressure10bit;
    pressure12bitOffset = pressure12bit;
}


void drawPressurePlots(uint8_t x, uint8_t y, uint16_t color) {
    
    int32_t v;
    
    v = 64 + (pressure12bit - pressure12bitOffset);
    
    if(v<0) v = 0;
    if(v>255) v = 255;
    
    addToPlot(&plot1, (uint8_t)v);           
    drawPlot(&plot1, x, y, 65, color);
    
    
    v = 64 + (pressure10bit - pressure10bitOffset);
    
    if(v<0) v = 0;
    if(v>255) v = 255;
    
    addToPlot(&plot2, (uint8_t)v);           
    drawPlot(&plot2, x, y+65, 65, color);
}


void pressureScreenTasks() {

    readPressure();

    GFX_DrawText(0, 0, "Pressure", 0xFF00, 0x0000);

    drawPressure(15, 15, 0xFF00);

    drawPressurePlots(0, 30, 0xFF00);
}