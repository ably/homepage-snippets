Channel channel = ably.channels.get("device:rocket:1");
channel.publish("action", "{ \"task\": \"enable-thrusters\" }");