let channel = ably.channels.get("room:tesla-fans")
channel.presence.enterClient("Elon", data: "Hello everyone!")
channel.publish("msg", data: [ "user": "Elon", "message": "Hello fans" ])
