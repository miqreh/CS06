
//#include "main.h"
#include "stdio.h"
#include "string.h"
#include "wifi_module.h"
#include "wifi_globals.h"
#include "wifi_interface.h"
#include "config_wifi.h"


//uint8_t MQTT_connected=0;

WiFi_Status_t connexion_MQTT(char *host,uint32_t port);
WiFi_Status_t subscribe_topic_MQTT(char *topic, char *qos);
WiFi_Status_t publish_topic_MQTT(char *topic, char *qos, char *msg);
void configuration_MQTT(void);
void supprimer_characteres(char * str,uint8_t nombre,uint8_t position);
