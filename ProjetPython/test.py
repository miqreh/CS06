import paho.mqtt.client as MQTT
import schedule

import datetime
import time

import config
ClientID="Test"
client = MQTT.Client(ClientID,transport='websockets') #create new instance
client.connect(config.broker_address,config.portWS) #connect to broker
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
    client.publish(config.topicMonitoring,msg,config.QoS)


def declencherArrosage():
    message="Manuel"
    info = client.publish(config.topicDeclenchement,message,config.QoS)
   # client.loop()
    log(message,config.topicDeclenchement)
    print(info)


def programmerArrosage():
    #récupérer infos de la bdd
    programme=0
    #les traiter


nombre =10
while (1):

    client.publish(config.topicProgrammation, nombre,config.QoS)
    print("sleep\r\n")
    time.sleep(5)
    nombre += 10
    print(nombre)
    if(nombre > 200):
        nombre=0


