[mqttClient subscribe:@"device:thermostat:bedroom"];
[mqttClient on:@"message" callback:^(NSString *topic, ARTMessage *message) {
   if ([topic isEqualToString:@"action"]) {
      [ui processInstruction:data];
   }
}];
