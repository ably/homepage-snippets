Channel channel = ably.channels.get("device:thermostat:bedroom");
channel.publish("action", JsonUtils.object()
  .add("type", "temperature")
  .add("value", 70)
  .toJson());
