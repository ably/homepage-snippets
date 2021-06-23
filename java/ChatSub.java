Channel channel = ably.channels.get("room:tesla-fans");
channel.presence.subscribe(Action.enter, member -> {
    ui.showMemberEntered(member);
});
channel.subscribe(msg -> ui.appendToConversation(msg.data));
