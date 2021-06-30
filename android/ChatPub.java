Channel channel = ably.channels.get("room:yoga-wednesdays");
channel.presence.enter("Alex entered the chat", null);
channel.publish("msg", JsonUtils.object()
  .add("user", "alex")
  .add("message", "Is yoga on this week?")
  .toJson());
