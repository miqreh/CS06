##Configuration
# broker MQTT
broker_address = "89.156.159.82"
#broker_address="test.mosquitto.org"
ClientID = "RaspberryArroseur"
# Topics pour envoyer des ordres à la nucleo
topicDeclenchement = "CS06/arroseur/declenchement"
topicArret="CS06/arroseur/arret"
topicProgrammation = "arroseur/programmation"

#Topics pour recevoir des commandes du site web

topicDeclenchementManuel = "raspberry/declenchementManuel"
topicArretManuel = "raspberry/arretManuel"
topicNouveauPlanning = "raspberry/maj"

# Topic de monitoring
topicMonitoring = "CS06/arroseur/monitoring"

# tag pour les jobs
tag = "plannings"
portWS =9001
QoS = 2
# 0 - at most once
# 1 - at least once
# 2 - exactly once

