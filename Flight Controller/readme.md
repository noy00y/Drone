# Manually load packages:
`C:\Users\ozair\AppData\Local\Keil_v5\UV4>PackUnzip.exe ..\..\..\..\Downloads\Keil.STM32F4xx_DFP.3.1.1.pack`

# Reconfiguring Keil after generating pinouts:
1. Rename SHBR
`Flight Controller\keil\Drivers\CMSIS\Include\core_cm4.h`

2. Disable IQR Handlers in 
`Flight Controller\keil\Src\stm32f4xx_it.c`
These include 
- PendSV_Handler
- SysTickHandler
- SVC_Handler