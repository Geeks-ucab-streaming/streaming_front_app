import '../enums/enums.dart';
import '../value_objects/value_objects.dart';
import 'entities.dart';

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

  void logout() {
    user = null;
    userToken = null;
    state = AuthStateEnum.unauthenticated;
  }

  // overrides
  @override
  String toString() {
    return '{state: $state, token: ${userToken.toString()}, user: ${user.toString()}}';
  }
}
