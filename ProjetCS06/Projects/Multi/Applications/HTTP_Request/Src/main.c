  /**
  ******************************************************************************
  * @file    main.c
  * @author  Central LAB
  * @version V2.1.0
  * @date    17-May-2016
  * @brief   Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT(c) 2015 STMicroelectronics</center></h2>
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
  */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stdio.h"
#include "string.h"
#include "wifi_module.h"
#include "wifi_globals.h"
#include "wifi_interface.h"
#include "config_wifi.h"
#include "connexion_mqtt.h"


/** DEFINE à inclure dans mon ficier MQTT**/
#define TOPIC_DECLENCHEMENT "CS06/arroseur/declenchement"
#define TOPIC_ARRET "CS06/arroseur/arret"
#define TOPIC_MONITORING "CS06/arroseur/monitoring"
#define MQTT_HOST "89.156.159.82"
#define MQTT_PORT 9001
#define QOS "0"


/** @defgroup WIFI_Examples
  * @{
  */

/** @defgroup WIFI_Example_HTTP_Request
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
  
/* Private function prototypes -----------------------------------------------*/
WiFi_Status_t wifi_get_AP_settings(void);
uint8_t user_buffer[1024];
__IO char http_char;
wifi_bool http_post_request = WIFI_FALSE;

uint8_t console_input[1], console_count=0;
char console_ssid[40];
char console_psk[20];
char console_host[20];
wifi_bool set_AP_config = WIFI_FALSE;

/* Private functions ---------------------------------------------------------*/
void  SystemClock_Config(void);
void  UART_Msg_Gpio_Init(void);
void  USART_PRINT_MSG_Configuration(UART_HandleTypeDef *UART_MsgHandle, uint32_t baud_rate);
WiFi_Status_t wifi_get_AP_settings(void);

WiFi_Status_t connexion_MQTT(char *host,uint32_t port);
WiFi_Status_t subscribe_topic_MQTT(char *topic, char *qos);
WiFi_Status_t publish_topic_MQTT(char *topic, char *qos, char *msg);
void configuration_MQTT(void);
void supprimer_characteres(char * str,uint8_t nombre,uint8_t position);

/* Private Declarartion ------------------------------------------------------*/
__IO wifi_state_t wifi_state;
wifi_config config;
UART_HandleTypeDef UART_MsgHandle;

char * ssid = "STM";
char * seckey = "STMdemoPWD";
WiFi_Priv_Mode mode = WPA_Personal;
char * hostname = "httpbin.org";
char * post_hostname = "posttestserver.com";
char * gcfg_key1 = "ip_ipaddr";
char * gcfg_key2 = "nv_model";
uint8_t MQTT_connected=0;



char wifi_ip_addr[20];
uint32_t baud_rate = 115200;

 /**
  * @brief  Main program
  * @param  None
  * @retval None
  */
