################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/wifi_interface.c \
C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/wifi_module.c \
C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/wifi_module_spi.c \
C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_01.c \
C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_04.c 

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
Middlewares/ST/STM32_SPWF0xSy/wifi_interface.o: C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/wifi_interface.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"C:/Users/Steph/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/ST/STM32_SPWF0xSy/wifi_module.o: C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/wifi_module.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"C:/Users/Steph/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/ST/STM32_SPWF0xSy/wifi_module_spi.o: C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/wifi_module_spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"C:/Users/Steph/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_01.o: C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_01.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"C:/Users/Steph/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_04.o: C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/wifi_module_uart_04.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"C:/Users/Steph/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

