channel.subscribe(name: 'rate').listen((message) {
  chart.appendMetric(message.data);
});
