import 'package:streaming_front_app/domain/user_related/user.dart';

abstract class IUserRepository {
  User updateUserInformation(User user);
}
