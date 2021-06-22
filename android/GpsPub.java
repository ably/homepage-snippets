Channel channel = ably.channels.get("driver:elon");
Map payload = new HashMap<String, Object>();
payload.put("lat", 10.1233);
payload.put("long", 12.22);
payload.put("bearing", "nw");
channel.publish("position", payload);