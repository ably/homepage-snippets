mqttClient.subscribe("device:rocket:1")
mqttClient.on('message') { topic, message in
   if topic == "action" {
      rocket.processInstruction(message)
   }
}
