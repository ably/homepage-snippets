channel := client.Channels.Get("device:thermostat:bedroom")
channel.Publish(ctx, "action", Action{
	Type:  "temperature",
	Value: 70,
})
