IRealtimeChannel channel = ably.Channels.Get(
    "device:rocket:1");

channel.Publish("action", new { Task = "enable-thrusters" });
