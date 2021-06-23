Channel channel = ably.channels.get("doc:mars-launch-plan");
channel.subscribe("update", msg -> {
    document.applyUpdate(msg.data);
});
