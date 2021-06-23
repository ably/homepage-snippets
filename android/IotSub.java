mqttClient.subscribe("device:rocket:1", (topic, msg) -> {
    if(topic == "action") {
        rocket.processInstruction(msg.getPayload());
    }
});
