$mqtt->subscribe('device:thermostat:bedroom', function ($topic, $message) {
    if ($topic == 'action') {
       $thermostat->process_instruction(json_decode($message));
    }
}, 0);
