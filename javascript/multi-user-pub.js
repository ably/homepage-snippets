const channel = ably.channels.get('doc:mars-launch-plan');
channel.publish('update', { pos: charAt, insert: 'Send Grimes first' });
