$channel = $ably->channel('dogecoin:usd');
$channel->publish('rate', new Object('price', $price, 'time', $pricedAt));
