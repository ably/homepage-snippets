ARTRealtimeChannel *channel = [ably.channels get:@"newcoin:usd"];
[channel publish:@"rate" data:@{ @"price": price, @"time": pricedAt }];
