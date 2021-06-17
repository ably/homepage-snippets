let channel = ably.channels.get("driver:elon")
channel.subscribe("position", callback: { [weak self] message in
    guard let data = message.data as? [String : Any] else { return print("Unknown data format.") }
    self?.showMarker(data)
})
