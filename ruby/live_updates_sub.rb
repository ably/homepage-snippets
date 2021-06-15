channel = ably.channels.get('dogecoin:usd')
channel.subscribe('rate') do |payload|
  @metric = payload.data
end
