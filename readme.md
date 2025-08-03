# Overview:
Self Built Drone Project including the following components
- STM32F427 based Flight Controller 
- MPU-6000 (Gyro) providing accelormeter and gyroscopic data
- BMP280 (Barometer) for advanced altitude control 
- Crystal Resonator to filter out noise --> Required due to sensitive nature of analog components.
- Analog and Digital Decoupling
- Programmed via USB B
- Xilinx Artix 7 XC7A100T FPGA (xc7a100tfgg484-2L)
    - Lightweight CNN

## Currently Working On:
- CNN Implementation for simple target detection (humans, vehicles)
    - Convolution Processing Block

## Flight Controller Schematic (Updated Aug 23th):
![alt text](save.png)