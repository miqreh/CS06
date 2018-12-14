/*
 * can.h
 *
 *  Created on: 4 d�c. 2018
 *      Author: thibaut
 */

#ifndef CAN_H_
#define CAN_H_



#endif /* CAN_H_ */

#include "stm32f4xx_hal.h"

CAN_TxHeaderTypeDef   TxHeader;
CAN_RxHeaderTypeDef   RxHeader;
uint8_t               TxData[8];
uint8_t               RxData[8];
uint32_t              TxMailbox;
CAN_HandleTypeDef hcan1;
UART_HandleTypeDef huart2;

void CAN_Config(void);
void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan);
uint8_t CAN_Transmit(uint32_t addr, uint32_t data_size, uint8_t * tab_data);
void plog(char* str);
void HAL_CAN_ErrorCallback(CAN_HandleTypeDef *hcan);
void CAN_TransmitOrdre(int ev1, int ev2, int ev3, int pump);


