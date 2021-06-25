let channel = ably.channels.get("driver:aardvark")
let msg = [ "lat": lat, "long": long, "bearing": "nw" ]
channel.publish("position", data: msg)
