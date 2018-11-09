################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/JeremyLanfranchi/Downloads/STM32CubeExpansion_WIFI1_V3.1.1/Drivers/BSP/X-NUCLEO-IDW0xx1/stm32_spwf_wifi.c 

OBJS += \
./Drivers/BSP/X-NUCLEO-IDW0xx1/stm32_spwf_wifi.o 

C_DEPS += \
./Drivers/BSP/X-NUCLEO-IDW0xx1/stm32_spwf_wifi.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/X-NUCLEO-IDW0xx1/stm32_spwf_wifi.o: /Users/JeremyLanfranchi/Downloads/STM32CubeExpansion_WIFI1_V3.1.1/Drivers/BSP/X-NUCLEO-IDW0xx1/stm32_spwf_wifi.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DWIFI_USE_VCOM -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Downloads/STM32CubeExpansion_WIFI1_V3.1.1/Projects/Multi/Applications/WiFi_VCOM/Inc" -I"/Users/JeremyLanfranchi/Downloads/STM32CubeExpansion_WIFI1_V3.1.1/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Downloads/STM32CubeExpansion_WIFI1_V3.1.1/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Downloads/STM32CubeExpansion_WIFI1_V3.1.1/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Downloads/STM32CubeExpansion_WIFI1_V3.1.1/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Downloads/STM32CubeExpansion_WIFI1_V3.1.1/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Downloads/STM32CubeExpansion_WIFI1_V3.1.1/Middlewares/ST/STM32_SPWF0xSy/Inc" -I"/Users/JeremyLanfranchi/Downloads/STM32CubeExpansion_WIFI1_V3.1.1/Drivers/BSP/X-NUCLEO-IDW0xx1"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


