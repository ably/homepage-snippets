channel = ably.channels.get('driver:elon')
channel.subscribe('position') do |payload|
  @marker = {
    position: [payload.data['lat'], payload.data['long']],
    direction: payload.data['bearing']
  }
end
