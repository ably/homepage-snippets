channel = ably.channels.get('doc:mars-launch-plan')
msg = { 'pos': charAt, 'insert': 'Send Grimes first' }
channel.publish('update', msg)
