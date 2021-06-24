$mqtt->subscribe('device:rocket:1', function ($topic, $message) {
    if ($topic == 'action') {
       $rocket->processInstruction(json_decode($message));
    }
}, 0);
