$channel = $ably->channel('doc:mars-launch-plan');
$msg = new Object('pos', $charAt, 'insert', 'Send Grimes first');
$channel->publish('update', $msg);
