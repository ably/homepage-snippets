channel := client.Channels.Get("device:rocket:1")
channel.Publish(context.Background(), "action", map[string]string{ "task": "enable-thrusters" })