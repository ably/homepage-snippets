channel.subscribe("position", (Channel.MessageListener) msg -> 
	System.out.println("Position: " + msg.data)
);