################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/JeremyLanfranchi/git/CS06/Projet\ Arroseur/Middlewares/ST/STM32_SPWF0xSy/wifi_interface.c \
/Users/JeremyLanfranchi/git/CS06/Projet\ Arroseur/Middlewares/ST/STM32_SPWF0xSy/wifi_module.c \
/Users/JeremyLanfranchi/git/CS06/Projet\ Arroseur/Middlewares/ST/STM32_SPWF0xSy/wifi_module_spi.c \
/Users/JeremyLanfranchi/git/CS06/Projet\ Arroseur/Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_01.c \
/Users/JeremyLanfranchi/git/CS06/Projet\ Arroseur/Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_04.c 

OBJS += \
./Middlewares/ST/STM32_SPWF0xSy/wifi_interface.o \
./Middlewares/ST/STM32_SPWF0xSy/wifi_module.o \
./Middlewares/ST/STM32_SPWF0xSy/wifi_module_spi.o \
./Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_01.o \
./Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_04.o 

C_DEPS += \
./Middlewares/ST/STM32_SPWF0xSy/wifi_interface.d \
./Middlewares/ST/STM32_SPWF0xSy/wifi_module.d \
./Middlewares/ST/STM32_SPWF0xSy/wifi_module_spi.d \
./Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_01.d \
./Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_04.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_SPWF0xSy/wifi_interface.o: /Users/JeremyLanfranchi/git/CS06/Projet\ Arroseur/Middlewares/ST/STM32_SPWF0xSy/wifi_interface.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DWIFI_USE_VCOM -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Projects/Multi/Applications/WiFi_VCOM/Inc" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Middlewares/ST/STM32_SPWF0xSy/Inc" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/BSP/X-NUCLEO-IDW0xx1"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Middlewares/ST/STM32_SPWF0xSy/wifi_interface.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/ST/STM32_SPWF0xSy/wifi_module.o: /Users/JeremyLanfranchi/git/CS06/Projet\ Arroseur/Middlewares/ST/STM32_SPWF0xSy/wifi_module.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DWIFI_USE_VCOM -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Projects/Multi/Applications/WiFi_VCOM/Inc" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Middlewares/ST/STM32_SPWF0xSy/Inc" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/BSP/X-NUCLEO-IDW0xx1"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Middlewares/ST/STM32_SPWF0xSy/wifi_module.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/ST/STM32_SPWF0xSy/wifi_module_spi.o: /Users/JeremyLanfranchi/git/CS06/Projet\ Arroseur/Middlewares/ST/STM32_SPWF0xSy/wifi_module_spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DWIFI_USE_VCOM -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Projects/Multi/Applications/WiFi_VCOM/Inc" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Middlewares/ST/STM32_SPWF0xSy/Inc" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/BSP/X-NUCLEO-IDW0xx1"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Middlewares/ST/STM32_SPWF0xSy/wifi_module_spi.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_01.o: /Users/JeremyLanfranchi/git/CS06/Projet\ Arroseur/Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_01.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DWIFI_USE_VCOM -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Projects/Multi/Applications/WiFi_VCOM/Inc" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Middlewares/ST/STM32_SPWF0xSy/Inc" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/BSP/X-NUCLEO-IDW0xx1"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_01.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_04.o: /Users/JeremyLanfranchi/git/CS06/Projet\ Arroseur/Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_04.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DWIFI_USE_VCOM -DCONSOLE_UART_ENABLED -DSPWF01 -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Projects/Multi/Applications/WiFi_VCOM/Inc" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Middlewares/ST/STM32_SPWF0xSy/Inc" -I"/Users/JeremyLanfranchi/git/CS06/Projet Arroseur/Drivers/BSP/X-NUCLEO-IDW0xx1"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_04.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


