Channel channel = ably.channels.get("dogecoin:usd");
channel.publish("rate", String.format("{ \"price\": %d, \"time\": \"%s\" }", price, pricedAt));