[![MCHP](images/microchip.png)](https://www.microchip.com)

# PIC16F18446 Sensor Board Pressure Measurement

The PIC16F184xx family has a new Analog to Digital Converter with Computation (ADCC) with a 12-bit resolution. This project shows the reading of an analog pressure sensor (MP3V5050GP) using the ADCC.
In this example the pressure sensor value is read and the current atmospheric pressure in Pascal units is displaied on the on-board LCD. Two graphs will show the variations of the 12-bit and 10-bit pressure values in real time.

## Software Used
- MPLAB® X IDE 5.30 or newer [(microchip.com/mplab/mplab-x-ide)](http://www.microchip.com/mplab/mplab-x-ide)
- MPLAB® XC8 2.10 or a newer compiler [(microchip.com/mplab/compilers)](http://www.microchip.com/mplab/compilers)
- MPLAB® Code Configurator (MCC) 3.95.0 or newer [(microchip.com/mplab/mplab-code-configurator)](https://www.microchip.com/mplab/mplab-code-configurator)
- MPLAB® Code Configurator (MCC) Device Libraries 8-bit AVR MCUs 2.3.0 or newer [(microchip.com/mplab/mplab-code-configurator)](https://www.microchip.com/mplab/mplab-code-configurator)
- PIC16F1xxxx DFP 1.2.99 or newer Device Pack

## Hardware Used
- [PIC16F18446 Sensor Board Demonstration](https://www.microchip.com/promo/pic16f18446-sensor-board-demonstration)


## Setup

Pressure sensor:

![Pressure Sensor](images/pressure_sensor.png)


### MCC settings for MSSP, CLC, FVR, and ADCC. MSSP + CLC are used for the LCD control.

### MSSP Settings
![MSSP Settings](images/MSSP1.png)

### CCL Settings
![CCL1 Settings](images/CLC1.png)

![CCL2 Settings](images/CLC2.png)

### FVR Settings
FVR is used as positive refference for the ADCC, to get higher accuracy and gain.

![FVR Settings](images/FVR.png)

### ADCC settings
![ADCC Settings](images/ADCC1.png)
ADRPT register is set to 0x40, to average a burst of 64 samples.
![ADCC Registers](images/ADCC2.png)

### PIN Grid
![PIN Grid](images/PIN_Grid.png)

### PIN Module
![PIN Module](images/PIN_Module.png)


Demo:

![Battery Measurement](images/display.png)