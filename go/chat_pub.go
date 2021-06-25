channel := client.Channels.Get("room:yoga-wednesdays")
channel.Presence.Enter(ctx, "Alex entered the chat")
channel.Publish(ctx, "msg", Message{
	User:    "alex",
	Message: "Is yoga on this week?",
})
