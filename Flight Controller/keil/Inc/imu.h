#ifndef IMU_H
#define IMU_H
#include "stm32f4xx_hal.h"
#include <stdint.h>
#include <stdbool.h> 

// WAI - Who Am I
#define IMU_REG_WAI            0x75 
#define IMU_REG_PWR_MGMT       0x6B

#define IMU_WAI_VAL            0x12 // expected val
extern SPI_HandleTypeDef hspi1; // spi handler

// Chip Select 
#define IMU_CS_PORT GPIOB
#define IMU_CS_PIN GPIO_PIN_6

// IMU Reg Map
#define IMU_REG_SMPLRT_DIV      0x19
#define IMU_REG_CONFIG          0x1A
#define IMU_REG_GYRO_CONFIG     0x1B
#define IMU_REG_ACCEL_CONFIG    0x1C
#define IMU_REG_ACCEL_CONFIG2   0x1D

#define IMU_REG_INT_STATUS      0x3A
#define IMU_REG_ACCEL_XOUT_H    0x3B   // 14-byte burst: Ax..Az, Temp, Gx..Gz
#define IMU_REG_TEMP_OUT_H      0x41
#define IMU_REG_GYRO_XOUT_H     0x43

#define IMU_REG_USER_CTRL       0x6A
#define IMU_REG_PWR_MGMT_1      0x6B
#define IMU_REG_PWR_MGMT_2      0x6C
#define IMU_REG_I2C_IF          0x70    // bit6=I2C_IF_DIS (force SPI-only)
#define IMU_REG_WHO_AM_I        0x75

// range selection (from datasheet)
#define IMU_GYRO_SENS_2000DPS   16.4f
#define IMU_ACCEL_SENS_16G      2048.0f

// Defining Types for raw and scaled imu values
typedef struct 
{
    int16_t ax, ay, az;
    int16_t gx, gy, gz;
    int16_t temp;
} 
imu_raw_t; 

typedef struct
{
    float ax_g, ay_g, az_g; // g
    float gx_dps, gy_dps, gz_dps; // deg / s
    float temp_c; // raw temp
} 
imu_scaled_t;

// API
HAL_StatusTypeDef IMU_Init(void); 
uint8_t IMU_ReadReg(uint8_t reg);
void IMU_WriteReg(uint8_t reg, uint8_t val);

HAL_StatusTypeDef IMU_ReadRaw(imu_raw_t *out); // burst read 14 bytes
void IMU_Scale(const imu_raw_t *raw, imu_scaled_t *scaled);

#endif