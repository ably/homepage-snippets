[channel.presence subscribe:ARTPresenceEnter callback:^(ARTPresenceMessage *message) {
   [ui showMemberEntered:[message clientId]];
}];
[channel subscribe:^(ARTMessage *message) {
   [ui appendToConversation:[message data]];
}];
