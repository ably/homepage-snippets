Channel channel = ably.channels.get("device:rocket:1");
channel.subscribe((Channel.MessageListener) message -> {
	if (message.name == "action") {
    	System.out.println("Message received: " + message.data);
	}
});