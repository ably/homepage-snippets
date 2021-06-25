channel = ably.channels.get('driver:elon')
msg = { 'lat': latitude, 'long': longitude, 'bearing': 'nw' }
channel.publish('position', msg)
