// Subscribe to messages sent on the channel with given eventName
channel.Subscribe(context.Background(), "update", func(msg *ably.Message) {
	applyUpdate(msg.Data)
})