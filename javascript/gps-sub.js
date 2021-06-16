channel.subscribe('position', msg => {
  map.showMarker({
    position: [msg.data.lat, msg.data.long],
    direction: msg.data.bearing
  });
});
