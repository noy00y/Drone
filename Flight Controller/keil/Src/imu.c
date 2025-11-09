#include "imu.h"
#include <string.h>

// Local Util
static void imu_cs_low(void) {HAL_GPIO_WritePin(IMU_CS_PORT, IMU_CS_PIN, GPIO_PIN_RESET);}
static void imu_cs_high(void) {HAL_GPIO_WritePin(IMU_CS_PORT, IMU_CS_PIN, GPIO_PIN_SET);}

// Low Level SPI read/writes to regs
// IMU SPI: first byte = [R/W(1=read) | 7-bit address], then data bytes.
// Mode 0 or 3, MSB first. Max 10 MHz. (Configure in CubeMX)
static HAL_StatusTypeDef spi_write(uint8_t reg, uint8_t val) 
{
    uint8_t
}

// High Level read/write to regs 
uint8_t IMU_ReadReg(uint8_t reg)
{
    uint8_t v = 0xFF;
    (void)spi_read_bytes(reg, &v, 1);
    return v;
}

void IMU_WriteReg(uint8_t reg, uint8_t value)
{
    (void)spi_write(reg, val);
}

HAL_StatusTypeDef IMU_Init(void)
{
    IMU_WriteReg(IMU_REG_PWR_MGMT, 0x00); // wake up by clearing the sleep bit
    HAL_Delay(100);

    uint8_t wai = IMU_ReadReg(IMU_REG_WAI);
    if (wai != IMU_WAI_VAL)
    {
        return HAL_ERROR;
    }
    return HAL_OK;
}