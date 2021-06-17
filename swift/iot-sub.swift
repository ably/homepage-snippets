mqttClient.subscribe(toTopic: "device:rocket:1", at: .atMostOnce)

// Assume you use https://github.com/novastone-media/MQTT-Client-Framework
func newMessage(_ session: MQTTSession!,
                data: Data!,
                onTopic topic: String!,
                qos: MQTTQosLevel,
                retained: Bool,
                mid: UInt32) {
    if topic == "action" {
        processInstruction(data)
    }
}
