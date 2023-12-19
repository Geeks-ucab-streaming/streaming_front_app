import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

part 'foreground_message.g.dart';

@riverpod
Stream<RemoteMessage> foreGroundMessageListener(
    ForeGroundMessageListenerRef ref) async* {
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification?.body}');
    }
  });
}
