Channel channel = ably.channels.get("newcoin:usd");
channel.subscribe("rate", msg -> chart.appendMetric(msg.data));
