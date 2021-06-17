client, err := ably.NewRealtime(ably.WithKey("ABLY_API_KEY"))
if err != nil {
	return err
}
channel := client.Channels.Get("device:rocket:1")
err = channel.Publish(context.Background(), "action", map[string]string{ "task": "enable-thrusters" })
if err != nil {
	err := fmt.Errorf("error publishing to channel: %w", err)
	fmt.Println(err)
}