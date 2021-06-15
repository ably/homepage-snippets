// Subscribe to presence events (people entering and leaving) on the channel
unsubscribeAllPresence, pErr := channel.Presence.SubscribeAll(context.Background(), func(msg *ably.PresenceMessage) {
	if msg.Action == proto.PresenceEnter {
		fmt.Printf("%v has entered the chat\n", msg.ClientID)
	} else if msg.Action == proto.PresenceLeave {
		fmt.Printf("%v has left the chat\n", msg.ClientID)
	}
})
defer unsubscribeAllPresence()

if pErr != nil {
	err := fmt.Errorf("error subscribing to presence in channel: %w", pErr)
	fmt.Println(err)
}

// Subscribe to all messages sent on the channel
unsubscribeAll, err := channel.SubscribeAll(context.Background(), func(msg *ably.Message) {
	fmt.Printf("Received message from %v: '%v'\n", msg.ClientID, msg.Data)
})

defer unsubscribeAll()
if err != nil {
	err := fmt.Errorf("error subscribing to channel: %w", err)
	fmt.Println(err)
}