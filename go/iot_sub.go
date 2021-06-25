handler := func(_ mqtt.Client, msg mqtt.Message) {
	if msg.Topic() == "action" {
		thermostat.ProcessInstruction(msg.Payload())
	}
}
mqttClient.Subscribe("device:thermostat:bedroom", mqtt.EXACTLY_ONCE, handler)
