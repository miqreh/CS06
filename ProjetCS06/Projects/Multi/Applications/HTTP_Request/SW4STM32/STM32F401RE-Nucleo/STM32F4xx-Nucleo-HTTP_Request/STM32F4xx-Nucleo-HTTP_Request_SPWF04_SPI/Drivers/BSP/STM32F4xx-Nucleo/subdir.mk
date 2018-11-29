################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo/stm32f4xx_nucleo.c 

OBJS += \
./Drivers/BSP/STM32F4xx-Nucleo/stm32f4xx_nucleo.o 

C_DEPS += \
./Drivers/BSP/STM32F4xx-Nucleo/stm32f4xx_nucleo.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32F4xx-Nucleo/stm32f4xx_nucleo.o: C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo/stm32f4xx_nucleo.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"C:/Users/Steph/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"C:/Users/Steph/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"C:/Users/Steph/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


