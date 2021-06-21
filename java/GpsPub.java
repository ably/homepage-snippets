Channel channel = ably.channels.get("driver:elon");
String msg = "{ \"lat\": 10.1233, \"long\": 12.22, \"bearing\": \"nw\" }";
channel.publish("position", msg);