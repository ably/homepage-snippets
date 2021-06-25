$channel = $ably->channel('room:yoga-wednesdays');
$channel->publish('msg', new Object('user', 'elon', 'message', 'Hello fans'));
