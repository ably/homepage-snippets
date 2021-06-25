channel := client.Channels.Get("room:yoga-wednesdays")
channel.Presence.Enter(ctx, "Elon entered the channel")
channel.Publish(ctx, "msg", Message{
	User:    "alex",
	Message: "Is yoga on this week?",
})
