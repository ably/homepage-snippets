$channel = $ably->channel('device:rocket:1');
$channel->publish('action', new Object('task', 'enable-thrusters'));
