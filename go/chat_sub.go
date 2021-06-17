// Subscribe to presence events (people entering and leaving) on the channel
unsubscribeAllPresence, err := channel.Presence.SubscribeAll(context.Background(), func(msg *ably.PresenceMessage) {
	if msg.Action == proto.PresenceEnter {
		fmt.Printf("%v has entered the chat\n", msg.ClientID)
	} else if msg.Action == proto.PresenceLeave {
		fmt.Printf("%v has left the chat\n", msg.ClientID)
	}
})

if err != nil {
	err := fmt.Errorf("error subscribing to presence in channel: %w", err)
	fmt.Println(err)
}

defer unsubscribeAllPresence()

// Subscribe to all messages sent on the channel
unsubscribeAll, err := channel.SubscribeAll(context.Background(), func(msg *ably.Message) {
	fmt.Printf("Received message from %v: "%v"\n", msg.ClientID, msg.Data)
})

if err != nil {
	err := fmt.Errorf("error subscribing to channel: %w", err)
	fmt.Println(err)
}

defer unsubscribeAll()