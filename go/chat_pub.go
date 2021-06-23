channel := client.Channels.Get("room:tesla-fans")
channel.Presence.Enter(ctx, "Elon entered the channel")
channel.Publish(ctx, "msg", Message{
	User:    "elon",
	Message: "Hello fans",
})
