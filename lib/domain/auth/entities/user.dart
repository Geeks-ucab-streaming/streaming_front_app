class User {
  User({
    this.token,
    this.firstName,
    this.lastName,
    this.email,
    this.birthday,
    this.gender,
  });

  final JwtToken? token;
  final UserFirstName? firstName;
  final UserLastName? lastName;
  final UserEmail? email;
  final UserBirthday? birthday;
  final UserGender? gender;

  String? getToken() {
    return token?.value;
  }

  String? getFirstName() {
    return firstName?.value;
  }

  String? getLastName() {
    return lastName?.value;
  }

  String? getEmail() {
    return email?.value;
  }

  DateTime? getBirthday() {
    return birthday?.value;
  }

  String? getGender() {
    return gender?.value;
  }
}

class JwtToken {
  JwtToken(this.value);
  final String value;
}

class UserFirstName {
  UserFirstName(this.value);

  final String value;
}

class UserLastName {
  UserLastName(this.value);

  final String value;
}

class UserEmail {
  UserEmail(this.value);

  final String value;
}

class UserBirthday {
  UserBirthday(this.value);

  final DateTime value;
}

class UserGender {
  UserGender(this.value);

  final String value;
}
