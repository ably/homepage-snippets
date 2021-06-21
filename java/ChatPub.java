Channel channel = ably.channels.get("room:tesla-fans");
channel.presence.enter(null, null);
Map payload = new HashMap<String, String>();
payload.put("user", "elon");
payload.put("message", "Hello fans");
channel.publish("msg", payload);