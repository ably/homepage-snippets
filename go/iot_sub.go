// Subscribe to messages sent on the channel with given eventName
channel.Subscribe(context.Background(), "device:rocket:1", func(msg *ably.Message) {
	rocket.ProcessInstruction(msg.Data)
})