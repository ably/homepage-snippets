const channel = ably.channels.get('doc:mars-launch-plan');
const msg = { pos: charAt, insert: 'Send Grimes first' };
channel.publish('update', msg);
