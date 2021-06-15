channel
  .presence
  .subscribe(action: PresenceAction.enter)
  .listen((member) => ui.showMemberEntered(member));

channel.subscribe().listen((message) => appendToConversation(message.data));
