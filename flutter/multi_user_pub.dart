import 'package:ably_flutter/ably_flutter.dart' as ably;

void main() async {
  final realtime = ably.Realtime(key: 'ABLY_API_KEY');
  final channel = realtime.channels.get('doc:mars-launch-plan');

  await channel.publish('update', {'pos': 42, 'insert': 'Send Grimes first'});
}
