[channel subscribe:@"rate" callback:^(ARTMessage *message) {
   [chart appendMetric:[message data]];
}];
