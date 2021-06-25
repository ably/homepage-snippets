channel := client.Channels.Get("driver:aardvark")
channel.Publish(ctx, "position", Position{
	Lat:     lat,
	Long:    long,
	Bearing: "nw",
})
