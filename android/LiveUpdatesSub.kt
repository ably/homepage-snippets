val channel = ably.channels.get("dogecoin:usd")
channel.subscribe("rate") { msg -> chart.appendMetric(msg.data) }
