// test_task.c
#include "cmsis_os2.h"
#include <stdio.h>

static void test_task(void *argument)
{
    (void)argument;
    setvbuf(stdout, NULL, _IONBF, 0);

    uint32_t i = 0;

    for (;;)
    {
        printf("TEST task tick %lu\r\n", (unsigned long)i++);
        osDelay(1000);   // 1 Hz
    }
}

void Test_Task_Init(void)
{
    const osThreadAttr_t attr = {
        .name       = "test_task",
        .priority   = osPriorityLow,
        .stack_size = 512
    };

    osThreadNew(test_task, NULL, &attr);
}