int main(void)
{
	 WiFi_Status_t status = WiFi_MODULE_SUCCESS;

	  char * path = "/get";
	  uint32_t  port_num = 80;
	  char * post_path = "/post.php/name=demo&email=mymail&subject=subj&body=message";

	  __GPIOA_CLK_ENABLE();
	  HAL_Init();

	  /* Configure the system clock to 64 MHz */
	  SystemClock_Config();
	  SystemCoreClockUpdate();

	  /* configure the timers  */
	  Timer_Config( );
	  BSP_LED_Init(LED2);

	#ifdef USART_PRINT_MSG
	  UART_Msg_Gpio_Init();
	  USART_PRINT_MSG_Configuration(&UART_MsgHandle,115200);
	  Set_UartMsgHandle(&UART_MsgHandle);
	#endif

	  status = wifi_get_AP_settings();
	  if(status!=WiFi_MODULE_SUCCESS)
	  {
	    printf("\r\nError in AP Settings");
	    return 0;
	  }

	  UART_Configuration(baud_rate);

	  config.power=wifi_active;
	  config.power_level=high;
	  config.dhcp=on;//use DHCP IP address
	  config.mcu_baud_rate = baud_rate;
	  wifi_state = wifi_state_idle;

	  printf("\r\n\nInitializing the wifi module...");

	  /* Init the wi-fi module */
	  status = wifi_init(&config);
	  if(status!=WiFi_MODULE_SUCCESS)
	  {
	    printf("Error in Config");
	    return 0;
	  }
  
  
  
	  //A DECOMMENTER POUR QUE LE MODULE COMMENCE EN MODE MINIAP
	  //--
	  //launch_config_wifi();



	  //A DECOMMENTER POUR QUE LE MODULE SE CONNECTE AUTOMATIQUEMENT AU WIFI
	  //--
	  char* ssid_ = "Honor22";
	  char* key_ = "stephane";
	  wifi_connect(ssid_, key_,2);




  while (1)
  {
	  __NOP();
	  switch(wifi_state)
	  {
	  case wifi_state_connected:
		  if(MQTT_connected==0)
		  {
			  printf("\r\nConnexion MQTT ...\r\n");
		 /* if(wifi_mqtt_connect((uint8_t *) "broker.mqttdashboard.com",8000)==WiFi_MODULE_SUCCESS)
		  {
			  printf("\r\nConnexion réussie ...\r\n");
			  wifi_mqtt_subscribe((uint8_t *) "arroseur/stef");
			  wifi_mqtt_publish((uint8_t *) "arroseur/stef",strlen(ssid),ssid);
			  MQTT_connected=1;
		  }*/
			 /*connexion_MQTT("broker.mqttdashboard.com",8000);

			 subscribe_topic_MQTT("arroseur/stef","0");
			 MQTT_connected=1;*/
			  configuration_MQTT();

		  }
		  break;
		  default:
			  MQTT_connected=0;
			  break;

	  }

  }


}

/**
  * @brief  System Clock Configuration
  *         The system Clock is configured as follow : 
  *            System Clock source            = PLL (HSI)
  *            SYSCLK(Hz)                     = 64000000
  *            HCLK(Hz)                       = 64000000
  *            AHB Prescaler                  = 1
  *            APB1 Prescaler                 = 2
  *            APB2 Prescaler                 = 1
  *            PLLMUL                         = 16
  *            Flash Latency(WS)              = 2
  * @param  None
  * @retval None
  */

#ifdef USE_STM32F1xx_NUCLEO

void SystemClock_Config(void)
{
  RCC_ClkInitTypeDef clkinitstruct = {0};
  RCC_OscInitTypeDef oscinitstruct = {0};
  
  /* Configure PLL ------------------------------------------------------*/
  /* PLL configuration: PLLCLK = (HSI / 2) * PLLMUL = (8 / 2) * 16 = 64 MHz */
  /* PREDIV1 configuration: PREDIV1CLK = PLLCLK / HSEPredivValue = 64 / 1 = 64 MHz */
  /* Enable HSI and activate PLL with HSi_DIV2 as source */
  oscinitstruct.OscillatorType  = RCC_OSCILLATORTYPE_HSE;
  oscinitstruct.HSEState        = RCC_HSE_ON;
  oscinitstruct.LSEState        = RCC_LSE_OFF;
  oscinitstruct.HSIState        = RCC_HSI_OFF;
  oscinitstruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  oscinitstruct.HSEPredivValue    = RCC_HSE_PREDIV_DIV1;
  oscinitstruct.PLL.PLLState    = RCC_PLL_ON;
  oscinitstruct.PLL.PLLSource   = RCC_PLLSOURCE_HSE;
  oscinitstruct.PLL.PLLMUL      = RCC_PLL_MUL9;
  if (HAL_RCC_OscConfig(&oscinitstruct)!= HAL_OK)
  {
    /* Initialization Error */
    while(1); 
  }

  /* Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2 
     clocks dividers */
  clkinitstruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
  clkinitstruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  clkinitstruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  clkinitstruct.APB2CLKDivider = RCC_HCLK_DIV1;
  clkinitstruct.APB1CLKDivider = RCC_HCLK_DIV2;  
  if (HAL_RCC_ClockConfig(&clkinitstruct, FLASH_LATENCY_2)!= HAL_OK)
  {
    /* Initialization Error */
    while(1); 
  }
}
#endif

