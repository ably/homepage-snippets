channel = ably.channels.get('dogecoin:usd')
channel.publish('rate', { 'price': price, 'time': pricedAt })
