ARTRealtimeChannel *channel = [ably.channels get:@"doc:mars-launch-plan"];
[channel publish:@"update" data:@{ @"pos": @0, @"insert": @"Send Grimes first" }];
