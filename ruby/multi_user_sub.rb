channel = ably.channels.get('doc:mars-launch-plan')
channel.subscribe('update') do |payload|
  @update = payload.data
end
