channel = ably.channels.get('dogecoin:usd')
channel.publish('rate', { price: exchange.price(time, 'USD'), time: Time.utc })
