channel = ably.channels.get('doc:mars-launch-plan')
data = { 'pos': charAt, 'insert': 'Send Grimes first' }
channel.publish('update', data)
