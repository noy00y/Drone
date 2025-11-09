#include "imu.h"

// Local Util
static void imu_cs_low(void) 
{
    HAL_GPIO_WritePin(IMU_CS_PORT, IMU_CS_PIN, GPIO_PIN_RESET);
}

static void imu_cs_high(void)
{
    HAL_GPIO_WritePin(IMU_CS_PORT, IMU_CS_PIN, GPIO_PIN_SET);
}

uint8_t IMU_ReadReg(uint8_t reg)
{
    uint8_t tx[2];
    uint8_t rx[2];

    // SPI - set MSB to 1
    tx[0] = reg | 0x80;
    tx[1] = 0x01;

    imu_cs_low();
    HAL_SPI_TransmitReceive(&hspi1, tx, rx, 2, HAL_MAX_DELAY);
    imu_cs_high();

    // NTS: rx[0] is garb 
    return rx[1];
}

void IMU_WriteReg(uint8_t reg, uint8_t value)
{
    uint8_t tx[2]; // MSB=0 for writes
    tx[0] = reg & 0x7F;
    tx[1] = value; 

    imu_cs_low();
    HAL_SPI_Transmit(&hspi1, tx, 2, HAL_MAX_DELAY);
    imu_cs_high();
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