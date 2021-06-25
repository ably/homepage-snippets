channel = ably.channels.get('device:thermostat:bedroom')
channel.publish('action', { 'type': 'temperature', 'value': 70 })
