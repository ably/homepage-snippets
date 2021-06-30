Channel channel = ably.channels.get("driver:aardvark");
channel.publish("position", JsonUtils.object()
  .add("lat", latitude)
  .add("long", longitude)
  .add("bearing", "nw")
  .toJson());
