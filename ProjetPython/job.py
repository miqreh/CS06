import paho.mqtt.client as MQTT
import schedule
import database
import datetime


##Configuration
#broker MQTT
broker_address="89.156.159.82"

#Topics
topicDeclenchement="arroseur/declenchement"
topicMonitoring="arroseur/monitoring"


QoS=2
   #0 - at most once
   #1 - at least once
   #2 - exactly once
#ouvrir le client MQTT
client = MQTT.Client("P1") #create new instance
client.connect(broker_address) #connect to broker



def log(topic,message):
    now = datetime.datetime.now()
    msg="\r\nTopic: "+topic+"\r\nMessage:"+message+"\r\n le "+str(now)
    print(msg)
    client.publish(topicMonitoring,msg)
def log(message):
    now = datetime.datetime.now()
    msg = "\r\nMessage:" + message + "\r\n le " + str(now)
    print(msg)
    client.publish(topicMonitoring, msg)

def declencherArrosage:

    message="Manuel"
    client.publish(topicDeclenchement,message,QoS)

# fonction Refresh_database : Regarder sur le topic si la base de de donnée a été mise à jour , si oui copier les données,, sinon rien
# Job pour appeler refresh_database toutes les heures

#on receive d'un message mqtt du topic Arroseur/database/ appeler Refresh database

#Objet avec différents plannings.

#ajoute  ces plannings.

#les exécute

#For each result in database, ajouter au scheduler puis j'exécute le code



#broker_address="test.mosquitto.org"
#broker_address="iot.eclipse.org" #use external broker

a=client.publish("test/stef","OFF")#publish
b=client.publish("home/main","oui")
print("1")
print(a)
print(b)

