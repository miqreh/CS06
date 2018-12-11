################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cortex.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ex.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_gpio.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc_ex.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_spi.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim_ex.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_uart.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_usart.c 

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
Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_cortex.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cortex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash_ex.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_gpio.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc_ex.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_spi.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim_ex.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_uart.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_uart.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_usart.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


