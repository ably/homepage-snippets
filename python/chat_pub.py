channel = ably.channels.get('room:tesla-fans')
channel.publish('msg', { 'user': 'elon', 'message': 'Hello fans' })
