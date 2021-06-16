channel = [ably.channels get:@"doc:mars-launch-plan"];
[channel subscribe:@"update" callback:^(ARTMessage *message) {
    [self applyUpdate:[message data]]; // [message data] is NSDictionary
}];
