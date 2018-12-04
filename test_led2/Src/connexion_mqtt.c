
#include "connexion_mqtt.h"
#include "string.h"
#include "wifi_module.h"
#include "wifi_globals.h"
#include "wifi_interface.h"
#include "config_wifi.h"
/** DEFINE à inclure dans mon ficier MQTT**/
#define TOPIC_DECLENCHEMENT "CS06/arroseur/declenchement"
#define TOPIC_ARRET "CS06/arroseur/arret"
#define TOPIC_MONITORING "CS06/arroseur/monitoring"
#define MQTT_HOST "89.156.159.82"
#define MQTT_PORT 9001
#define QOS "0"
uint8_t MQTT_connected=0;

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



