import 'package:ably_flutter/ably_flutter.dart' as ably;

void main() async {
  final realtime = ably.Realtime(key: 'ABLY_API_KEY');
  final channel = realtime.channels.get('doc:mars-launch-plan');

  channel.subscribe().listen((message) {
    final position = (message.data as Map)['pos'] as int;
    final content = (message.data as Map)['insert'] as String;
    print('inserting "$content" at index: $position');
  });
}
