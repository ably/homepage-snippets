let channel = ably.channels.get("dogecoin:usd")
channel.publish("rate", data: [ "price": 1.01, "time": Date().timeIntervalSinceReferenceDate ])
