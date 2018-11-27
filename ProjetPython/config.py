##Configuration
# broker MQTT
#broker_address = "89.156.159.82"
broker_address="localhost"
ClientID = "RaspberryArroseur"
# Topics pour envoyer des ordres à la nucleo
topicDeclenchement = "arroseur/declenchement"
topicArret="arroseur/arret"
topicProgrammation = "arroseur/programmation"

#Topics pour recevoir des commandes du site web

topicDeclenchementManuel = "raspberry/declenchementManuel"
topicArretManuel = "raspberry/arretManuel"
topicNouveauPlanning = "raspberry/maj"

# Topic de monitoring
topicMonitoring = "monitoring"

# tag pour les jobs
tag = "plannings"
portWS =9001
QoS = 2
# 0 - at most once
# 1 - at least once
# 2 - exactly once
# ouvrir le client MQTT
