Channel channel = ably.channels.get("driver:elon");
channel.publish("position", "{ \"lat\": 10.1233, \"long\": 12.22, \"bearing\": \"nw\" " }");