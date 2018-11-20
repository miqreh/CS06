import paho.mqtt.client as MQTT
import schedule

import datetime
import time

##Configuration
#broker MQTT
broker_address="89.156.159.82"
ClientID="RaspberryArroseur2"
#Topics
topicDeclenchement="arroseur/declenchement"
topicMonitoring="arroseur/monitoring"
topicProgrammation="arroseur/programmation"

port =9001

QoS=2
   #0 - at most once
   #1 - at least once
   #2 - exactly once
#ouvrir le client MQTT
client = MQTT.Client(ClientID,transport='websockets') #create new instance
client.connect(broker_address,port) #connect to broker
client.loop_start()

def on_message(client, userdata, msg):
    print(msg.topic+" "+str(msg.payload))
    if(msg.payload=="Manuel"):
        declencherArrosage()


def log(message,topic=""):
    now = datetime.datetime.now()
    msg=""
    if(topic != ""):
        msg +="\r\nTopic: "+topic
    msg+="\r\nMessage: "+message+"\r\n le "+str(now)
    print(msg)
    client.publish(topicMonitoring,msg,QoS)


def declencherArrosage():
    message="Manuel"
    info = client.publish(topicDeclenchement,message,QoS)
   # client.loop()
    log(message,topicDeclenchement)
    print(info)


def programmerArrosage():
    #récupérer infos de la bdd
    programme=0
    #les traiter


nombre =10
while (1):

    client.publish(topicProgrammation, nombre, QoS)
    print(nombre)
    time.sleep(30)
    nombre += 10
    if(nombre > 200):
        nombre=0


