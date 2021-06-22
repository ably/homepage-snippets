channel = ably.channels.get('doc:mars-launch-plan')
msg = { pos: char_at, insert: 'Send Grimes first' }
channel.publish('update', msg)
