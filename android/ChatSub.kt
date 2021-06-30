val channel = ably.channels.get("room:yoga-wednesdays")
channel.presence.subscribe(Action.enter) { member ->
  ui.showMemberEntered(member)
}
channel.subscribe { msg -> ui.appendToConversation(msg.data) }
