AblyRealtime ably = new AblyRealtime("ABLY_API_KEY");

String time = Date.from(Instant.now()).toString();
int price = 1000;

Channel channel = ably.channels.get("dogecoin:usd");
channel.publish("rate", String.format("{ \"price\": %d, \"time\": \"%s\" }", price, time));