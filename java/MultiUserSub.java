Channel channel = ably.channels.get("doc:mars-launch-plan");
channel.subscribe(new Channel.MessageListener() {
    @Override
    public void onMessage(Message message) {
        document.applyUpdate(message.data);
    }
});