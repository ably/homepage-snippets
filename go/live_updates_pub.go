channel := client.Channels.Get("dogecoin:usd")
channel.Publish(context.Background(), "rate", map[string]int{ "price": 2, "time": 543564332 })