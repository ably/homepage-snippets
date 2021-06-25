IRealtimeChannel channel = ably.Channels.Get(
    "room:yoga-wednesdays");

channel.Publish(
    "msg",
    new Message { user = "alex", message = "Hello fans" });
