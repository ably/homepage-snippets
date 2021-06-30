mqttClient.subscribe("device:thermostat:bedroom", (topic, msg) -> {
  if(topic == "action") {
    thermostat.processInstruction(msg.getPayload());
  }
});
