Channel channel = ably.channels.get("doc:mars-launch-plan");
channel.publish("update", JsonUtils.object()
    .add("pos", charAt)
    .add("insert", "Send Grimes first")
    .toJson());
