channel = [ably.channels get:@"room:tesla-fans"];
[channel.presence subscribe:ARTPresenceEnter callback:^(ARTPresenceMessage *message) {
    [self showMemberEntered:[message clientId]];
}];
[channel subscribe:^(ARTMessage *message) {
    [self appendToConversation:[message data]]; // [message data] is NSDictionary
}];
