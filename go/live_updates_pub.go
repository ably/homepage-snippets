client, err := ably.NewRealtime(ably.WithKey("ABLY_API_KEY"))
channel := client.Channels.Get('dogecoin:usd')
err = channel.Publish(context.Background(), 'rate', "{ 'price': 2, 'time': 543564332 }")
if err != nil {
	err := fmt.Errorf("error publishing to channel: %w", err)
	fmt.Println(err)
}