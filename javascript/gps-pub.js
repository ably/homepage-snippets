const channel = ably.channels.get('driver:elon');
const msg = { lat: lat, long: long, bearing: 'nw' };
channel.publish('position', msg);
