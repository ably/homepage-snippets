channel.subscribe("update") { msg ->
    println("Message received ${msg.data}")
}
