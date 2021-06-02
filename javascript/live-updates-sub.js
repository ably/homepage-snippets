channel.subscribe('rate', msg => chart.appendMetric(msg.data));
