channel = ably.channels.get('newcoin:usd')
channel.publish('rate', { 'price': price, 'time': pricedAt })
