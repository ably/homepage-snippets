channel := client.Channels.Get("device:rocket:1")
channel.Publish(ctx, "action", Action{Task: "enable-thrusters"})
