channel := client.Channels.Get("doc:mars-launch-plan")
channel.Publish(ctx, "update", Update{
	Pos:    charAt,
	Insert: "Send Grimes first",
})
