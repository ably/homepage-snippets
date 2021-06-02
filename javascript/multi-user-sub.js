channel.subscribe('update', msg => {
  document.applyUpdate(msg.data);
});
