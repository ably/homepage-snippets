// Subscribe to messages sent on the channel with given eventName
channel.Subscribe(context.Background(), "rate", func(msg *ably.Message) {
	appendMetric(msg.Data)
})