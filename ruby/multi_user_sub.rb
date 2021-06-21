channel = ably.channels.get('doc:mars-launch-plan')
channel.subscribe('update') do |payload|
  plan.update(payload.data)
end
