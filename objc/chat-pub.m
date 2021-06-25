ARTRealtimeChannel *channel = [ably.channels get:@"room:yoga-wednesdays"];
[channel.presence enterClient:@"Elon" data:@"To the mooon!"];
[channel publish:@"msg" data:@{ @"user": @"Elon", @"message": @"Hello fans" }];
