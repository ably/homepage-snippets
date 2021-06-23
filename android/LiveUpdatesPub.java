Channel channel = ably.channels.get("dogecoin:usd");
channel.publish("rate", JsonUtils.object()
    .add("price", price)
    .add("time", pricedAt)
    .toJson());
