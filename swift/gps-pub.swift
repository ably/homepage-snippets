let channel = ably.channels.get("driver:elon")
let msg = [ "lat": lat, "long": long, "bearing": "nw" ]
channel.publish("position", data: msg)
