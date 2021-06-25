$channel = $ably->channel('device:thermostat:bedroom');
$channel->publish('action', new Object('type', 'temperature', 'value', 70));
