Channel channel = ably.channels.get("driver:elon");

channel.subscribe(new Channel.MessageListener() {
    @Override
    public void onMessage(Message message) {
		map.showMarker(message.data)
    }
});