channel = ably.channels.get('driver:elon')
msg = { lat: lat, long: long, bearing: 'nw' }
channel.publish('position', msg)
