import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import '../../../application/auth/services/services.dart';
import '../../../firebase_options.dart';

import '../util/util.dart';

@lazySingleton
class FireBaseAPI extends IFireBaseAPI {
  late FirebaseMessaging firebaseMessaging;
  late Logger logger;

  FireBaseAPI();

  @override
  Future<void> apiInitialization() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    // getIt instance
    GetIt getIt = GetIt.I;
    // local variables
    firebaseMessaging = FirebaseMessaging.instance;
    logger = getIt<LoggerInstance>().getLogger();

    try {
      initNotifications();
    } catch (error) {
      logger.f('Could not initialize notification handler');
    }
  }

  @override
  Future<void> initNotifications() async {
    await firebaseMessaging.requestPermission();
    // set up foreground notifications
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );
  }

  @override
  Future<String?> getAppToken() async {
    // get app token
    try {
      final fcmToken = await firebaseMessaging.getToken();
      // print token
      logger.d('My token is: $fcmToken');
      return fcmToken;
    } catch (error) {
      throw Error();
    }
  }
}
