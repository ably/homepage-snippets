mqttClient.subscribe('device:rocket:1');
mqttClient.on('message', (topic, message) => {
  if (topic === 'action') {
    rocket.processInstruction(JSON.parse(message));
  }
});
