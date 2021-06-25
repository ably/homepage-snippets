let channel = ably.channels.get("device:thermostat:bedroom")
channel.publish("action", data: [ "type": "temperature", "value": 70 ])
