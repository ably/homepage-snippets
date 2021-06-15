final channel = ably.channels.get('room:tesla-fans');
channel.presence.enter();
await channel.publish('msg', data: {'user': 'elon', 'message': 'Hello fans'});
