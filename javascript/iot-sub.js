mqttClient.subscribe('device:thermostat:bedroom');
mqttClient.on('message', (topic, message) => {
  if (topic === 'action') {
    thermostat.processInstruction(JSON.parse(message));
  }
});
