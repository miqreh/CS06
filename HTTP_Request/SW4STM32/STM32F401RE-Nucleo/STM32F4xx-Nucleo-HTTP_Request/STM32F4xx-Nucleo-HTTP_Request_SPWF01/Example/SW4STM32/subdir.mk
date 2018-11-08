################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Projects/Multi/Applications/HTTP_Request/SW4STM32/STM32F401RE-Nucleo/startup_stm32f401xe.s 

OBJS += \
./Example/SW4STM32/startup_stm32f401xe.o 


# Each subdirectory must supply rules for building sources it contributes
Example/SW4STM32/startup_stm32f401xe.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Projects/Multi/Applications/HTTP_Request/SW4STM32/STM32F401RE-Nucleo/startup_stm32f401xe.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -I../../../../Inc -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/STM32F4xx-Nucleo -I../../../../../../../../Middlewares/ST/STM32_SPWF0xSy/Inc -I../../../../../../../../Middlewares/ST/STM32_SPWF0xSy/Utils -I../../../../../../../../Drivers/BSP/X-NUCLEO-IDW0xx1 -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


