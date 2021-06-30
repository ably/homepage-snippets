Channel channel = ably.channels.get("newcoin:usd");
channel.publish("rate", JsonUtils.object()
  .add("price", price)
  .add("time", pricedAt)
  .toJson());
