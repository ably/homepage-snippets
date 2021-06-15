client, err := ably.NewRealtime(ably.WithKey("ABLY_API_KEY"))
channel := client.Channels.Get('room:tesla-fans')
pErr := channel.Presence.Enter(context.Background(), UserName + " entered the channel")
if pErr != nil {
	err := fmt.Errorf("error with enter presence on the channel %w", pErr)
	fmt.Println(err)
}
err = channel.Publish(context.Background(), 'msg', "{'user': 'elon', 'message': 'Hello fans'}")
if err != nil {
	err := fmt.Errorf("error publishing to channel: %w", err)
	fmt.Println(err)
}
