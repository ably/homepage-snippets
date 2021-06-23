channel := client.Channels.Get("driver:elon")
channel.Publish(ctx, "position", Position{
	Lat:     lat,
	Long:    long,
	Bearing: "nw",
})
