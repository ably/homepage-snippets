Channel channel = ably.channels.get("room:tesla-fans");

channel.presence.subscribe(new Presence.PresenceListener() {
    @Override
    public void onPresenceMessage(PresenceMessage message) {
        System.out.println(message.toString());
    }
});

channel.subscribe(new Channel.MessageListener() {
    @Override
    public void onMessage(Message message) {
        System.out.println("Message received: " + message.data);
    }
});
