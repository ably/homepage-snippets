Channel channel = ably.channels.get("doc:mars-launch-plan");
String msg = "{ \"pos\": 42, \"insert\": \"Send Grimes first\" }";
channel.publish("update", msg);