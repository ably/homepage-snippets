require 'ably'

class Exchange
  def price(at, currency)
  end
end
exchange = Exchange.new

ably = Ably::Realtime.new(key: ENV['ABLY_API_KEY'])
channel = ably.channels.get 'dogecoin:usd'

time = Time.utc

channel.publish'rate', { price: exchange.price(time, 'USD'), time: time }

