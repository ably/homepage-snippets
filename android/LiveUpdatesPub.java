Channel channel = ably.channels.get("dogecoin:usd");
Map payload = new HashMap<String, Object>();
payload.put("price", price);
payload.put("time", pricedAt);
channel.publish("rate", payload);