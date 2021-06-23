channel := client.Channels.Get("dogecoin:usd")
channel.Publish(ctx, "rate", Rate{
	Price: price,
	Time:  pricedAt,
})
