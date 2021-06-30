channel.subscribe("rate") { message in
  chart.appendMetric(message.data)
}
