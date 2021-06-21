channel = ably.channels.get('room:tesla-fans')
channel.presence.subscribe do |member|
  members << member
end
channel.subscribe { |message| messages << message.data }
