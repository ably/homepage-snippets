Channel channel = ably.channels.get("room:tesla-fans");
channel.presence.enter("Elon entered channel", null);
Map payload = new HashMap<String, String>();
payload.put("user", "elon");
payload.put("message", "Hello fans");
channel.publish("msg", payload);