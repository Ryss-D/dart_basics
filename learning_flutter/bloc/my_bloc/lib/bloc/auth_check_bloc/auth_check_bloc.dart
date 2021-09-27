import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_bloc/auth_repository.dart';

part 'auth_check_event.dart';
part 'auth_check_state.dart';

class AuthCheckBloc extends Bloc<AuthCheckEvent, AuthCheckState> {
  final AuthRepository _authRepository;

  AuthCheckBloc(
    this._authRepository,
  ) : super(AuthCheckInitial());

  @override
  Stream<AuthCheckState> mapEventToState(
    AuthCheckEvent event,
  ) async* {
    // TODo: implement mapEventToState
    if (event is AuthEventAuthRequested) {
      final isUserAuthenticated = _authRepository.isUserAuthenticated();

      if (isUserAuthenticated) {
        //yield mean emit this state
        yield AuthCheckAuthenticated();
      } else {
        yield AuthCheckUnauthenticated();
      }
    }
  }
}
