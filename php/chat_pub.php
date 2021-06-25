$channel = $ably->channel('room:yoga-wednesdays');
$channel->publish('msg', new Object('user', 'alex', 'message', 'Hello fans'));
