IRealtimeChannel channel = ably.Channels.Get(
    "device:thermostat:bedroom");
channel.Publish("action",
    new Action { Type = "temperature", Value = 70 });
