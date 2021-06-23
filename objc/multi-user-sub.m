[channel subscribe:@"update" callback:^(ARTMessage *message) {
   [document applyUpdate:[message data]];
}];
