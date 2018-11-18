/*
 * Manage the connection to the network --> from the Access Point mode to the connected state to the customer's network
 */
#include "main.h"
#include "stdio.h"
#include "string.h"
#include "wifi_module.h"
#include "wifi_globals.h"
#include "config_wifi.h"


/*
 * Launch of the process to connect the STM to the customer network
 * It starts by using MiniAP mode to gather connection information and then connect to the user's network
 * Return 0 if success, 1 otherwise
 */
int launch_config_wifi(){


	//Specifications of the MiniAP network generated
    uint8_t ssid[] = "Arroseur connecte";
    char key[] = "1234";

    //Launch of the MiniAP mode --> opened network
    wifi_ap_start(ssid,key, 1, 0);





    //Test :
    save_identification_informations(ssid, key);

}



/*
 * Save identification informations in argument (SSID/password) into a .txt file stored in the SD card
 * Special symbol between the SSID and the password (------) to avoid the use of \r (could bring problems while sending AT commands)
 * Return 0 if success, 1 otherwise
 */
int save_identification_informations(char* ssid, char* key){


//We delete the file identifiants.txt in order to erase the previous identification information saved if needed

	WiFi_Status_t status = WiFi_MODULE_SUCCESS;

	Reset_AT_CMD_Buffer();
	sprintf((char*)WiFi_AT_Cmd_Buff,"AT+S.FSD=0:/identifiants.txt\r");
	status = USART_Transmit_AT_Cmd(strlen((char*)WiFi_AT_Cmd_Buff));
	if(status == WiFi_MODULE_SUCCESS)
	{
		status = USART_Receive_AT_Resp( );
	}



//We create (or re-create) the identifiants.txt file with both arguments passed in argument

	status = WiFi_MODULE_SUCCESS;

	char *stringSaved = malloc(300);
	strcpy(stringSaved, ssid);
	strcat(stringSaved, "------");
	strcat(stringSaved, key);

	printf("StringSaved : %s", stringSaved);




	Reset_AT_CMD_Buffer();
	sprintf((char*)WiFi_AT_Cmd_Buff, AT_CREATE_FILE, "0:/identifiants.txt",strlen(stringSaved));
	status = USART_Transmit_AT_Cmd(strlen((char*)WiFi_AT_Cmd_Buff));
	if(status == WiFi_MODULE_SUCCESS)
	{
		status = USART_Receive_AT_Resp( );
	}



	sprintf((char*)WiFi_AT_Cmd_Buff,stringSaved);
	status = USART_Transmit_AT_Cmd(strlen((char*)WiFi_AT_Cmd_Buff));
	if(status == WiFi_MODULE_SUCCESS)
	{
		status = USART_Receive_AT_Resp( );
	}



	if(status == WiFi_MODULE_SUCCESS)
	{
		return 0;
	}
	else{
		return 1;
	}


}




/*
 * Connect to a defined network using connection informations provided
 */
void se_connecter_au_reseau_wifi(char* ssid, char* key){


	printf("\rOn est dans la fonction se connecter au wifi...\r\n");

	if (strcmp(ssid,"nicopucewifi") ==0){

		printf("\rAvec les bons param...\r\n");

	}
	else{

		printf("\rSans bon param...\r\n");

	}

}
