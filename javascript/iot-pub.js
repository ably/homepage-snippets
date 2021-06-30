mqttClient.on('connect', function() {
  const measurement = { type: 'temperature', value: 70 }
  mqttClient.publish('device:thermostat:bedroom', measurement);
});
