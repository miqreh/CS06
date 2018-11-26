import paho.mqtt.client as MQTT
import schedule

import datetime
import time

##Configuration
# broker MQTT
broker_address = "89.156.159.82"
ClientID = "RaspberryArroseur"
# Topics
topicDeclenchement = "arroseur/declenchement"
topicProgrammation = "arroseur/programmation"
topicMonitoring = "arroseur/monitoring"
port =9001
# tag pour les jobs
tag = "plannings"

QoS = 0
# 0 - at most once
# 1 - at least once
# 2 - exactly once
# ouvrir le client MQTT
client = MQTT.Client(ClientID,transport='websockets')  # create new instance
client.connect(broker_address,port)  # connect to broker


def on_message(client_mqtt, userdata, msg):
    log(msg.payload, msg.topic, client_mqtt)
    print(msg.topic + " " + str(msg.payload))
    if msg.topic == config.topicDeclenchement:
        if msg.payload == "Manuel":
            declencher_arrosage()
    elif msg.topic == config.topicProgrammation:
        secondes = int(str(msg.payload).replace("b", "").replace("'", ""))
        programmer_arrosage(secondes)


def log(message, topic="", client_mqtt=""):
    now = datetime.datetime.now()
    msg = ""

    if client_mqtt != "":
        msg += "\r\nClient:"
    if topic != "":
        msg += "\r\nTopic: " + topic
    msg += "\r\nMessage: " + message + "\r\n le " + str(now)
    print(msg)
    config.client.publish(config.topicMonitoring, msg, config.QoS)


def declencher_arrosage():
    message = "Manuel"
    info = config.client.publish(config.topicDeclenchement, message, config.QoS)
    log(message, config.topicDeclenchement)
    print(info)


def programmer_arrosage(secondes):
    schedule.every(secondes).seconds.do(test).tag(config.tag)
    message = "\r\n Arrosage programmé toutes les " + str(secondes) + " secondes"
    log(message)
    print(message)
    # les traiter


# mettre à jour les plannings programmés
def clear_schedule():
    schedule.clear(config.tag)
    print("\r\nMise à jour de la base de données...")
    # refresh plannings à partir de la base de données
    refresh_from_database()

def test():
    print("\r\nexécution")
    return schedule.CancelJob()

def refresh_from_database():
    # Query pour avoir tous les plannings
    query = 'Select * From planning inner join zone on planning.idprog = zone.idprog where date_arrosage >= NOW()'
    results = database.cursor.fetchall()
    database.cursor.execute(query)
    for d in results:
        print(d)
        date = functions.date_to_datetime(d['date_arrosage'], d['heure_debut'])
        print(date)
        seconds = functions.seconds_remaining(date)
        print(seconds)
        programmer_arrosage(seconds)


# Mettre à jour les plannings programmés toutes les heures
schedule.every(30).seconds.do(clear_schedule)

# Souscription aux différents topics
client.subscribe([(topicDeclenchement, QoS), (topicProgrammation, QoS)])
client.subscribe(topicDeclenchement, QoS)
client.on_message = on_message

# Pour maintenir la connexion avec le broker
client.loop_start()

while 1:
    schedule.run_pending()
    #print(schedule.jobs)
    time.sleep(1)

# fonction Refresh_database : Regarder sur le topic si la base de de donnée a été mise à jour
#  si oui copier les données,, sinon rien
# Job pour appeler refresh_database toutes les heures

# on receive d'un message mqtt du topic Arroseur/database/ appeler Refresh database

# Objet avec différents plannings.

# ajoute  ces plannings.

# les exécute

# For each result in database, ajouter au scheduler puis j'exécute le code


# broker_address="test.mosquitto.org"
# broker_address="iot.eclipse.org" #use external broker
