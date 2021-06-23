ARTRealtimeChannel *channel = [ably.channels get:@"dogecoin:usd"];
[channel publish:@"rate" data:@{ @"price": price, @"time": pricedAt }];
