Channel channel = ably.channels.get("driver:aardvark");
channel.subscribe(msg -> map.showMarker(msg.data));
