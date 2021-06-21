final channel = ably.channels.get('room:tesla-fans');
channel.presence.enter();
channel.publish(
  name: 'msg',
  data: {
    'user': 'elon',
    'message': 'Hello fans',
  },
);
