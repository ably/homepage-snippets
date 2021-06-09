AblyRealtime ably = new AblyRealtime("ABLY_API_KEY");

Channel channel = ably.channels.get("doc:mars-launch-plan");
channel.subscribe(new Channel.MessageListener() {
    @Override
    public void onMessage(Message message) {
        System.out.println("Message received: " + message.data);
    }
});