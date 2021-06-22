const channel = ably.channels.get('room:tesla-fans');
channel.presence.enter(); /* enter room */
channel.publish('msg', { user: 'elon', message: 'Hello fans' });
