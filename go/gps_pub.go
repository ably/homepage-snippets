client, err := ably.NewRealtime(ably.WithKey("ABLY_API_KEY"))
channel := client.Channels.Get('driver:elon')
err = channel.Publish(context.Background(), 'position', "{ 'lat': 65, 'long': 98, 'bearing': 'nw' }")
if err != nil {
	err := fmt.Errorf("error publishing to channel: %w", err)
	fmt.Println(err)
}