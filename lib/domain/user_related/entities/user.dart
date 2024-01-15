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
  UserName? name;
  UserEmail? email;
  UserBirthday? birthday;
  UserGender? gender;

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

  // setters
  void setName(String name) {
    this.name = UserName(name);
  }

  void setEmail(String email) {
    this.email = UserEmail(email);
  }

  void setBirthdate(DateTime birthday) {
    this.birthday = UserBirthday(birthday);
  }

  void setGender(String gender) {
    this.gender = UserGender(gender);
  }

  @override
  String toString() {
    return '{id: ${id?.value}, phone: ${phone?.value} email: ${email?.value}, name: ${name?.value}, birthdate: ${birthday?.value}}';
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
