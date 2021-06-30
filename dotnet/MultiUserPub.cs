IRealtimeChannel channel = ably.Channels.Get(
  "doc:mars-launch-plan");

channel.Publish("update", new Update {
  Pos = charAt,
  Insert = "What about fuel?" });
