channel = ably.channels.get('dogecoin:usd')
channel.subscribe('rate') do |payload|
  metrics << payload.data
end
