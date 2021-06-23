channel
  .presence
  .subscribe(action: PresenceAction.enter)
  .listen((member) => ui.showMemberEntered(member));
channel
  .subscribe()
  .listen((message) => ui.appendToConversation(message.data));
