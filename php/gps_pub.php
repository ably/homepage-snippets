$channel = $ably->channel('driver:aardvark');
$msg = new Object('lat', $lat, 'long', $long, 'bearing', 'nw');
$channel->publish('position', $msg);
