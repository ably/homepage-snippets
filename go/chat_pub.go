client, err := ably.NewRealtime(ably.WithKey("ABLY_API_KEY"))
if err != nil {
	return err
}
channel := client.Channels.Get("room:tesla-fans")
err := channel.Presence.Enter(context.Background(), UserName + " entered the channel")
if err != nil {
	err := fmt.Errorf("error with enter presence on the channel %w", err)
	fmt.Println(err)
}
err = channel.Publish(context.Background(), "msg", map[string]string{"user": "elon", "message": "Hello fans"})
if err != nil {
	err := fmt.Errorf("error publishing to channel: %w", err)
	fmt.Println(err)
}
