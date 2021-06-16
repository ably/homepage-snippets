Channel channel = ably.channels.get("dogecoin:usd");
channel.subscribe(new Channel.MessageListener() {
    @Override
    public void onMessage(Message message) {
        System.out.println("Message received: " + message.data);            
    }
});