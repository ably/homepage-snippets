channel = ably.channels.get('doc:mars-launch-plan')
data = { 'pos': charAt, 'insert': 'What about fuel?' }
channel.publish('update', data)
