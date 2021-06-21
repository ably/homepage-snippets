final channel = ably.channels.get('device:rocket:1');
channel.publish(
  name: 'action',
  data: {
    'task': 'enable-thrusters',
  },
);
