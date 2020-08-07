#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"

#define REG_0 (*(volatile unsigned int *)(XPAR_M00_AXI_0_BASEADDR+0))
#define REG_1 (*(volatile unsigned int *)(XPAR_M00_AXI_0_BASEADDR+4))
#define REG_2 (*(volatile unsigned int *)(XPAR_M00_AXI_0_BASEADDR+8))
#define REG_3 (*(volatile unsigned int *)(XPAR_M00_AXI_0_BASEADDR+12))

int main()
{
    init_platform();

    xil_printf("Hello World\n\r");
    xil_printf("This is a AXI interface test.\n\r");

    REG_0=0x0A0A0000;
    REG_1=0x0A5A1234;
    REG_2=0x12345678;
    REG_3=0x87654321;

    xil_printf("Writing the regs is done.\n\r");
    //unsigned int expected_result= ((REG_0^REG_1^REG_2) & 0xFFFF0000) | (0x87654321 &0x0000FFFF);

    //xil_printf("expected_result=%x\n",expected_result);
    xil_printf("Reading the regs ....\n\r");
    xil_printf("REG_0=%x\n",REG_0);
    xil_printf("REG_1=%x\n",REG_1);
    xil_printf("REG_2=%x\n",REG_2);
    xil_printf("REG_3=%x\n",REG_3);

    xil_printf("Congratulation!\n\r");

    xil_printf("LED testing...\n\r");
    while(1)
    {
		sleep(5);
		REG_0=0x00000000;
		sleep(5);
		REG_0=0x0000000F;
    };


    cleanup_platform();
    return 0;
}

