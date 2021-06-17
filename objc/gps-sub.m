channel = [ably.channels get:@"driver:elon"];
__weak typeof(self) weakSelf = self;
[channel subscribe:@"position" callback:^(ARTMessage *message) {
    [weakSelf showMarker:[message data]]; // [message data] is NSDictionary
}];
