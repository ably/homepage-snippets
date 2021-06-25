IRealtimeChannel channel = ably.Channels.Get("driver:aardvark");
channel.Publish("position", new GpsPosition {
    Latitude = latitude,
    Longitude = longitude,
    Bearing = "nw"});
