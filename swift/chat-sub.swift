channel.presence.subscribe(.enter) { message in
   ui.showMemberEntered(message.clientId)
}
channel.subscribe { message in
   ui.appendToConversation(message.data)
}
