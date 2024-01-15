import '../../../domain/user_related/entities/entities.dart';
import '../dtos/dtos.dart';

class UserMapper {
  static User fromRemoteToEntity(UserDto userDto) {
    UserBirthday? userBirthDate;
    try {
      userBirthDate = UserBirthday(
        DateTime.parse(userDto.birthDate),
        //DateTime(userDto.birthdate) as DateTime,
      );
    } catch (error) {
      userBirthDate = null;
    }

    return User(
        phone: UserPhone(userDto.phone),
        id: UserId(userDto.id),
        name: UserName(userDto.name),
        email: UserEmail(userDto.email),
        birthday: userBirthDate,
        gender: UserGender(userDto.gender));
  }
}
