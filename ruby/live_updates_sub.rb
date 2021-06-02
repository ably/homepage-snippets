require 'ably'

ably = Ably::Realtime.new(key: ENV['ABLY_API_KEY'])
channel = ably.channels.get 'dogecoin:usd'
channel.subscribe('rate') do |payload|
  @metric = payload.data
end
