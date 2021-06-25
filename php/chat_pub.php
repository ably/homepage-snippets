$channel = $ably->channel('room:tesla-fans');
$channel->publish('msg', new Object('user', 'elon', 'message', 'Hello fans'));
