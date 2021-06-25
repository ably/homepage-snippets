$channel = $ably->channel('newcoin:usd');
$channel->publish('rate', new Object('price', $price, 'time', $pricedAt));
