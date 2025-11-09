#ifndef IMU_H
#define IMU_H
#include "stm32f4xx_hal.h"

// WAI - Who Am I
#define IMU_REG_WAI            0x75 
#define IMU_REG_PWR_MGMT       0x6B

#define IMU_WAI_VAL            0x12 // expected val
extern SPI_HandleTypeDef hspi1; // spi handler

// Chip Select 
#define IMU_CS_PORT GPIOB
#define IMU_CS_PIN GPIO_PIN_6

// API
uint8_t IMU_ReadReg(uint8_t reg);
void IMU_WriteReg(uint8_t reg, uint8_t val);
HAL_StatusTypeDef IMU_Init(void);

#endif