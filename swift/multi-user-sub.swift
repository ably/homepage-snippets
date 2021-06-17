let channel = ably.channels.get("doc:mars-launch-plan")
channel.subscribe("update", callback: { [weak self] message in
    guard let data = message.data as? [String : Any] else { return print("Unknown data format.") }
    self?.applyUpdate(data)
})
