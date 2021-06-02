require 'ably'

ably = Ably::Realtime.new(key: ENV['ABLY_API_KEY'])
channel = ably.channels.get 'device:rocket:1'
channel.subscribe do |payload|
  if payload.name == 'action'
    mqtt.execute(payload.data)
  end
end
