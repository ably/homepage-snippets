channel = ably.channels.get('driver:aardvark')
msg = { lat: lat, long: long, bearing: 'nw' }
channel.publish('position', msg)
