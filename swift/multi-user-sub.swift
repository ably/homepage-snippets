let channel = ably.channels.get("doc:mars-launch-plan")
channel.subscribe("update") { message in
  document.applyUpdate(message.data)
}
