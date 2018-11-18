import paho.mqtt.client as MQTT
import schedule

import datetime
import time

##Configuration
#broker MQTT
broker_address="89.156.159.82"
ClientID="RaspberryArroseur"
#Topics
topicDeclenchement="arroseur/declenchement"
topicProgrammation="arroseur/programmation"
topicMonitoring="arroseur/monitoring"

#tag pour les jobs
tag="plannings"


QoS=2
   #0 - at most once
   #1 - at least once
   #2 - exactly once
#ouvrir le client MQTT
client = MQTT.Client(ClientID) #create new instance
client.connect(broker_address) #connect to broker

def on_message(client, userdata, msg):
    print(msg.topic+" "+str(msg.payload))
    if(msg.topic==topicDeclenchement):
        if(msg.payload=="Manuel"):
            declencherArrosage()
    elif(msg.topic==topicProgrammation):
       secondes= int(str(msg.payload).replace("b", "").replace("'", ""))
       programmerArrosage(secondes)

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
    log(message,topicDeclenchement)
    print(info)

def programmerArrosage(secondes):
    schedule.every(secondes).seconds.do(test).tag(tag)
    message="\r\n Arrosage programmé toutes les " + str(secondes) + " secondes"
    log(message)
    print(message)
    #les traiter

def clear_schedule():
    schedule.clear(tag)
    print("\r\nMise à jour de la base de données...")
    #refresh plannings à partir de la base de données

def test():
    print("\r\nexécution")


schedule.every(1).hour.do(clear_schedule)
client.subscribe([(topicDeclenchement , QoS) , (topicProgrammation , QoS)])
client.on_message = on_message


client.loop_start()

while(1):
    schedule.run_pending()
    print(schedule.jobs)
    time.sleep(1)

# fonction Refresh_database : Regarder sur le topic si la base de de donnée a été mise à jour , si oui copier les données,, sinon rien
# Job pour appeler refresh_database toutes les heures

#on receive d'un message mqtt du topic Arroseur/database/ appeler Refresh database

#Objet avec différents plannings.

#ajoute  ces plannings.

#les exécute

#For each result in database, ajouter au scheduler puis j'exécute le code



#broker_address="test.mosquitto.org"
#broker_address="iot.eclipse.org" #use external broker

