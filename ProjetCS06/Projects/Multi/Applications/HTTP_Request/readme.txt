/**
  @page Wi-Fi Expansion Board for STM32 Nucleo Boards HTTP-Request Application
  
  @verbatim
  ******************** (C) COPYRIGHT 2015 STMicroelectronics *******************
  * @file    readme.txt  
  * @version V0.0.3
  * @date    10-03-2017
  * @brief   This application contains an example which shows how to use the 
			 restful APIs available with the WIFI1 firmware. 

  ******************************************************************************
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  @endverbatim

@par Example Description 

This example application performs a HTTP-GET operation on a remote server httpbin.org. 
The program also performs a HTTP-POST operation (depending on the value of the variable http_post_request) 
on the server posttestserver.com with 4 dummy variables and gets back suitable response. User
may test either service by changing the value of the mentioned variable.

@par Default Application Settings

This program assumes some default settings in the source code which are important
to make the wifi module search, connect and communicate. The default settings 
may be changed by the user in order for him/her to use the program in a correct
manner and get the desired output. The settings used in this program and which 
need to be changed by the user are:

  - Access-Point to connect, ssid = "STM"
  - security key, seckey = "STMdemoPWD"
  - privacy mode, mode = WPA_Personal
  - host name to connect to, hostname = "10.0.0.2"
  
The user may replace the above settings with his/her own specific details directly in the source code.
Otherwise there is also the option to enter the settings during run-time of the program.

The program takes input via the serial terminal (any terminal program like tera-term on the PC). The
serial port settings of the terminal are as follows:
  - baud rate: 115200
  - data: 8bit
  - parity: None
  - Stop-bits: 1bit
  - HW Flow Control: None
  
The user is asked by the program if he/she wants to enter any new settings for the Wifi and the user
must choose option (y) to enter the new settings.
The user is prompted by the program to enter the above described details at the start of the execution
of the program. The user needs to correctly enter his/her wifi settings and host name details
(delete is recognized as an ASCII key). Here is a snapshot of the output of the program at the outset:

/********************************************************
 *                                                      *
 * X-CUBE-WIFI1 Expansion Software v3.1.0               *
 * X-NUCLEO-IDW01M1 Wi-Fi Configuration.                *
 * HTTP-Request Example                                 *
 *                                                      *
 *******************************************************/

Do you want to setup SSID?(y/n):<Enter y if SSID is to be setup>

Enter the SSID:<Enter AP to connect to>

Enter the password:<Enter password of the AP>

Enter the encryption mode(0:Open, 1:WEP, 2:WPA2/WPA2-Personal):<Enter encryption mode, mostly 2>

Enter the Hostname (Apache Server):<Hostname>
  
@par UART baud-rate Settings

In case the user needs to change the baud-rate of the module and the microcontroller, especially if he/she
needs higher throughput in HTTP operations, then there is the option of changing the baud-rate through the 
wifi_config settings as in example below:
	
	wifi_config config;
	config.wifi_baud_rate=<desired baud-rate>;
	wifi_init(&config);
	
Please note that that after baud-rate change, UART3 baud-rate also needs to reflect the same change in the subsequent
runnings. E.g.
    UART_Configuration(<changed baud-rate>); 	
  
@par Hardware and Software environment

  - This example runs on STM32 Nucleo devices with WIFI1 (Wi-Fi) expansion board
    (X-NUCLEO-IDW01M1/X-NUCLEO-IDW04A1)
  - For X-NUCLEO-IDW01M1 the following boards are supported: STM32L053R8-Nucleo, STM32F401RE-Nucleo, STM32L476RG-Nucleo and STM32F103RB-Nucleo
  - For X-NUCLEO-IDW04A1 the following boards are supported: STM32F401RE-Nucleo and STM32L476RG-Nucleo
  - Please make sure the Access-Point is connected to the internet
	

@par How to use it? 

In order to make the program work, you must do the following:
 - WARNING: before opening the project with any toolchain be sure your folder
   installation path is not too in-depth since the toolchain may report errors
   after building.
 - Open IAR toolchain (this firmware has been successfully tested with
   Embedded Workbench V7.40.5).
   Alternatively you can use the Keil uVision toolchain (this firmware
   has been successfully tested with V5.17.0.0).
   Alternatively you can use the System Workbench for STM32 (SW4STM32) toolchain (this firmware
   has been successfully tested with V1.0.0).
 - Rebuild all files and load your image into target memory.
 - Run the example.
 - Alternatively, you can download the pre-built binaries in "Binary" 
   folder included in the distributed package.

 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
