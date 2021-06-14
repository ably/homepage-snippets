import 'package:ably_flutter/ably_flutter.dart' as ably;

void main() async {
  final realtime = ably.Realtime(key: 'ABLY_API_KEY');
  final channel = realtime.channels.get('driver:elon');

  channel.subscribe().listen((message) {
    final latitude = (message.data as Map)['lat'] as int;
    final longitude = (message.data as Map)['long'] as int;
    print('latitude: $latitude, longitude: $longitude');
  });
}
