channel.presence.subscribe(PresenceMessage.Action.enter) { member ->
    println(member.toString())
}

channel.subscribe { msg -> println("Message received ${msg.data}") }
