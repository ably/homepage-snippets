Channel channel = ably.channels.get("room:tesla-fans");

channel.presence.subscribe(new Presence.PresenceListener() {
    @Override
    public void onPresenceMessage(PresenceMessage message) {
        if (message.action == Action.enter) {
            ui.showMemberEntered(message);
        }
        if (message.action == Action.leave) {
            ui.showMemberLeft(message);
        }
    }
});

channel.subscribe(new Channel.MessageListener() {
    @Override
    public void onMessage(Message message) {
        ui.appendToConversation(message.data)
    }
});
