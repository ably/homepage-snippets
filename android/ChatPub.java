Channel channel = ably.channels.get("room:tesla-fans");
channel.presence.enter("Elon entered the channel", null);
channel.publish("msg", JsonUtils.object()
    .add("user", "elon")
    .add("message", "Hello fans")
    .toJson());
