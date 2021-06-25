IRealtimeChannel channel = ably.Channels.Get(
    "room:tesla-fans");

channel.Publish(
    "msg",
    new Message { user = "elon", message = "Hello fans" });
