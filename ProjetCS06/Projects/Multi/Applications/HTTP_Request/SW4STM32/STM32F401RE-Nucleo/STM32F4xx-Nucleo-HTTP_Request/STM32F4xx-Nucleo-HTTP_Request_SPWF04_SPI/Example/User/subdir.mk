################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Src/config_wifi.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Src/console.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Src/main.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Src/stm32_xx_hal_msp.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Src/stm32_xx_it.c \
/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/SW4STM32/STM32F401RE-Nucleo/syscalls.c 

OBJS += \
./Example/User/config_wifi.o \
./Example/User/console.o \
./Example/User/main.o \
./Example/User/stm32_xx_hal_msp.o \
./Example/User/stm32_xx_it.o \
./Example/User/syscalls.o 

C_DEPS += \
./Example/User/config_wifi.d \
./Example/User/console.d \
./Example/User/main.d \
./Example/User/stm32_xx_hal_msp.d \
./Example/User/stm32_xx_it.d \
./Example/User/syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
Example/User/config_wifi.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Src/config_wifi.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Example/User/console.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Src/console.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Example/User/main.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Example/User/stm32_xx_hal_msp.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Src/stm32_xx_hal_msp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Example/User/stm32_xx_it.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Src/stm32_xx_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Example/User/syscalls.o: /Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/SW4STM32/STM32F401RE-Nucleo/syscalls.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DUSART_PRINT_MSG -DSTM32F401xE -DUSE_STM32F4XX_NUCLEO -DSPWF04 -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Projects/Multi/Applications/HTTP_Request/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/STM32F4xx-Nucleo" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Drivers/BSP/X-NUCLEO-IDW0xx1" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Utils" -I"/Users/JeremyLanfranchi/git/CS06/ProjetCS06/Middlewares/ST/STM32_SPWF0xSy/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


