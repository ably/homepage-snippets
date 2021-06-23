let channel = ably.channels.get("doc:mars-launch-plan")
let msg = [ "pos": charAt, "insert": "Send Grimes first" ]
channel.publish("update", data: msg)
