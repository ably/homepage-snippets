channel = ably.channels.get('device:rocket:1')
channel.subscribe do |payload|
  if payload.name == 'action'
    mqtt.publish(payload.name, payload.data)
  end
end
