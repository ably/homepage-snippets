const channel = ably.channels.get('room:tesla-fans');
channel.enter(); /* enter room */
channel.publish('msg', { user: 'elon', message: 'Hello fans' });
