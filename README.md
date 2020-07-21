<div id="readme" class="Box-body readme blob js-code-block-container">
  <article class="markdown-body entry-content p-3 p-md-6" itemprop="text"><p><a href="https://www.microchip.com" rel="nofollow"><img src="https://camo.githubusercontent.com/5fb5505f69a28ff407841612dfe2b7004f210594/68747470733a2f2f636c6475702e636f6d2f553071684c7742696a462e706e67" alt="MCHP" data-canonical-src="https://cldup.com/U0qhLwBijF.png" style="max-width:100%;"></a></p>


# Introduction
The PIC16F184xx family has a new Analog to Digital Converter with Computation (ADCC) with a 12-bit resolution. This project shows the reading of an analog pressure sensor (MP3V5050GP) using the ADCC.

# Description
In this example we will be using the PIC16F18446 Sensor Board. The PIC reads the pressure sensor, and displays the current atmospheric pressure in Pascal units. Also, two graphs display the variations of the 12-bit and 10-bit pressure values in real time.

![Battery Measurement](images/display.png)

Here is a picture of the pressure sensor:

![Pressure Sensor](images/pressure_sensor.png)

# MCC Settings

Here are the settings used for MSSP, CLC, FVR, and ADCC. MSSP + CLC are used for the LCD control.

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
