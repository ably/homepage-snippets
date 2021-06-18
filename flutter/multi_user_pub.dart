final channel = ably.channels.get('doc:mars-launch-plan');
channel.publish('update', {'pos': chatAt, 'insert': 'Send Grimes first'});
