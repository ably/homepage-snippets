channel = ably.channels.get('room:tesla-fans')
channel.presence.enter('metadata')
channel.publish('msg', { user: 'elon', message: 'Hello fans' })
