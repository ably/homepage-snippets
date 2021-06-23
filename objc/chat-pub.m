ARTRealtimeChannel *channel = [ably.channels get:@"room:tesla-fans"];
[channel.presence enterClient:@"Elon" data:@"To the mooon!"];
[channel publish:@"msg" data:@{ @"user": @"Elon", @"message": @"Hello fans" }];