#ifdef USE_STM32F4XX_NUCLEO

void SystemClock_Config(void)
{
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_OscInitTypeDef RCC_OscInitStruct;

  /* Enable Power Control clock */
  __PWR_CLK_ENABLE();
  
  /* The voltage scaling allows optimizing the power consumption when the device is 
     clocked below the maximum system frequency, to update the voltage scaling value 
     regarding system frequency refer to product datasheet.  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE2);
  
  /* Enable HSI Oscillator and activate PLL with HSI as source */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = 0x10;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 16;
  RCC_OscInitStruct.PLL.PLLN = 336;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
  RCC_OscInitStruct.PLL.PLLQ = 7;
  HAL_RCC_OscConfig(&RCC_OscInitStruct);
   
  /* Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2 
     clocks dividers */
  RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;  
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;  
  HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2);
}
#endif

#ifdef USE_STM32L0XX_NUCLEO


/**
 * @brief  System Clock Configuration
 * @param  None
 * @retval None
 */
  void SystemClock_Config(void)
{
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_OscInitTypeDef RCC_OscInitStruct;

  __PWR_CLK_ENABLE();

  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = 0x10;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLLMUL_4;
  RCC_OscInitStruct.PLL.PLLDIV = RCC_PLLDIV_2;
  HAL_RCC_OscConfig(&RCC_OscInitStruct);

  RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);//RCC_CLOCKTYPE_SYSCLK;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;//RCC_SYSCLKSOURCE_HSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
  HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1);

  __SYSCFG_CLK_ENABLE(); 
}
#endif

#ifdef USE_STM32L4XX_NUCLEO
/**
  * @brief  System Clock Configuration
  *         The system Clock is configured as follow :
  *            System Clock source            = PLL (MSI)
  *            SYSCLK(Hz)                     = 80000000
  *            HCLK(Hz)                       = 80000000
  *            AHB Prescaler                  = 1
  *            APB1 Prescaler                 = 1
  *            APB2 Prescaler                 = 1
  *            MSI Frequency(Hz)              = 4000000
  *            PLL_M                          = 1
  *            PLL_N                          = 40
  *            PLL_R                          = 2
  *            PLL_P                          = 7
  *            PLL_Q                          = 4
  *            Flash Latency(WS)              = 4
  * @param  None
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};

  /* MSI is enabled after System reset, activate PLL with MSI as source */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
  RCC_OscInitStruct.MSICalibrationValue = RCC_MSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_MSI;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 40;
  RCC_OscInitStruct.PLL.PLLR = 2;
  RCC_OscInitStruct.PLL.PLLP = 7;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  HAL_RCC_OscConfig(&RCC_OscInitStruct);

  /* Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2 
     clocks dividers */
  RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;  
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;  
  HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4);
}
#endif

#ifdef  USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

#ifdef USART_PRINT_MSG
void USART_PRINT_MSG_Configuration(UART_HandleTypeDef *UART_MsgHandle, uint32_t baud_rate)
{
  UART_MsgHandle->Instance             = WIFI_UART_MSG;
  UART_MsgHandle->Init.BaudRate        = baud_rate;
  UART_MsgHandle->Init.WordLength      = UART_WORDLENGTH_8B;
  UART_MsgHandle->Init.StopBits        = UART_STOPBITS_1;
  UART_MsgHandle->Init.Parity          = UART_PARITY_NONE ;
  UART_MsgHandle->Init.HwFlowCtl       = UART_HWCONTROL_NONE;// USART_HardwareFlowControl_RTS_CTS;
  UART_MsgHandle->Init.Mode            = UART_MODE_TX_RX;

  if(HAL_UART_DeInit(UART_MsgHandle) != HAL_OK)
  {
    Error_Handler();
  }  
  if(HAL_UART_Init(UART_MsgHandle) != HAL_OK)
  {
    Error_Handler();
  }
      
}

