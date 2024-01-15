import 'package:streaming_front_app/infrastructure/core/util/util.dart';

import '../../user_related/entities/entities.dart';
import '../data_presentation/data_presentation.dart';

class UserPresentationMapper {
  static UserPresentation fromEntityToPresentation(User user) {
    return UserPresentation(
      name: user.getName() as String,
      email: user.getEmail() as String,
      birthday: (user.getBirthday() != null)
          ? DateFormatter.formatDate(user.getBirthday() as DateTime)
          : '',
      gender: user.getGender() as String,
    );
  }
}
