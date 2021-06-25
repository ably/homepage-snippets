const channel = ably.channels.get('room:yoga-wednesdays');
channel.presence.enter(); /* enter room */
channel.publish('msg', { user: 'alex', message: 'Hello fans' });
