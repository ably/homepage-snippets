let channel = ably.channels.get("room:tesla-fans")
channel.presence.subscribe(.enter, callback: { [weak self] message in
    self?.showMemberEntered(message.clientId)
})
channel.subscribe { [weak self] message in
    guard let data = message.data as? [String : Any] else { return print("Unknown data format.") }
    self?.appendToConversation(data)
}
