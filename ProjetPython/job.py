import paho.mqtt.client as MQTT

#Publier un message d'all


broker_address="89.156.159.82"
#broker_address="iot.eclipse.org" #use external broker
client = MQTT.Client("P1") #create new instance
client.connect(broker_address) #connect to broker
client.publish("house/main-light","OFF")#publish
print("1")


