channel = ably.channels.get('room:tesla-fans')
channel.presence.enter_client('client', 'metadata')
channel.publish('msg', { user: 'elon', message: 'Hello fans' })
