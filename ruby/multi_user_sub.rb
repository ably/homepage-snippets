require 'ably'

ably = Ably::Realtime.new(key: ENV['ABLY_API_KEY'])
channel = ably.channels.get 'doc:mars-launch-plan'
channel.subscribe('update') do |payload|
  @update = payload.data
end
