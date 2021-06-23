handler := func(_ mqtt.Client, msg mqtt.Message) {
	if msg.Topic() == "action" {
		rocket.ProcessInstruction(msg.Payload())
	}
}
mqttClient.Subscribe("device:rocket:1", mqtt.EXACTLY_ONCE, handler)
