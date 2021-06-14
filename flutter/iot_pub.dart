import 'package:ably_flutter/ably_flutter.dart' as ably;

void main() async {
  final realtime = ably.Realtime(key: 'ABLY_API_KEY');
  final channel = realtime.channels.get('device:rocket:1');

  await channel.publish('action', data: {'task': 'enable-thrusters'});
}
