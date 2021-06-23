Channel channel = ably.channels.get("device:rocket:1");
channel.publish("action", JsonUtils.object()
    .add("action", "enable-thrusters")
    .toJson());
