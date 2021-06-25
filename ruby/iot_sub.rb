mqtt.subscribe('device:thermostat:bedroom')
mqtt.get do |topic, payload|
  thermostat.process_instruction(payload) if topic == 'action'
end
