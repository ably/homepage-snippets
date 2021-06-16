Channel channel = ably.channels.get("driver:elon");

channel.subscribe(new Channel.MessageListener() {
    @Override
    public void onMessage(Message message) {
		System.out.println("Position: " + message.data);
    }
});