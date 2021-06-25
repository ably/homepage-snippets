$channel = $ably->channel('doc:mars-launch-plan');
$msg = new Object('pos', $charAt, 'insert', 'What about fuel?');
$channel->publish('update', $msg);
