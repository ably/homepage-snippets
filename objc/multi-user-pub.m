ARTRealtimeChannel *channel = [ably.channels get:@"doc:mars-launch-plan"];
[channel publish:@"update" data:@{ @"pos": charAt, @"insert": @"What about fuel?" }];
