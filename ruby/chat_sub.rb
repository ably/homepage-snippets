require 'ably'

ably = Ably::Realtime.new(key: ENV['ABLY_API_KEY'])
channel = ably.channels.get 'room:tesla-fans'
channel.presence.subscribe do |member|
  member
end