void UART_Msg_Gpio_Init()
{ 
  GPIO_InitTypeDef  GPIO_InitStruct;

  /*##-1- Enable peripherals and GPIO Clocks #################################*/
  /* Enable GPIO TX/RX clock */
  USARTx_PRINT_TX_GPIO_CLK_ENABLE();
  USARTx_PRINT_RX_GPIO_CLK_ENABLE();


  /* Enable USARTx clock */
  USARTx_PRINT_CLK_ENABLE(); 
    __SYSCFG_CLK_ENABLE();
  /*##-2- Configure peripheral GPIO ##########################################*/  
  /* UART TX GPIO pin configuration  */
  GPIO_InitStruct.Pin       = WiFi_USART_PRINT_TX_PIN;
  GPIO_InitStruct.Mode      = GPIO_MODE_AF_PP;
  GPIO_InitStruct.Pull      = GPIO_PULLUP;
  GPIO_InitStruct.Speed     = GPIO_SPEED_HIGH;
#if defined (USE_STM32L0XX_NUCLEO) || defined(USE_STM32F4XX_NUCLEO) || defined(USE_STM32L4XX_NUCLEO)
  GPIO_InitStruct.Alternate = PRINTMSG_USARTx_TX_AF;
#endif  
  HAL_GPIO_Init(WiFi_USART_PRINT_TX_GPIO_PORT, &GPIO_InitStruct);

  /* UART RX GPIO pin configuration  */
  GPIO_InitStruct.Pin = WiFi_USART_PRINT_RX_PIN;
  GPIO_InitStruct.Mode      = GPIO_MODE_INPUT;
#if defined (USE_STM32L0XX_NUCLEO) || defined(USE_STM32F4XX_NUCLEO) || defined(USE_STM32L4XX_NUCLEO)
  GPIO_InitStruct.Mode      = GPIO_MODE_AF_PP;
  GPIO_InitStruct.Alternate = PRINTMSG_USARTx_RX_AF;
#endif 
  
  HAL_GPIO_Init(WiFi_USART_PRINT_RX_GPIO_PORT, &GPIO_InitStruct);
  
#ifdef WIFI_USE_VCOM
  /*##-3- Configure the NVIC for UART ########################################*/
  /* NVIC for USART */
  HAL_NVIC_SetPriority(USARTx_PRINT_IRQn, 0, 1);
  HAL_NVIC_EnableIRQ(USARTx_PRINT_IRQn);
#endif
}
#endif  // end of USART_PRINT_MSG

/**
  * @brief  Query the User for SSID, password and encryption mode
  * @param  None
  * @retval WiFi_Status_t
  */
