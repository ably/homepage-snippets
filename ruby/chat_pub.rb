channel = ably.channels.get('room:yoga-wednesdays')
channel.presence.enter('metadata')
channel.publish('msg', { user: 'alex', message: 'Hello fans' })
