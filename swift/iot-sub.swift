mqttClient.subscribe("device:thermostat:bedroom")
mqttClient.on('message') { topic, message in
  if topic == "action" {
    thermostat.processInstruction(message)
  }
}
