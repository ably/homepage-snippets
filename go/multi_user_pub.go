channel := client.Channels.Get("doc:mars-launch-plan")
channel.Publish(context.Background(), "update", map[string]string{ "pos": "charAt", "insert": "Send Grimes first" })