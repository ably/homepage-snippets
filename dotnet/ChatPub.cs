IRealtimeChannel channel = ably.Channels.Get(
  "room:yoga-wednesdays");
channel.Presence.Enter("Alex entered the chat");
channel.Publish(
  "msg",
  new Message { user = "alex", message = "Is yoga on this week?" });
