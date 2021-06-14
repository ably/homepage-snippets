import 'package:ably_flutter/ably_flutter.dart' as ably;

void main() async {
  final realtime = ably.Realtime(key: 'ABLY_API_KEY');
  final channel = realtime.channels.get('driver:elon');

  await channel.publish('position', data: {'lat': 10.1233, 'long': 12.22});
}
