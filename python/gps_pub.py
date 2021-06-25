channel = ably.channels.get('driver:aardvark')
msg = { 'lat': latitude, 'long': longitude, 'bearing': 'nw' }
channel.publish('position', msg)
