channel := client.Channels.Get("newcoin:usd")
channel.Publish(ctx, "rate", Rate{
	Price: price,
	Time:  pricedAt,
})
