mqtt.subscribe('device:rocket:1')
mqtt.get do |topic, payload|
  rocket.process_instruction(payload) if topic == 'action'
end
