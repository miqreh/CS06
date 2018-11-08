################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal.c \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cortex.c \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma.c \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash.c \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ex.c \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_gpio.c \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc.c \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc_ex.c \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_spi.c \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim.c \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim_ex.c \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_uart.c \
/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_usart.c 

OBJS += \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_cortex.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash_ex.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_gpio.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc_ex.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_spi.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim_ex.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_uart.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_usart.o 

C_DEPS += \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_cortex.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash_ex.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_gpio.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc_ex.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_spi.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim_ex.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_uart.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_usart.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_cortex.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cortex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_cortex.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash_ex.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash_ex.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_gpio.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_gpio.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc_ex.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc_ex.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_spi.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_spi.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim_ex.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim_ex.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_uart.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_uart.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_uart.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_usart.o: /Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1\ 2/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/Desktop/STM32CubeExpansion_WIFI1_V3.1.1 2/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_usart.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


