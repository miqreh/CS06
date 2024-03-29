  /**
  ******************************************************************************
  * @file    stm32_xx_it.c
  * @author  Central LAB
  * @version V2.1.0
  * @date    17-May-2015
  * @brief   Main Interrupt Service Routines.
  *          This file provides template for all exceptions handler and 
  *          peripherals interrupt service routine.
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
#include "stm32_xx_it.h"
#include "wifi_module.h"
#include "stm32_spwf_wifi.h"
#include "wifi_globals.h"
#include "wifi_module.h"


/** @defgroup STM32xx_IT_Private_Variables
* @{
*/

/** @addtogroup STM32xx_HAL_Examples
  * @{
  */

/** @addtogroup Templates
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/

/* Private function prototypes -----------------------------------------------*/
void USARTx_IRQHandler(void);    
void USARTx_PRINT_IRQHandler(void);
void USARTx_EXTI_IRQHandler(void);
void TIMx_IRQHandler(void);
void TIMp_IRQHandler(void);
void DMA_CONSOLE_IRQHANDLER(void);
void DMA_WIFI_IRQHANDLER(void);
/* Private functions ---------------------------------------------------------*/

/******************************************************************************/
/*            Cortex-M3 Processor Exceptions Handlers                         */
/******************************************************************************/













/**
  * @brief   This function handles NMI exception.
  * @param  None
  * @retval None
  */
void NMI_Handler(void)
{
}

/**
  * @brief  This function handles Hard Fault exception.
  * @param  None
  * @retval None
  */
void HardFault_Handler(void)
{
  /* Go to infinite loop when Hard Fault exception occurs */
  while (1)
  {
    BSP_LED_On(LED2); 
  }
}

/**
  * @brief  This function handles Memory Manage exception.
  * @param  None
  * @retval None
  */
void MemManage_Handler(void)
{
  /* Go to infinite loop when Memory Manage exception occurs */
  while (1)
  {
    BSP_LED_On(LED2); 
  }
}

/**
  * @brief  This function handles Bus Fault exception.
  * @param  None
  * @retval None
  */
void BusFault_Handler(void)
{
  /* Go to infinite loop when Bus Fault exception occurs */
  while (1)
  {
    BSP_LED_On(LED2); 
  }
}

/**
  * @brief  This function handles Usage Fault exception.
  * @param  None
  * @retval None
  */
void UsageFault_Handler(void)
{
  /* Go to infinite loop when Usage Fault exception occurs */
  while (1)
  {
    BSP_LED_On(LED2); 
  }
}

/**
  * @brief  This function handles SVCall exception.
  * @param  None
  * @retval None
  */
void SVC_Handler(void)
{
  BSP_LED_On(LED2); 
}

/**
  * @brief  This function handles Debug Monitor exception.
  * @param  None
  * @retval None
  */
void DebugMon_Handler(void)
{
  BSP_LED_On(LED2); 
}

/**
  * @brief  This function handles PendSVC exception.
  * @param  None
  * @retval None
  */
void PendSV_Handler(void)
{
}

/******************************************************************************/
/*                 STM32F1xx Peripherals Interrupt Handlers                   */
/*  Add here the Interrupt Handler for the used peripheral(s) (PPP), for the  */
/*  available peripheral interrupt handler's name please refer to the startup */
/*  file (startup_stm32f1xx.s).                                               */
/******************************************************************************/

/**
  * @brief  This function handles TIM interrupt request.
  * @param  None
  * @retval None
  */
void TIMx_IRQHandler(void)
{
  HAL_TIM_IRQHandler(&TimHandle);
  
}

/**
  * @brief  This function handles TIM interrupt request.
  * @param  None
  * @retval None
  */
void TIMp_IRQHandler(void)
{
  HAL_TIM_IRQHandler(&PushTimHandle);
  
}

/**
  * @brief  This function handles SysTick Handler.
  * @param  None
  * @retval None
  */
void SysTick_Handler(void)
{
  HAL_IncTick();
#ifndef WIFI_USE_VCOM
  Wifi_SysTick_Isr();
#endif
}

/**
  * @brief  This function handles EXTI Handler.
  * @param  None
  * @retval None
  */
//void USARTx_EXTI_IRQHandler(void)
//{
//  HAL_GPIO_EXTI_IRQHandler(WiFi_USART_RX_PIN);
//}

/**
  * @brief  This function GPIO EXTI Callback.
  * @param  Pin number of the GPIO generating the EXTI IRQ
  * @retval None
  */
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  //RX_EXTI_Isr(GPIO_Pin);
}

/**
* @brief  Period elapsed callback in non blocking mode
*         This timer is used for calling back User registered functions with information
* @param  htim : TIM handle
* @retval None
*/
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{

	printf("\rON EST DANS HAL_TIM_PeriodElapsedCallback\n");
#ifndef WIFI_USE_VCOM
  Wifi_TIM_Handler(htim);
#endif
}

/**
* @brief  HAL_UART_RxCpltCallback
*         Rx Transfer completed callback
* @param  UsartHandle: UART handle
* @retval None
*/
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *UartHandleArg)
{
	printf("\rON EST DANS HAL UART RX CPLT CALLBACK\n");

#ifndef WIFI_USE_VCOM
  WiFi_HAL_UART_RxCpltCallback(UartHandleArg);
#endif
}

