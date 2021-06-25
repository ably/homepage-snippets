channel = ably.channels.get('room:yoga-wednesdays')
channel.publish('msg', { 'user': 'alex', 'message': 'Hello fans' })
