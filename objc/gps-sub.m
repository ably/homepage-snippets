channel = [ably.channels get:@"driver:elon"];
[channel subscribe:@"position" callback:^(ARTMessage *message) {
    [self showMarker:[message data]]; // [message data] is NSDictionary
}];
