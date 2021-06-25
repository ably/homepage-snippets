IRealtimeChannel channel = ably.Channels.Get(
    "room:yoga-wednesdays");

channel.Publish(
    "msg",
    new Message { user = "elon", message = "Hello fans" });
