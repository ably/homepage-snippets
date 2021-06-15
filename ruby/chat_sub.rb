channel = ably.channels.get('room:tesla-fans')
channel.presence.subscribe do |member|
  member
end
