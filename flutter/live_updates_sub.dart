import 'package:ably_flutter/ably_flutter.dart' as ably;

void main() async {
  final realtime = ably.Realtime(key: 'ABLY_API_KEY');
  final channel = realtime.channels.get('dogecoin:usd');

  channel.subscribe().listen((message) {
    print(message.data);
  });
}