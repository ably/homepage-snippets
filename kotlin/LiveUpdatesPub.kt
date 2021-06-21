val channel = ably.channels.get("dogecoin:usd")
val msg = String.format("{ \"price\": %d, \"time\": \"%s\" }", price, pricedAt)
channel.publish("rate", msg)
