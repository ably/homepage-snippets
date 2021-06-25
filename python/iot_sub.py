def on_message(client, userdata, message):
    if message.topic == 'action':
        msg = message.payload.decode('utf-8')
        thermostat.process_instruction(json.loads(msg))

mqtt.on_message = on_message
mqtt.subscribe('device:thermostat:bedroom')
