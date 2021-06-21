channel.presence.subscribe(PresenceMessage.Action.enter, member -> 
	System.out.println(member.toString())
);

channel.subscribe((Channel.MessageListener) msg -> 
	System.out.println("Message received: " + msg.data)
);
