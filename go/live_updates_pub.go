channel := client.Channels.Get("dogecoin:usd")
channel.Publish(context.Background(), "rate", map[string]string{ "price": 2, "time": 543564332 })