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
    if msg.topic == config.topicDeclenchementManuel:
        declenchement_manuel(msg)
    elif msg.topic == config.topicArretManuel:
        eteindre_arrosage()
    elif msg.topic == config.topicNouveauPlanning:
        clear_schedule()


def log(message, topic="", client_mqtt=""):
    now = datetime.datetime.now()
    msg = ""

    if client_mqtt != "":
        msg += "\r\nClient:"
    if topic != "":
        msg += "\r\nTopic: " + topic
    msg += "\r\nMessage: " + message + "\r\n le " + str(now)
    print(msg)
    client.publish(config.topicMonitoring, msg, config.QoS)


def declencher_arrosage(zones):
    message = ""
    for zone,value in zones.items():
        message += zone +" : " + str(value) + "\r\n"

    info = client.publish(config.topicDeclenchement, message, config.QoS)
    log(message, config.topicDeclenchement)
    print(info)
   # return schedule.CancelJob()


def eteindre_arrosage():
    message = "Stop"
    info = client.publish(config.topicArret, message, config.QoS)
    log(message, config.topicArret)
    print(info)
    #return schedule.CancelJob()


def programmer_arrosage(day,hour,zones,duree):

    hour_start = functions.timedelta_to_hour_str(hour)
    hour_stop = functions.timedelta_to_hour_str(hour + datetime.timedelta(minutes=duree))

    if day == 1:
        jour="lundi"
        schedule.every().monday.at(hour_start).do(declencher_arrosage, zones).tag(config.tag)
        schedule.every().monday.at(hour_stop).do(eteindre_arrosage).tag(config.tag)
    elif day == 2:
        jour="mardi"
        schedule.every().tuesday.at(hour_start).do(declencher_arrosage, zones).tag(config.tag)
        schedule.every().tuesday.at(hour_stop).do(eteindre_arrosage).tag(config.tag)
    elif day == 3:
        jour="mercredi"
        schedule.every().wednesday.at(hour_start).do(declencher_arrosage, zones).tag(config.tag)
        schedule.every().wednesday.at(hour_stop).do(eteindre_arrosage).tag(config.tag)
    elif day == 4:
        jour="jeudi"
        schedule.every().thursday.at(hour_start).do(declencher_arrosage, zones).tag(config.tag)
        schedule.every().thursday.at(hour_stop).do(eteindre_arrosage).tag(config.tag)
    elif day == 5:
        jour="vendredi"
        schedule.every().friday.at(hour_start).do(declencher_arrosage, zones).tag(config.tag)
        schedule.every().friday.at(hour_stop).do(eteindre_arrosage).tag(config.tag)
    elif day == 6:
        jour="samedi"
        schedule.every().saturday.at(hour_start).do(declencher_arrosage, zones).tag(config.tag)
        schedule.every().saturday.at(hour_stop).do(eteindre_arrosage).tag(config.tag)
    elif day == 7:
        jour="dimanche"
        schedule.every().sunday.at(hour_start).do(declencher_arrosage, zones).tag(config.tag)
        schedule.every().sunday.at(hour_stop).do(eteindre_arrosage).tag(config.tag)
    else:
        return

    message = "\r\n Arrosage programmé le " + str(jour) + " de " + hour_start+" juqsu'à "+ hour_stop
    log(message)
    print(message)
    # les traiter


# mettre à jour les plannings programmés
def clear_schedule():
    schedule.clear(config.tag)
    print("\r\nMise à jour de la base de données...")
    # refresh plannings à partir de la base de données
    refresh_from_database()




def refresh_from_database():
    # Query pour avoir tous les plannings
    #query = 'Select * From planning inner join zone on planning.idprog = zone.idprog where date_arrosage >= NOW()'
    # query ='SELECT * FROM planning INNER JOIN zone on planning.idprog = zone.idprog WHERE convert(CONCAT(date_arrosage," ",heure_debut),datetime) >= now()'
    query = 'SELECT * FROM planning INNER JOIN zone on planning.idprog = zone.idprog inner join jour on planning.idjour = jour.idjour'

    database.cursor.execute(query)
    results = database.cursor.fetchall()

    for d in results:
        print(d)
        hour = d['heure_debut']
        print(hour)
        day = d['jour.idjour']
        zones = {}
        zones["zone1"] = d['zone_1']
        zones["zone2"] = d['zone_2']
        zones["zone3"] = d['zone_3']
        print(zones)
        duree = d["duree"]

        programmer_arrosage(day,hour,zones,round(duree))


def declenchement_manuel(msg):
    #recuperer les zones du messages
    zones =""
    #declencher_arrosage(zones)
    print("declenchement_manuel\r\n")


# Mettre à jour les plannings programmés toutes les heures
schedule.every(10).seconds.do(clear_schedule)
clear_schedule()
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

