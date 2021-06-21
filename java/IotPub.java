Channel channel = ably.channels.get("device:rocket:1");
Map payload = new HashMap<String, String>();
payload.put("task", "enable-thrusters");
channel.publish("action", payload);