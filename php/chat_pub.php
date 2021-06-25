$channel = $ably->channel('room:yoga-wednesdays');
$channel->publish('msg', new Object('user', 'alex', 'message', 'Is yoga on this week?'));
