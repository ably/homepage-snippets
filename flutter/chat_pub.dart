import 'package:ably_flutter/ably_flutter.dart' as ably;

void main() async {
  final realtime = ably.Realtime(key: 'ABLY_API_KEY');
  final channel = realtime.channels.get('room:tesla-fans');

  channel.presence.enter(null, null);
  await channel.publish('msg', data: {'user': 'elon', 'message': 'Hello fans'});
}
