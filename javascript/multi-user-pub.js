const channel = ably.channels.get('doc:mars-launch-plan');
const msg = { pos: charAt, insert: 'What about fuel?' };
channel.publish('update', msg);
