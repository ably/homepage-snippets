channel := client.Channels.Get("driver:elon")
err = channel.Publish(context.Background(), "position", map[string]interface{}{ "lat": 65, "long": 98, "bearing": "nw" })