[mqttClient subscribe:@"device:rocket:1"];
[mqttClient on:@"message" callback:^(NSString *topic, ARTMessage *message) {
   if ([topic isEqualToString:@"action"]) {
      [ui processInstruction:data];
   }
}];
