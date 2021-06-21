channel.subscribe("rate", (Channel.MessageListener) msg -> 
	System.out.println("Message received: " + msg.data)
);