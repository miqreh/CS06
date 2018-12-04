/*
 * Manage the connection to the network --> from the Access Point mode to the connected state to the customer's network
 */
#include "main.h"
#include "stdio.h"
#include "string.h"
#include "wifi_module.h"
#include "wifi_globals.h"
#include "config_wifi.h"




int flag_ssid_password = 0;
char ssid_connect[100];
char key_connect[100];


/*
 * Launch of the process to connect the STM to the customer network
 * It starts by using MiniAP mode to gather connection information and then connect to the user's network
 * Return 0 if success, 1 otherwise
 */
int launch_config_wifi(){

    //Launch of the MiniAP mode --> opened network

	char* ssid_AP = "Arroseur";
	char* key_AP = "1996555555";


	wifi_ap_start(ssid_AP,key_AP, 1, 0);

    //save_identification_informations(ssid, key);



	//connect_to_local_network();
	//deconnect_to_local_network();


	//char* wifi_mode_current = "";

	//Read_WiFi_Mode(wifi_mode_current);


	//HAL_Delay(500);


	//printf("\rWifi mode depuis config wifi = %s\n", wifi_mode_current);



    return 0;

}




void message_from_html_post(char* message){

	printf("\r\nMessage from HTML post %s\r\n", message);

	if(flag_ssid_password==0){

		strcpy(ssid_connect,message);

		flag_ssid_password=1;

	}
	else{

		strcpy(key_connect,message);
		flag_ssid_password=0;
		connect_to_local_network();
	}

}



/*
 * Connect to the local network using the ssid and key passed in argument
 */
int connect_to_local_network(){

	int length = strlen(ssid_connect);

	 ssid_connect[length-2] = 0;
	 ssid_connect[length-1] = 0;
	 key_connect[length-1] = 0;
	 key_connect[length-2] = 0;
/*
	int i;
	for (i=0; i<length+3; i++)
	{
		printf("\r\n%d -- %d", i,ssid_connect[i]);
	};


	char* test="iPhoneDeJeremy";
	char* test2="jeremeni";

		for (i=0; i<20; i++)
		{
			printf("\r\n%d -- %d", i,test[i]);
		};



	printf("\r\n%s--%s", ssid_connect,key_connect);
*/


	printf("\r\nReturn wifi connect : %d",wifi_connect(ssid_connect, key_connect,2));
/*
	if(wifi_connect(test, test2,2)==WiFi_MODULE_SUCCESS){

		printf("\r\nConnexion reussie");
		HAL_Delay(1000);

		Save_Current_Setting();


		return 0;
	}
	else{

		printf("\r\nConnexion echouee");

	}

*/
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








