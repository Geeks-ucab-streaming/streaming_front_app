import '../data_presentation/data_presentation.dart';
import '../entities/entities.dart';

class UserPresentationMapper {
  static UserPresentation fromEntityToPresentation(User user) {
    return UserPresentation(
      name: user.getName() as String,
      email: user.getEmail() as String,
      birthday: user.getBirthday().toString(),
      gender: user.getEmail() as String,
    );
  }
}
