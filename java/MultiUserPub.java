Channel channel = ably.channels.get("doc:mars-launch-plan");
Map payload = new HashMap<String, Object>();
payload.put("pos", charAt);
payload.put("insert", "Send Grimes first");
channel.publish("update", payload);