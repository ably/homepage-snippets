final channel = ably.channels.get('room:tesla-fans');
channel.presence.enter();
channel.publish('msg', data: {'user': 'elon', 'message': 'Hello fans'});
