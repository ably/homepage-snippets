channel.subscribe("rate") { msg ->
    println("Message received ${msg.data}")
}
