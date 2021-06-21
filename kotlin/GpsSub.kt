channel.subscribe("position") { msg ->
    println("Position ${msg.data}")
}
