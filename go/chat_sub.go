// Subscribe to presence events (people entering and leaving) on the channel
channel.Presence.SubscribeAll(context.Background(), func(msg *ably.PresenceMessage) {
	if msg.Action == proto.PresenceEnter {
		showMemberEntered(msg)
	} else if msg.Action == proto.PresenceLeave {
		showMemberLeft(msg)
	}
})

// Subscribe to all messages sent on the channel
channel.SubscribeAll(context.Background(), func(msg *ably.Message) {
	   appendToConversation(msg.Data)
})
