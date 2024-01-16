import '../../user_related/entities/entities.dart';
import '../enums/enums.dart';
import '../value_objects/value_objects.dart';

class AuthUserState {
  AuthUserState({
    required this.state,
    this.user,
    this.userToken,
  });

  User? user;
  AuthStateEnum state;
  JwtToken? userToken;

  //getters
  User? getUser() {
    return user;
  }

  AuthStateEnum getAuthState() {
    return state;
  }

  JwtToken? getJwtToken() {
    return userToken;
  }

  // setters
  void setUser(User user) {
    this.user = user;
  }

  void setAuthState(AuthStateEnum authState) {
    state = authState;
  }

  void setJwtToken(JwtToken jwtToken) {
    userToken = jwtToken;
  }

  // functions
  void login({
    required JwtToken jwtToken,
    required User user,
  }) {
    this.user = user;
    userToken = jwtToken;
    state = AuthStateEnum.authenticated;
  }

  void loginGuest({
    required JwtToken jwtToken,
  }) {
    userToken = jwtToken;
    state = AuthStateEnum.unauthenticated;
  }

  void logout() {
    user = null;
    userToken = null;
    state = AuthStateEnum.unauthenticated;
  }

  void updateUserInfo({
    String? name,
    String? email,
    DateTime? birthdate,
    String? gender,
  }) {
    if (name != null) {
      user?.setName(name);
    }
    if (email != null) {
      user?.setEmail(email);
    }
    if (birthdate != null) {
      user?.setBirthdate(birthdate);
    }
    if (gender != null) {
      user?.setGender(gender);
    }
  }

  // overrides
  @override
  String toString() {
    return '{state: $state, token: ${userToken.toString()}, user: ${user.toString()}}';
  }
}
