channel = [ably.channels get:@"dogecoin:usd"];
__weak typeof(self) weakSelf = self;
[channel subscribe:@"rate" callback:^(ARTMessage *message) {
    [weakSelf appendMetric:[message data]]; // [message data] is NSDictionary
}];