/**
* @brief  HAL_UART_TxCpltCallback
*         Tx Transfer completed callback
* @param  UsartHandle: UART handle 
* @retval None
*/
void HAL_UART_TxCpltCallback(UART_HandleTypeDef *UartHandleArg)
{
#ifndef WIFI_USE_VCOM
  WiFi_HAL_UART_TxCpltCallback(UartHandleArg);
#endif
}

/**
  * @brief  UART error callbacks
  * @param  UsartHandle: UART handle
  * @note   This example shows a simple way to report transfer error, and you can
  *         add your own implementation.
  * @retval None
  */
void HAL_UART_ErrorCallback(UART_HandleTypeDef *UartHandle)
{
	printf("\rON EST DANS HAL_UART_ErrorCallback\n");

  WiFi_HAL_UART_ErrorCallback(UartHandle);
}

/******************************************************************************/
/*                 STM32 Peripherals Interrupt Handlers                   */
/*  Add here the Interrupt Handler for the used peripheral(s) (PPP), for the  */
/*  available peripheral interrupt handler's name please refer to the startup */
/*  file (startup_stm32xxx.s).                                            */
/******************************************************************************/

/**
  * @brief  This function handles USARTx Handler.
  * @param  None
  * @retval None
  */
void USARTx_IRQHandler(void)
{
  HAL_UART_IRQHandler(&UartWiFiHandle);
}

/**
  * @brief  This function handles USARTx vcom Handler.
  * @param  None
  * @retval None
  */
#ifdef USART_PRINT_MSG
void USARTx_PRINT_IRQHandler(void)
{
   HAL_UART_IRQHandler(UartMsgHandle);
}
#endif

#ifdef WIFI_USE_VCOM

#ifdef USE_STM32F4XX_NUCLEO
void DMA1_Stream5_IRQHandler(void)
{
   if(LL_DMA_IsActiveFlag_TC5(DMA1) == 1)
  {
    LL_DMA_ClearFlag_TC5(DMA1);
    DMA1_TransferComplete();
  }
}

void DMA2_Stream2_IRQHandler(void)
{
   if(LL_DMA_IsActiveFlag_TC2(DMA2) == 1)
  {
    LL_DMA_ClearFlag_TC2(DMA2);
    DMA2_TransferComplete();
  }
}
#endif //#ifdef USE_STM32F4XX_NUCLEO

#ifdef USE_STM32L4XX_NUCLEO
void DMA1_Channel6_IRQHandler(void)
{
   if(LL_DMA_IsActiveFlag_TC6(DMA1) == 1)
  {
    LL_DMA_ClearFlag_TC6(DMA1);
    DMA1_TransferComplete();
  }
}

void DMA1_Channel5_IRQHandler(void)
{
   if(LL_DMA_IsActiveFlag_TC5(DMA1) == 1)
  {
    LL_DMA_ClearFlag_TC5(DMA1);
    DMA2_TransferComplete();
  }
}
#endif //USE_STM32L4XX_NUCLEO


#ifdef USE_STM32L0XX_NUCLEO

void DMA_CONSOLE_IRQHANDLER(void)
{
  if(LL_DMA_IsActiveFlag_TC5(DMA1) == 1)
  {
    LL_DMA_ClearFlag_TC5(DMA1);
    DMA1_TransferComplete();
  }
}

void DMA_WIFI_IRQHANDLER(void)
{
  if(LL_DMA_IsActiveFlag_TC3(DMA1) == 1)
  {
    LL_DMA_ClearFlag_TC3(DMA1);
    DMA2_TransferComplete();
  }
}

#endif  //USE_STM32L0XX_NUCLEO


#ifdef USE_STM32F1xx_NUCLEO
static uint32_t DMA_IsActiveFlag_TC6(DMA_TypeDef *DMAx);
static uint32_t DMA_IsActiveFlag_TC5(DMA_TypeDef *DMAx);
static void DMA_ClearFlag_TC6(DMA_TypeDef *DMAx);
static void DMA_ClearFlag_TC5(DMA_TypeDef *DMAx);

static uint32_t DMA_IsActiveFlag_TC6(DMA_TypeDef *DMAx)
{
  return (READ_BIT(DMAx->ISR ,DMA_FLAG_TC6)==(DMA_FLAG_TC6));
}

static uint32_t DMA_IsActiveFlag_TC5(DMA_TypeDef *DMAx)
{
  return (READ_BIT(DMAx->ISR ,DMA_FLAG_TC5)==(DMA_FLAG_TC5));
}

static void DMA_ClearFlag_TC6(DMA_TypeDef *DMAx)
{
  SET_BIT(DMAx->IFCR , DMA_FLAG_TC6);
}

static void DMA_ClearFlag_TC5(DMA_TypeDef *DMAx)
{
  SET_BIT(DMAx->IFCR , DMA_FLAG_TC5);
}

void DMA_CONSOLE_IRQHANDLER(void)
{
  if(DMA_IsActiveFlag_TC6(DMA1) == 1)
  {
    DMA_ClearFlag_TC6(DMA1);
    DMA1_TransferComplete();
  }
}

void DMA_WIFI_IRQHANDLER(void)
{
  if(DMA_IsActiveFlag_TC5(DMA1) == 1)
  {
    DMA_ClearFlag_TC5(DMA1);
    DMA2_TransferComplete();
  }
}
#endif //USE_STM32F1xx_NUCLEO

#endif //WIFI_USE_VCOM
/**
  * @}
  */ 

/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
