let channel = ably.channels.get("dogecoin:usd")
channel.subscribe("rate", callback: { [weak self] message in
    guard let data = message.data as? [String : Any] else { return print("Unknown data format.") }
    self?.appendMetric(data)
})
