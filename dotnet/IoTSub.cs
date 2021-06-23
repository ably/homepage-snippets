mqttClient.Subscribe("device:rocket:1");
mqttClient.On("message", (topic, message) => {
  if (topic == "action") {
    rocket.ProcessInstruction(JSON.Parse(message));
  }
});
