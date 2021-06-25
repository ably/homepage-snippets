let channel = ably.channels.get("doc:mars-launch-plan")
let msg = [ "pos": charAt, "insert": "What about fuel?" ]
channel.publish("update", data: msg)
