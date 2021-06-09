AblyRealtime ably = new AblyRealtime("ABLY_API_KEY");

Channel channel = ably.channels.get("device:rocket:1");
channel.publish("action", "{ \"task\": \"enable-thrusters\" }");