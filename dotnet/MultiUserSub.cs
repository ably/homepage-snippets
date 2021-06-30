channel.Subscribe("update", msg => {
  document.ApplyUpdate((Update) msg.Data);
});
