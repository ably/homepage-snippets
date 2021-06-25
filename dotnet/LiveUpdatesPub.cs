IRealtimeChannel channel = ably.Channels.Get("newcoin:usd");
channel.Publish("rate",
    new Change { Price = price, Time = pricedAt });
