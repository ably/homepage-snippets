val channel = ably.channels.get("doc:mars-launch-plan")
val msg = "{ \"pos\": 42, \"insert\": \"Send Grimes first\" }"
channel.publish("update", msg)
