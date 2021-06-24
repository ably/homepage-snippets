channel = ably.channels.get('dogecoin:usd')
channel.publish('rate', { 'price': price, 'ticme': pricedAt })
