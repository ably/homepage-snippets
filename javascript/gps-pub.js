const channel = ably.channels.get('driver:aardvark');
const msg = { lat: lat, long: long, bearing: 'nw' };
channel.publish('position', msg);
