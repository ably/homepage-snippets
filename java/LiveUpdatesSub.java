Channel channel = ably.channels.get("dogecoin:usd");
channel.subscribe(new Channel.MessageListener() {
    @Override
    public void onMessage(Message message) {
        chart.appendMetric(message.data);
    }
});