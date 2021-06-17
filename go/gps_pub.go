client, err := ably.NewRealtime(ably.WithKey("ABLY_API_KEY"))
if err != nil {
	return err
}
channel := client.Channels.Get("driver:elon")
err = channel.Publish(context.Background(), "position", map[string]string{ "lat": 65, "long": 98, "bearing": "nw" })
if err != nil {
	err := fmt.Errorf("error publishing to channel: %w", err)
	fmt.Println(err)
}