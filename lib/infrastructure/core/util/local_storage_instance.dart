import 'package:injectable/injectable.dart';
import 'package:localstorage/localstorage.dart';

@lazySingleton
class LocalStorageInstance {
  LocalStorageInstance();

  final LocalStorage _localStorage = LocalStorage('localStorage');

  LocalStorage getLocalStorage() {
    return _localStorage;
  }
}
