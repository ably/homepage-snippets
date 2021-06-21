client, _ := ably.NewRealtime(ably.WithKey("ABLY_API_KEY"))
channel := client.Channels.Get("room:tesla-fans")
channel.Presence.Enter(context.Background(), UserName + " entered the channel")
channel.Publish(context.Background(), "msg", map[string]string{"user": "elon", "message": "Hello fans"})
