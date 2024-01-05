class User {
  User({
    this.phone,
    this.id,
    this.name,
    this.email,
    this.birthday,
    this.gender,
  });
  final UserPhone? phone;
  final UserId? id;
  final UserName? name;
  final UserEmail? email;
  final UserBirthday? birthday;
  final UserGender? gender;

  String? getPhone() {
    return phone?.value;
  }

  String? getId() {
    return id?.value;
  }

  String? getName() {
    return name?.value;
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

class UserPhone {
  UserPhone(this.value);
  final String value;
}

class UserId {
  UserId(this.value);
  final String value;
}

class UserName {
  UserName(this.value);

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
