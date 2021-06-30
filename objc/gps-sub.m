[channel subscribe:@"position" callback:^(ARTMessage *message) {
  [ui showMarker:[message data]];
}];
