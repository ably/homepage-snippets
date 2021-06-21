mqtt = ably.channels.get('device:rocket:1')
mqtt.subscribe('message') do |payload|
  if payload.name == 'action'
    rocket.process_instruction(payload.name, payload.data)
  end
end