WiFi_Status_t wifi_get_AP_settings(void)
{
  WiFi_Status_t status = WiFi_MODULE_SUCCESS;
  printf("\r\n\n/********************************************************\n");
  printf("\r *                                                      *\n");
  printf("\r * X-CUBE-WIFI1 Expansion Software v3.1.1               *\n");
  printf("\r * X-NUCLEO-IDW0xx1 Wi-Fi Mini-AP Configuration.        *\n");
  printf("\r * HTTP-Request Example                                 *\n");
  printf("\r *                                                      *\n");
  printf("\r *******************************************************/\n");
  printf("\r\nDo you want to setup SSID?(y/n):");
  fflush(stdout);
  scanf("%s",console_input);
  //console_input[0] = 'n';
  printf("\r\n");

  //HAL_UART_Receive(UartMsgHandle, (uint8_t *)console_input, 1, 100000);
  if(console_input[0]=='y') 
        {
              set_AP_config = WIFI_TRUE;  
              printf("Enter the SSID:");
              fflush(stdout);

              console_count=0;
              console_count=scanf("%s",console_ssid);
              printf("\r\n");

                if(console_count==39) 
                    {
                        printf("Exceeded number of ssid characters permitted");
                        return WiFi_NOT_SUPPORTED;
                    }    
              
              //printf("entered =%s\r\n",console_ssid);
              printf("Enter the password:");
              fflush(stdout);
              console_count=0;
              
              console_count=scanf("%s",console_psk);
              printf("\r\n");
              //printf("entered =%s\r\n",console_psk);
                if(console_count==19) 
                    {
                        printf("Exceeded number of psk characters permitted");
                        return WiFi_NOT_SUPPORTED;
                    }    
              printf("Enter the encryption mode(0:Open, 1:WEP, 2:WPA2/WPA2-Personal):"); 
              fflush(stdout);
             scanf("%s",console_input);
             printf("\r\n");
              //printf("entered =%s\r\n",console_input);
              switch(console_input[0])
              {
                case '0':
                  mode = None;
                  break;
                case '1':
                  mode = WEP;
                  break;
                case '2':
                  mode = WPA_Personal;
                  break;
                default:
                  printf("\r\nWrong Entry. Priv Mode is not compatible\n");
                  return WiFi_NOT_SUPPORTED;              
              }
              
              memcpy(console_host, (const char*)hostname, strlen((char*)hostname));
              
        } else 
            {
                printf("\r\n\nModule will connect with default settings.");
                memcpy(console_ssid, (const char*)ssid, strlen((char*)ssid));
                memcpy(console_psk, (const char*)seckey, strlen((char*)seckey));
                memcpy(console_host, (const char*)hostname, strlen((char*)hostname));
            }
  
  printf("\r\n/*************************************************************\r\n");
  printf("\r\n * Configuration Complete                                     \r\n");
  printf("\r\n * Please make sure a Server is running at given hostname     \r\n");
  printf("\r\n *************************************************************\r\n");
  
  return status;
}


/******** Wi-Fi Indication User Callback *********/


void ind_wifi_on()
{
  printf("\r\n\nwifi started and ready...\r\n");
  wifi_state = wifi_state_ready;
}
  
void ind_wifi_connected()
{
  printf("\r\nwifi connected...\r\n");
  wifi_state = wifi_state_connected;

}

void ind_wifi_http_data_available(uint8_t * data_ptr, uint32_t message_size)
{
  //User is adviced to copy the data immediately to a user buffer memory as the data will be flushed after this callback
  printf("\r\nData Callback\r\n");
  memcpy(user_buffer, data_ptr, message_size);
  printf((char*)user_buffer);
  printf("\r\n");
}

void ind_wifi_mqtt_data_received(uint8_t client_id, uint8_t *topic,uint32_t chunk_size,uint32_t message_size, uint32_t total_message_size, uint8_t *data_ptr)
{
	printf("MQTT reçu! \r\n");
}

void ind_wifi_mqtt_closed(uint8_t client_id){
	printf("MQTT CLOSED");
	MQTT_connected=0;
}



/*AT+S.MQTTCONN=test.mosquitto.org,8080,/mqtt,,,,SPWF04S,,,,,*/


WiFi_Status_t connexion_MQTT(char *host,uint32_t port)
{
  WiFi_Status_t status = WiFi_MODULE_SUCCESS;
  Reset_AT_CMD_Buffer();

 // sprintf((char*)WiFi_AT_Cmd_Buff,"AT+S.MQTTCONN=broker.hivemq.com,8000,/mqtt,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,\r");
  sprintf((char*)WiFi_AT_Cmd_Buff,"AT+S.MQTTCONN=test.mosquitto.org,8080,/mqtt,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,\r");
 // sprintf((char*)WiFi_AT_Cmd_Buff,"AT+S.MQTTCONN=test.mosquitto.org,8080,/mqtt,,,,SPWF04S,,,,, \r");
  printf((char*) WiFi_AT_Cmd_Buff);
                   run_spi_cmd((char*)WiFi_AT_Cmd_Buff, SPI_DMA);
                   IO_status_flag.AT_event_processing = WIFI_MQTT_CONNECT_EVENT;
                   status = WiFi_MODULE_SUCCESS;
                  // HAL_Delay(2000);
                   if(status == WiFi_MODULE_SUCCESS)
                       {
                         status = USART_Receive_AT_Resp( );
                         printf("\r\nWIFI_SUCCES\r\n");
                       }

  /* AT&W :Save the settings on the flash memory */
  Reset_AT_CMD_Buffer();
//  Save_Current_Setting();

  return status;
}


