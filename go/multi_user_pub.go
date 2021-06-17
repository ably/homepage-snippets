client, err := ably.NewRealtime(ably.WithKey("ABLY_API_KEY"))
if err != nil {
	return err
}
channel := client.Channels.Get("doc:mars-launch-plan")
err = channel.Publish(context.Background(), "update", map[string]string{ "pos": "charAt", "insert": "Send Grimes first" })
if err != nil {
	err := fmt.Errorf("error publishing to channel: %w", err)
	fmt.Println(err)
}