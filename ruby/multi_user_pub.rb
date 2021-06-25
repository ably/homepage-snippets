channel = ably.channels.get('doc:mars-launch-plan')
msg = { pos: char_at, insert: 'What about fuel?' }
channel.publish('update', msg)
