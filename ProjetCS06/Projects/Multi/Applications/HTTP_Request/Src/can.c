/*
 * can.c
 *
 *  Created on: 4 d�c. 2018
 *      Author: thibaut
 */


#include "can.h"
#include <stdio.h>
#include "stm32f4xx_hal.h"
#include "stm32f4xx_hal_can.h"

void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan)
{
  HAL_CAN_GetRxMessage(hcan, CAN_RX_FIFO0, &RxHeader, RxData);
  /*if (RxHeader.IDE == CAN_ID_STD && RxHeader.DLC == 1)
  {
	 plog("message recu id\n");
	 HAL_UART_Transmit(&huart2, (uint8_t*) &RxHeader.StdId, 4, 1000);

  }*/

  uint32_t id = RxHeader.StdId;

  switch(id){

  case 0x1 :
	  plog("reception de l'�tat cmd\n");
	  break;

  case 0x02 :
  	  plog("passage mode manuel\n");
  	  break;

  case 0x10 :
  	  plog("reception de la valeur courant pompe\n");
  	  break;

  case 0x11 :
  	  plog("reception de la valeur niveau eau\n");
  	  break;
  }

}

void HAL_CAN_ErrorCallback(CAN_HandleTypeDef *hcan){
	uint32_t erreur = HAL_CAN_GetError(hcan);

	switch(erreur){
		case HAL_CAN_ERROR_PARAM :
			printf("\r\nerreur param\n");
			break;
		case HAL_CAN_ERROR_EWG :
			printf("\r\nprotocol error\n");
				break;
		case HAL_CAN_ERROR_BOF :
			printf("\r\nbus off\n");
				break;
		case HAL_CAN_ERROR_EPV :
			printf("\r\npassive error\n");
				break;
		case HAL_CAN_ERROR_ACK :
			printf("\r\nerreur ack\n");
				break;
		default :
			printf("\r\nautres erreurs");
			break;

	}

}

uint8_t CAN_Transmit(uint32_t addr, uint32_t data_size, uint8_t * tab_data)
{
    if(data_size > 8 || sizeof(tab_data) / sizeof(tab_data[0]) <= data_size)
	return 0;

    TxHeader.StdId = addr;
    TxHeader.DLC = data_size;

    for(int i = 0; i < data_size; i++)
    {
	TxData[i] = tab_data[i];
    }

    HAL_CAN_AddTxMessage(&hcan1, &TxHeader, TxData, &TxMailbox);

    return 1;
}


void CAN_Config(void){
	CAN_FilterTypeDef  sFilterConfig;

	  sFilterConfig.FilterBank = 0;
	  sFilterConfig.FilterMode = CAN_FILTERMODE_IDMASK;
	  sFilterConfig.FilterScale = CAN_FILTERSCALE_32BIT;
	  sFilterConfig.FilterIdHigh = 0x00 << 5;
	  sFilterConfig.FilterIdLow = 0;
	  sFilterConfig.FilterMaskIdHigh = 0x0 << 5;
	  sFilterConfig.FilterMaskIdLow = 0;
	  sFilterConfig.FilterFIFOAssignment = CAN_RX_FIFO0;
	  sFilterConfig.FilterActivation = ENABLE;
	  sFilterConfig.SlaveStartFilterBank = 14;

	  HAL_CAN_ConfigFilter(&hcan1, &sFilterConfig);
	  HAL_CAN_Start(&hcan1);
	  HAL_CAN_ActivateNotification(&hcan1, CAN_IT_RX_FIFO0_MSG_PENDING);


	  TxHeader.StdId = 0x08;
	  TxHeader.ExtId = 0x08;
	  TxHeader.RTR = CAN_RTR_DATA;
	  TxHeader.IDE = CAN_ID_STD;
	  TxHeader.DLC = 2;
	  TxHeader.TransmitGlobalTime = DISABLE;
	  TxData[0] =2;
	  TxData[1]= 4;



}

void CAN_TransmitOrdre(int ev1, int ev2, int ev3, int pump){



}

void plog(char* str)
{
	HAL_UART_Transmit(&huart2, str, strlen(str), 1000);
}
