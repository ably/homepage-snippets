AblyRealtime ably = new AblyRealtime("ABLY_API_KEY");

Channel channel = ably.channels.get("doc:mars-launch-plan");
channel.publish("update", "{ \"pos\": 42, \"insert\": \"Send Grimes first\" }");