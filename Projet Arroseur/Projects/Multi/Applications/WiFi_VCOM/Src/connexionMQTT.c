#include "connexionMQTT.h"
#include "wifi_module.h"
#include "wifi_globals.h"

/*AT+S.MQTTCONN=test.mosquitto.org,8080,/mqtt,,,,SPWF04S,,,,,*/

WiFi_Status_t connexion_MQTT(char *host,char *port)
{
  WiFi_Status_t status = WiFi_MODULE_SUCCESS;
  Reset_AT_CMD_Buffer();


  sprintf((char*)WiFi_AT_Cmd_Buff,"AT+S.MQTTCONN=%s,%s,,,,,SPWF04S,,,,,\r",host,port);

  status = USART_Transmit_AT_Cmd(strlen((char*)WiFi_AT_Cmd_Buff));
  if(status == WiFi_MODULE_SUCCESS)
    {
	  mqtt_type = CONNECT;
      status = USART_Receive_AT_Resp( );
    }

  /* AT&W :Save the settings on the flash memory */
  Reset_AT_CMD_Buffer();
  Save_Current_Setting();

  return status;
}

/*WiFi_Status_t diconnect_MQTT(void)
{
	mqtt_type = DISCONNECT;
}*/
/*AT+S.MQTTSUB=0,<topic>,[<QoS>]<cr>*/
WiFi_Status_t subscribe_topic_MQTT(char *topic, char *qos)
{
	WiFi_Status_t status = WiFi_MODULE_SUCCESS;
		  Reset_AT_CMD_Buffer();


		  sprintf((char*)WiFi_AT_Cmd_Buff,"AT+S.MQTTSUB=0,%s,%s\r",topic,qos);

		  status = USART_Transmit_AT_Cmd(strlen((char*)WiFi_AT_Cmd_Buff));
		  if(status == WiFi_MODULE_SUCCESS)
		    {
		      status = USART_Receive_AT_Resp( );
		      mqtt_type = SUBSCRIBE;
		    }

		  /* AT&W :Save the settings on the flash memory */
		  Reset_AT_CMD_Buffer();
		  Save_Current_Setting();

		  return status;
}
/*
WiFi_Status_t unsubscribe_topic_MQTT(char *topic)
{

}*/
/*AT+S.MQTTPUB=0,<Topic>,[<QoS>],[<RetainedFlag>],<Len><cr>{data}
•Configuration parameters
•<Topic> Topic where the message is published
•<QoS> Default: 0. Values Range: 0->at most once delivery; 1-> at least one delivery; 2-> exactly one delivery
•<Retained flag> Default: 0. Possible values: 0->do not retain, 1 -> retain
•<Len> MQTT message length*/
WiFi_Status_t publish_topic_MQTT(char *topic, char* msg , char *qos)
{
	 WiFi_Status_t status = WiFi_MODULE_SUCCESS;
	  Reset_AT_CMD_Buffer();


	  sprintf((char*)WiFi_AT_Cmd_Buff,"AT+S.MQTTPUB=0,%s,%s,1,%d %s\r",topic,qos,strlen(msg),msg);

	  status = USART_Transmit_AT_Cmd(strlen((char*)WiFi_AT_Cmd_Buff));
	  if(status == WiFi_MODULE_SUCCESS)
	    {
	      status = USART_Receive_AT_Resp( );
	      mqtt_type = PUBLISH;
	    }

	  /* AT&W :Save the settings on the flash memory */
	  Reset_AT_CMD_Buffer();
	  Save_Current_Setting();

	  return status;
}


