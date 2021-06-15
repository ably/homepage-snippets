client, err := ably.NewRealtime(ably.WithKey("ABLY_API_KEY"))
channel := client.Channels.Get('device:rocket:1')
err = channel.Publish(context.Background(), 'action', "{ 'task': 'enable-thrusters' }")
if err != nil {
	err := fmt.Errorf("error publishing to channel: %w", err)
	fmt.Println(err)
}