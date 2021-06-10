AblyRealtime ably = new AblyRealtime("ABLY_API_KEY");

Channel channel = ably.channels.get("room:tesla-fans");
channel.presence.enter(null, null);
channel.publish("msg", "{ \"user\": \"elon\", \"message\": \"Hello fans\" }");