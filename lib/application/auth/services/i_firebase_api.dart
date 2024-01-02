abstract class IFireBaseAPI {
  void apiInitialization();
  Future<String?> getAppToken();
  Future<void> initNotifications();
}
