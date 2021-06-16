[mqttClient subscribeToTopic:@"device:rocket:1" atLevel:MQTTQosLevelAtMostOnce];

// Assume you use https://github.com/novastone-media/MQTT-Client-Framework
- (void)newMessage:(MQTTSession *)session
              data:(NSData *)data
           onTopic:(NSString *)topic
               qos:(MQTTQosLevel)qos
          retained:(BOOL)retained
               mid:(unsigned int)mid {
    
    if ([topic isEqualToString:@"action"]) {
        [self processInstruction:data];
    }
}
