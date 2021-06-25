channel = ably.channels.get('room:yoga-wednesdays')
channel.publish('msg', { 'user': 'elon', 'message': 'Hello fans' })
