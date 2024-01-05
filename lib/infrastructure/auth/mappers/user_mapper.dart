import '../../../domain/auth/entities/entities.dart';
import '../dtos/dtos.dart';

class UserMapper {
  static User fromRemoteToEntity(UserDto userDto) {
    return User(
        phone: UserPhone(userDto.phone),
        id: UserId(userDto.id),
        name: UserName(userDto.name),
        email: UserEmail(userDto.email),
        birthday: UserBirthday(
          DateTime.parse(userDto.birthdate),
        ),
        gender: UserGender(userDto.genre));
  }
}
