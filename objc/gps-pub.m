ARTRealtimeChannel *channel = [ably.channels get:@"driver:aardvark"];
[channel publish:@"position" data:@{ @"lat": lat, @"long": lng, @"bearing": @"nw" }];
