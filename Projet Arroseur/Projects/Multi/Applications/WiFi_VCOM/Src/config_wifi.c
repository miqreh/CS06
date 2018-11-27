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

    //Launch of the MiniAP mode --> opened network

	char* ssid = "Arroseur";
	char* key = "1996555555";


	//wifi_ap_start(ssid,key, 1, 0);

    //save_identification_informations(ssid, key);



	//connect_to_local_network(ssid, key);
	//deconnect_to_local_network();


	char* wifi_mode_current = "";

	Read_WiFi_Mode(wifi_mode_current);


	HAL_Delay(500);


	printf("\rWifi mode depuis config wifi = %s\n", wifi_mode_current);



    return 0;

}





/*
 * Connect to the local network using the ssid and key passed in argument
 */
int connect_to_local_network(char* ssid, char* key){

	if(wifi_connect(ssid, key,2)==WiFi_MODULE_SUCCESS){
		return 0;
	}


	HAL_Delay(1000);

	Save_Current_Setting();

	return 1;
}




/*
 * Disconnect to the local network and restore factory value wifi settings
 */
int deconnect_to_local_network(){

	wifi_disconnect();
	HAL_Delay(1000);
	wifi_restore();
	HAL_Delay(1000);
	Save_Current_Setting();
	return 0;

}








