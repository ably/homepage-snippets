client, err := ably.NewRealtime(ably.WithKey("ABLY_API_KEY"))
channel := client.Channels.Get('doc:mars-launch-plan')
err = channel.Publish(context.Background(), 'update', "{ 'pos': 'charAt', 'insert': 'Send Grimes first' }")
if err != nil {
	err := fmt.Errorf("error publishing to channel: %w", err)
	fmt.Println(err)
}