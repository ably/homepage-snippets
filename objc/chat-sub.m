channel = [ably.channels get:@"room:tesla-fans"];
__weak typeof(self) weakSelf = self;
[channel.presence subscribe:ARTPresenceEnter callback:^(ARTPresenceMessage *message) {
    [weakSelf showMemberEntered:[message clientId]];
}];
[channel subscribe:^(ARTMessage *message) {
    [weakSelf appendToConversation:[message data]]; // [message data] is NSDictionary
}];
