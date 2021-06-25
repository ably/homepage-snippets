Channel channel = ably.channels.get("room:yoga-wednesdays");
channel.presence.enter("Elon entered the channel", null);
channel.publish("msg", JsonUtils.object()
    .add("user", "alex")
    .add("message", "Hello fans")
    .toJson());
