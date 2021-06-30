channel.subscribe("position") { message in
  map.showMarker(
    position: (message.data["lat"], message.data["long"]),
    direction: message.data["bearing"]
  )
}
