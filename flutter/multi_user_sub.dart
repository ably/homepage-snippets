channel
  .subscribe(name: 'update')
  .listen((message) => document.applyUpdate(message.data));
