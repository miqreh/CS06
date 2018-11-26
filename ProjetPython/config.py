##Configuration
# broker MQTT
broker_address = "89.156.159.82"
ClientID = "RaspberryArroseur"
# Topics
topicDeclenchement = "arroseur/declenchement"
topicProgrammation = "arroseur/programmation"
topicMonitoring = "arroseur/monitoring"

# tag pour les jobs
tag = "plannings"
portWS =9001
QoS = 2
# 0 - at most once
# 1 - at least once
# 2 - exactly once
# ouvrir le client MQTT
