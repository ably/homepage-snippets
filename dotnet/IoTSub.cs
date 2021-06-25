mqttClient.Subscribe("device:thermostat:bedroom");
mqttClient.On("message", (topic, message) => {
  if (topic == "action") {
    thermostat.ProcessInstruction(JSON.Parse(message));
  }
});
