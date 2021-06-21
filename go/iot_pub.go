client, _ := ably.NewRealtime(ably.WithKey("ABLY_API_KEY"))
channel := client.Channels.Get("device:rocket:1")
channel.Publish(context.Background(), "action", map[string]string{ "task": "enable-thrusters" })