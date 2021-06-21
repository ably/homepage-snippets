final channel = ably.channels.get('dogecoin:usd');
channel.publish(
  name: 'rate',
  data: {
    'price': price,
    'time': pricedAt,
  },
);
