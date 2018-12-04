################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils/event_buffer.c \
C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils/ring_buffer.c \
C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils/spwf04WiFi.c \
C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils/wifi_globals.c 

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
Middlewares/ST/STM32_SPWF0xSy/Utils/event_buffer.o: C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils/event_buffer.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"C:/Users/Steph/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/ST/STM32_SPWF0xSy/Utils/ring_buffer.o: C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils/ring_buffer.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"C:/Users/Steph/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/ST/STM32_SPWF0xSy/Utils/spwf04WiFi.o: C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils/spwf04WiFi.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"C:/Users/Steph/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/ST/STM32_SPWF0xSy/Utils/wifi_globals.o: C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils/wifi_globals.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"C:/Users/Steph/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


