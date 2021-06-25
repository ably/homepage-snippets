$mqtt->subscribe('device:rocket:1', function ($topic, $message) {
    if ($topic == 'action') {
       $rocket->process_instruction(json_decode($message));
    }
}, 0);
