channel = ably.channels.get('room:yoga-wednesdays')
channel.presence.enter('Alex entered the chat')
channel.publish('msg', { user: 'alex', message: 'Is yoga on this week?' })
