$channel = $ably->channel('driver:elon');
$msg = new Object('lat', $lat, 'long', $long, 'bearing', 'nw');
$channel->publish('position', $msg);
