channel.subscribe(name: 'position').listen((message) {
  map.showMarker(
    position: (message.data as Map)['position'],
    bearing: (message.data as Map)['bearing'],
  );
});
