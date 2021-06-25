channel.Subscribe("rate",
    msg => chart.AppendMetric((Change) msg.Data));