WiFi_Status_t subscribe_topic_MQTT(char *topic, char *qos)
{
	WiFi_Status_t status = WiFi_MODULE_SUCCESS;
		  Reset_AT_CMD_Buffer();


		  sprintf((char*)WiFi_AT_Cmd_Buff,"AT+S.MQTTSUB=0,%s,%s\r",topic,qos);
		  run_spi_cmd((char*)WiFi_AT_Cmd_Buff, SPI_POLL);
		                    IO_status_flag.AT_event_processing = WIFI_MQTT_CONNECT_EVENT;
		                    status = WiFi_MODULE_SUCCESS;
		  //status = USART_Transmit_AT_Cmd(strlen((char*)WiFi_AT_Cmd_Buff));
		  /*if(status == WiFi_MODULE_SUCCESS)
		    {
		      status = USART_Receive_AT_Resp( );
		      mqtt_type = SUBSCRIBE;
		    }

		  /* AT&W :Save the settings on the flash memory */
		  Reset_AT_CMD_Buffer();
		//  Save_Current_Setting();

		  return status;
}
/*AT+S.MQTTPUB=0,<Topic>,[<QoS>],[<RetainedFlag>],<Len><cr>{data}*/
WiFi_Status_t publish_topic_MQTT(char *topic, char *qos,char *msg)
{
	WiFi_Status_t status = WiFi_MODULE_SUCCESS;
		  Reset_AT_CMD_Buffer();


		  sprintf((char*)WiFi_AT_Cmd_Buff,"AT+S.MQTTPUB=0,%s,%s,NULL,%d %s",topic,qos,strlen(msg),msg);
		                  run_spi_cmd((char*)WiFi_AT_Cmd_Buff, SPI_POLL);
		  //status = USART_Transmit_AT_Cmd(strlen((char*)WiFi_AT_Cmd_Buff));
		  /*if(status == WiFi_MODULE_SUCCESS)
		    {
		      status = USART_Receive_AT_Resp( );
		      mqtt_type = SUBSCRIBE;
		    }

		  /* AT&W :Save the settings on the flash memory */
		  Reset_AT_CMD_Buffer();
		//  Save_Current_Setting();

		  return status;
}

void supprimer_characteres(char * str,uint8_t nombre,uint8_t position)
{
	int taille =strlen(str);
	int i = 0;
	while (i<taille-nombre)
	{
		str[position] = str[position +nombre];
		position++;
		i++;

	}

}

void traitement_message (char *message , char *topic)
{
	/** On cherche à déterminer le topicc**/
	if(strstr(topic,TOPIC_DECLENCHEMENT) !=NULL)
	{
		printf ("\r\n Message : %s Topic : %s ",message,TOPIC_DECLENCHEMENT);
	}else if (strstr(topic,TOPIC_ARRET) !=NULL)
	{	printf (" \r\n Message : %s Topic : %s ",message,TOPIC_ARRET);

	}else if (strstr(topic,"arroseur/stef") !=NULL)
	{
		printf ("\r\n Message : %s Topic : %s ",message,"arroseur/stef");
	}
	printf("\r\n END MQTT");
}

void configuration_MQTT(void)
{

				 connexion_MQTT("broker.mqttdashboard.com",8000);

				 subscribe_topic_MQTT("arroseur/stef","0");
				 subscribe_topic_MQTT(TOPIC_ARRET,QOS);
				 subscribe_topic_MQTT(TOPIC_DECLENCHEMENT,QOS);
				 //publish_topic_MQTT(TOPIC_MONITORING,QOS,"Salut\r\n");
				 MQTT_connected=1;
}



/**
  * @}
  */
  
/**
* @}
*/

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
