channel.subscribe("update", (Channel.MessageListener) msg ->
    System.out.println("Message received: " + msg.data)
);