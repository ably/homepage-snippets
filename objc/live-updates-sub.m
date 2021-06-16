channel = [ably.channels get:@"dogecoin:usd"];
[channel subscribe:@"rate" callback:^(ARTMessage *message) {
    [self appendMetric:[message data]]; // [message data] is NSDictionary
}];
