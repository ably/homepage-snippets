require 'ably'

lat, long = 10.1233, 12.22

ably = Ably::Realtime.new(key: ENV['ABLY_API_KEY'])
channel = ably.channels.get 'driver:elon'
channel.publish 'position', { lat: lat, long: long, bearing: 'nw' }
