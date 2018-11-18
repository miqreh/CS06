#include "wifi_module.h"
#include "wifi_globals.h"


#define BAUDRATE 115200
#define SSID "Honor229"
#define PWD "stephane"


/*Configuration MQTT*/
#define MQTT_HOST "89.156.159.82"
//#define MQTT_HOST "test.mosquittto.org"
#define MQTT_PWD  ""
//#define MQTT_PORT  8080
#define MQTT_PORT  "9001"
#define MQTT_QOS  "0"
#define ARROSEUR_TOPIC "test/stef"

WiFi_Status_t connexion_MQTT(char *host,char*port);
WiFi_Status_t diconnect_MQTT(void);
WiFi_Status_t subscribe_topic_MQTT(char *topic, char *qos);
WiFi_Status_t publish_topic_MQTT(char *topic, char* msg , char *qos);
WiFi_Status_t unsubscribe_topic_MQTT(char *topic);
