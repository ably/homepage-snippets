channel := client.Channels.Get("room:yoga-wednesdays")
channel.Presence.Enter(ctx, "Elon entered the channel")
channel.Publish(ctx, "msg", Message{
	User:    "elon",
	Message: "Hello fans",
})
