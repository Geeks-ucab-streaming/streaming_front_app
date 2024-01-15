import '../../../domain/user_related/entities/entities.dart';
import '../dtos/dtos.dart';

class UpdateUserInfoMapper {
  static User fromRemoteToEntity(UpdateUserInfoDto userDto) {
    UserBirthday? userBirthDate;
    try {
      userBirthDate = UserBirthday(
        DateTime.parse(userDto.birth_date as String),
        //DateTime(userDto.birthdate) as DateTime,
      );
    } catch (error) {
      userBirthDate = null;
    }

    return User(
      name: (userDto.name != null) ? UserName(userDto.name as String) : null,
      email:
          (userDto.email != null) ? UserEmail(userDto.email as String) : null,
      birthday: userBirthDate,
      gender: (userDto.gender != null)
          ? UserGender(userDto.gender as String)
          : null,
    );
  }
}
