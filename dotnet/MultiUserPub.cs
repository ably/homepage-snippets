IRealtimeChannel channel = ably.Channels.Get(
    "doc:mars-launch-plan");

channel.Publish("update", new Update { 
    Pos = charAt, 
    Insert = "Send Grimes first" });
