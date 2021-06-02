channel.presence.subscribe('enter', member => {
  ui.showMemberEntered(member);
});
channel.subscribe(msg => ui.appendToConversation(msg.data));
