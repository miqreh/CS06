import paho.mqtt.client as MQTT

#ouvrir le client MQTT

# fonction Refresh_database : Regarder sur le topic si la base de de donnée a été mise à jour , si oui copier les données,, sinon rien
# Job pour appeler refresh_database toutes les heures

#on receive d'un message mqtt du topic Arroseur/database/ appeler Refresh database

#Objet avec différents plannings.

#ajoute  ces plannings.

#les exécute

#For each result in database, ajouter au cheduler puis j'exécute le code


broker_address="89.156.159.82"
#broker_address="test.mosquitto.org"
#broker_address="iot.eclipse.org" #use external broker
client = MQTT.Client("P1") #create new instance
client.connect(broker_address) #connect to broker
a=client.publish("test/stef","OFF")#publish
b=client.publish("home/main","oui")
print("1")
print(a)
print(b)

