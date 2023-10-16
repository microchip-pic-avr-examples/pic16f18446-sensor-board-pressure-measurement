<a href="https://www.microchip.com" rel="nofollow"><img src="images/microchip.png" alt="MCHP" width="300"/></a>

# Sensor Board Pressure Measurement Using the PIC16F18446 Microcontroller

The PIC16F184xx family has a new Analog-to-Digital Converter with Computation (ADCC) with a 12-bit resolution. This project shows the reading of an analog pressure sensor (MP3V5050GP) using the ADCC.
In this example the pressure sensor value is read and the current atmospheric pressure in Pascal units is displayed on the on-board LCD. Two graphs will show the variations of the 12-bit and 10-bit pressure values in real time.

## Related Documentation
- [PIC16F18446 Product Family Page](https://www.microchip.com/design-centers/8-bit/pic-mcus/device-selection/pic16f18446)
- [PIC16F18446 datasheet](http://ww1.microchip.com/downloads/en/DeviceDoc/40001985B.pdf) for more information.

## Software Used

- [MPLAB® X IDE](http://www.microchip.com/mplab/mplab-x-ide) v6.15 or newer
- [MPLAB® XC8](http://www.microchip.com/mplab/compilers) v2.45 or newer
- [MPLAB® Code Configurator (MCC)](https://microchip.com/mplab/mplab-code-configurator) v5.3.7
- [PIC16F1xxxx_DFP](https://packs.download.microchip.com/) v1.21.368

## Hardware Used

- [PIC16F18446 Sensor Board](https://ww1.microchip.com/downloads/en/DeviceDoc/30010172A.pdf)
<br>

## Operation

To program the microcontroller with this MPLAB® X project, follow the steps provided in the [How to Program the Microcontroller](#how-to-program-the-microcontroller) chapter.<br><br>

## Setup
Pressure sensor:

<br><img src="images/pressure_sensor.png" width="600">

The following configurations must be made for this project:

- Clock Control:
  - Clock Source: HFINTOSC
  - HF Internal Clock: 32 MHz
  - Clock Divider: 1

  <br><img src="images/clock_control.png" width="600">

- Configuration bits:
  - External Oscillator Selection: Oscillator not enabled
  - Reset Oscillator Selection: HFINTOSC (1 MHz)

  <br><img src="images/config_bits.png" width="600">

- MSSP:
  - Serial Protocol: SPI
  - Mode: Host
  - SPI Mode: SPI Mode 0
  - Input Data Sampled At: Middle
  - Clock Source Selection: F<sub>OSC</sub>/4 

  <br><img src="images/mssp1.png" width="600">

- CLC:
  - Enable CLC: Yes
  - Operating Mode: AND-OR 

  <br><img src="images/clc1.png" width="600">
  <br><img src="images/clc2.png" width="600">

- FVR:
<br>FVR is used as a positive reference for the ADCC to get higher accuracy and gain.
  - Enable FVR: Yes
  - FVR buffer gain to ADC: 1x
  - FVR buffer gain to other peripherals: 1x

  <br><img src="images/fvr.png" width="600">

- ADCC:
  - Enable ADC: Yes
  - Operating Mode: Burst_average_mode
  - Result Alignment: Right
  - Positive Input Channel: ANA4
  - Positive Reference: FVR
  - Negative Reference: V<sub>SS</sub>
  - Auto-conversion Trigger: Disabled
  - Acquisition Count: 0
  - Clock Source: F<sub>OSC</sub>
  - Clock Divider: F<sub>OSC</sub>/128
  - Repeat: 64

  <br><img src="images/adcc_1.png" width="600">
  <br><img src="images/adcc_2.png" width="600">

  <i>Repeat</i> is set to 64 to average a burst of 64 samples.

- PIN_Grid
  <br><img src="images/pin_grid.png" width="600">

- PIN_Module
  <br><img src="images/pins.png" width="600">

## Demo

Board setup:

  <br><img src="images/demo.png" width="600">

## Summary

This code exemple shows the reading of an analog pressure sensor using the ADCC peripheral.

## How to Program the Microcontroller

This chapter demonstrates how to use the MPLAB X IDE to program a PIC® device with an `Example_Project.X`. This applies to other projects.

1.  Connect the Curiosity Development board to the PC.

2.  Open the `Example_Project.X` project in MPLAB X IDE.

3.  Set the `Example_Project.X` project as main project.
    <br>Right click the project in the **Projects** tab and then Set as Main Project.
    <br><img src="images/Program_Set_as_Main_Project.PNG" width="600">

4.  Clean and build the `Example_Project.X` project.
    <br>Right click the `Example_Project.X` project and select Clean and Build.
    <br><img src="images/Program_Clean_and_Build.PNG" width="600">

5.  Select Starter Kits (PKOB) in the Connected Hardware Tool section of the project settings:
    <br>Right click the project and **Properties**.
    <br>Click the arrow under the Connected Hardware Tool, and from the dropdown, select Starter Kits (PKOB) by clicking the SN.
    <br>Click **Apply** and then **OK**.
    <br><img src="images/Program_Tool_Selection.PNG" width="600">

6.  Program the project to the microcontroller.
    <br>Right click the project and then Make and Program Device.
    <br><img src="images/Program_Make_and_Program_Device.PNG" width="600">

<br>

- [Back to Top](#sensor-board-pressure-measurement-using-the-pic16f18446-microcontroller)
- [Back to Setup](#setup)
- [Back to Demo](#demo)
- [Back to Summary](#summary)