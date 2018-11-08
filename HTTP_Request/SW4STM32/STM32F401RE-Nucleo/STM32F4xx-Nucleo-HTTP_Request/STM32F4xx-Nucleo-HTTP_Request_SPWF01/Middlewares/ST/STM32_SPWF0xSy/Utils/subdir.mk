################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Middlewares/ST/STM32_SPWF0xSy/Utils/event_buffer.c \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Middlewares/ST/STM32_SPWF0xSy/Utils/ring_buffer.c \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Middlewares/ST/STM32_SPWF0xSy/Utils/spwf04WiFi.c \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Middlewares/ST/STM32_SPWF0xSy/Utils/wifi_globals.c 

OBJS += \
./Middlewares/ST/STM32_SPWF0xSy/Utils/event_buffer.o \
./Middlewares/ST/STM32_SPWF0xSy/Utils/ring_buffer.o \
./Middlewares/ST/STM32_SPWF0xSy/Utils/spwf04WiFi.o \
./Middlewares/ST/STM32_SPWF0xSy/Utils/wifi_globals.o 

C_DEPS += \
./Middlewares/ST/STM32_SPWF0xSy/Utils/event_buffer.d \
./Middlewares/ST/STM32_SPWF0xSy/Utils/ring_buffer.d \
./Middlewares/ST/STM32_SPWF0xSy/Utils/spwf04WiFi.d \
./Middlewares/ST/STM32_SPWF0xSy/Utils/wifi_globals.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_SPWF0xSy/Utils/event_buffer.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Middlewares/ST/STM32_SPWF0xSy/Utils/event_buffer.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Middlewares/ST/STM32_SPWF0xSy/Utils/event_buffer.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/ST/STM32_SPWF0xSy/Utils/ring_buffer.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Middlewares/ST/STM32_SPWF0xSy/Utils/ring_buffer.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Middlewares/ST/STM32_SPWF0xSy/Utils/ring_buffer.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/ST/STM32_SPWF0xSy/Utils/spwf04WiFi.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Middlewares/ST/STM32_SPWF0xSy/Utils/spwf04WiFi.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Middlewares/ST/STM32_SPWF0xSy/Utils/spwf04WiFi.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/ST/STM32_SPWF0xSy/Utils/wifi_globals.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Middlewares/ST/STM32_SPWF0xSy/Utils/wifi_globals.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Middlewares/ST/STM32_SPWF0xSy/Utils/wifi_globals.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


