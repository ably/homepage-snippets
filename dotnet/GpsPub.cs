IRealtimeChannel channel = ably.Channels.Get("driver:elon");
channel.Publish("position", new GpsPosition {
    Latitude = latitude,
    Longitude = longitude,
    Bearing = "nw"});
