// Subscribe to messages sent on the channel with given eventName
channel.Subscribe(context.Background(), "position", func(msg *ably.Message) {
	showMarker(msg.Data)
})