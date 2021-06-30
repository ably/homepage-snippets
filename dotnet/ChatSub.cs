channel.Presence.Subscribe(
  PresenceAction.Enter,
  message => UI.ShowMemberEntered(message));

channel.Subscribe(message => {
  UI.AppendToConversation((Message) message.Data); });
