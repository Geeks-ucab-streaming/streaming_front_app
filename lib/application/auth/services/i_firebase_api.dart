abstract class IFireBaseAPI {
  Future<String?> getAppToken();
  Future<void> initNotifications();
}
