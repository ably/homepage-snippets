ARTRealtimeChannel *channel = [ably.channels get:@"dogecoin:usd"];
[channel publish:@"rate" data:@{ @"price": @1.01, @"time": @([[NSDate date] timeIntervalSinceReferenceDate]) }];
