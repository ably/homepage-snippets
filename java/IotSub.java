Channel channel = ably.channels.get("device:rocket:1");

channel.subscribe(new Channel.MessageListener() {
    @Override
    public void onMessage(Message message) {
        if(message.name == "action") {
        	System.out.println("Message received: " + message.data);            
        }
    }
});