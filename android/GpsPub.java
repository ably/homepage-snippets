Channel channel = ably.channels.get("driver:elon");
channel.publish("position", JsonUtils.object()
    .add("lat", latitude)
    .add("long", longitude)
    .add("bearing", "nw")
    .toJson());
