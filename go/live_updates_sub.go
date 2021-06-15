// Subscribe to messages sent on the channel with given eventName
unsubscribe, err := channel.Subscribe(context.Background(), "rate", func(msg *ably.Message) {
	fmt.Printf("Received message from %v: '%v'\n", msg.ClientID, msg.Data)
})

defer unsubscribe()
if err != nil {
	err := fmt.Errorf("error subscribing to channel: %w", err)
	fmt.Println(err)
}