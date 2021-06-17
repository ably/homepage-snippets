channel = [ably.channels get:@"doc:mars-launch-plan"];
__weak typeof(self) weakSelf = self;
[channel subscribe:@"update" callback:^(ARTMessage *message) {
    [weakSelf applyUpdate:[message data]]; // [message data] is NSDictionary
}];
