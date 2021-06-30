channel.Subscribe("position", msg => {
  var pos = (GpsPosition) msg.Data;
  Map.ShowMarker(new Marker {
    Position = (pos.Latitude, pos.Longitude),
    Direction = pos.Bearing
  });
});
