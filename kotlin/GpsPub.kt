val channel = ably.channels.get("driver:elon")
val msg = "{ \"lat\": 10.1233, \"long\": 12.22, \"bearing\": \"nw\" }"
channel.publish("position", msg)
