import 'package:ably_flutter/ably_flutter.dart' as ably;

void main() async {
  final realtime = ably.Realtime(key: 'ABLY_API_KEY');
  final channel = realtime.channels.get('device:rocket:1');

  channel.subscribe(name: 'action').listen((message) {
    final data = (message.data as Map);
    final task = data['task'] as String;
    switch (task) {
      case 'enable-thrusters':
        print('enabling thrusters');
      case 'throttle':
        print('throttling ${data['throttle']}');
      default:
        print('no-op for $task');
    }
  });
}
