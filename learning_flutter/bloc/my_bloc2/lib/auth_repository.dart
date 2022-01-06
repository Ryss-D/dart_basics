class AuthRepository {
  //singleton
  static final AuthRepository _authRepository = AuthRepository._internal();

  factory AuthRepository() {
    return _authRepository;
  }
//singleton
  AuthRepository._internal();

  static bool autehnticated = false;

  bool isUserAuthenticated() {
    return autehnticated;
  }

  bool singInWithEmailAndPassword(String email, String password) {
    if (email == 'ovidius.mazuru@googlemail.com' && password == 'password') {
      AuthRepository.autehnticated = true;
      return true;
    } else {
      AuthRepository.autehnticated = false;
      return false;
    }
  }

  bool registerWithEmailAndPassword(String email, String password) {
    return true;
  }
}
