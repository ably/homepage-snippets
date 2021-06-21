channel.subscribe("action") { msg ->
    println("Message received ${msg.data}")
}
