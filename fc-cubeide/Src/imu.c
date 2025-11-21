#include "imu.h"
#include <string.h>

// Local Util
static void cs_low(void) {HAL_GPIO_WritePin(IMU_CS_PORT, IMU_CS_PIN, GPIO_PIN_RESET);}
static void cs_high(void) {HAL_GPIO_WritePin(IMU_CS_PORT, IMU_CS_PIN, GPIO_PIN_SET);}

// Low Level SPI read/writes to regs
// IMU SPI: first byte = [R/W(1=read) | 7-bit address], then data bytes.
// Mode 0 or 3, MSB first. Max 10 MHz. (Configure in CubeMX)
static HAL_StatusTypeDef spi_write(uint8_t reg, uint8_t val) 
{
    uint8_t tx[2] = {(uint8_t)(reg & 0x7F), val}; // bit7 = 0 --> write
    cs_low();
    HAL_StatusTypeDef state = HAL_SPI_Transmit(&hspi1, tx, sizeof(tx), 5);
    cs_high();
    return state;
}

static HAL_StatusTypeDef spi_read_bytes(uint8_t reg, uint8_t *buff, uint16_t len)
{
    uint8_t addr = (uint8_t)(reg | 0x80); // bit 7 = 1 --> read
    cs_low();
    HAL_StatusTypeDef state = HAL_SPI_Transmit(&hspi1, &addr, 1, 5);
    if (state == HAL_OK) state = HAL_SPI_Receive(&hspi1, buff, len, 5);
    cs_high();
    return state; 
}

// High Level read/write to regs 
uint8_t IMU_ReadReg(uint8_t reg)
{
    uint8_t v = 0xFF;
    (void)spi_read_bytes(reg, &v, 1);
    return v;
}

void IMU_WriteReg(uint8_t reg, uint8_t val)
{
    (void)spi_write(reg, val);
}

HAL_StatusTypeDef IMU_Init(void)
{
    // CS idles high
    cs_high();
    HAL_Delay(2);

    // Force SPI Mode:
    IMU_WriteReg(IMU_REG_I2C_IF, 0x40);
    HAL_Delay(1);

    IMU_WriteReg(IMU_REG_PWR_MGMT_1, 0x80); // reset
    HAL_Delay(100);
    IMU_WriteReg(IMU_REG_PWR_MGMT_1, 0x01);  // wake sensors
    HAL_Delay(2);

    IMU_WriteReg(IMU_REG_PWR_MGMT_2, 0x00); // Enable all sensors (PWR_MGMT_2 = 0)

    // Filtering Range Select
    IMU_WriteReg(IMU_REG_CONFIG, 0x03); // bandwidth ~44 hz
    IMU_WriteReg(IMU_REG_GYRO_CONFIG, 0x18); // ±2000 dps
    IMU_WriteReg(IMU_REG_ACCEL_CONFIG, 0x18); // ±16 g
    IMU_WriteReg(IMU_REG_ACCEL_CONFIG2, 0x09);
    IMU_WriteReg(IMU_REG_SMPLRT_DIV, 0x00);

    uint8_t wai = IMU_ReadReg(IMU_REG_WAI);
    if (wai != IMU_WAI_VAL)
    {
        return HAL_ERROR;
    }
    return HAL_OK;
}

// Sensor Read - 14 byte burst starting at ACCEL_XOUT_H
HAL_StatusTypeDef IMU_ReadRaw(imu_raw_t *out) 
{
    if (!out) return HAL_ERROR;

    uint8_t rx[14];
    HAL_StatusTypeDef state = spi_read_bytes(IMU_REG_ACCEL_XOUT_H, rx, sizeof(rx));

    if (state != HAL_OK) return state;

    // joining high and low byte together into a single 16 bit signed value
    out->ax   = (int16_t)((rx[0]  << 8) | rx[1]);
    out->ay   = (int16_t)((rx[2]  << 8) | rx[3]);
    out->az   = (int16_t)((rx[4]  << 8) | rx[5]);
    out->temp = (int16_t)((rx[6]  << 8) | rx[7]);
    out->gx   = (int16_t)((rx[8]  << 8) | rx[9]);
    out->gy   = (int16_t)((rx[10] << 8) | rx[11]);
    out->gz   = (int16_t)((rx[12] << 8) | rx[13]);

    return HAL_OK;
}

// Scale IMU Readings:
void IMU_Scale(const imu_raw_t *raw, imu_scaled_t *s) 
{
    s->ax_g  = ((float)raw->ax) / IMU_ACCEL_SENS_16G;
    s->ay_g  = ((float)raw->ay) / IMU_ACCEL_SENS_16G;
    s->az_g  = ((float)raw->az) / IMU_ACCEL_SENS_16G;

    s->gx_dps = ((float)raw->gx) / IMU_GYRO_SENS_2000DPS;
    s->gy_dps = ((float)raw->gy) / IMU_GYRO_SENS_2000DPS;
    s->gz_dps = ((float)raw->gz) / IMU_GYRO_SENS_2000DPS;

    s->temp_c = ((float)raw->temp / 326.8f) + 25.0f; // temp scaling factor
}