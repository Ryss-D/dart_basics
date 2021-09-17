import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_check_event.dart';
part 'auth_check_state.dart';

class AuthCheckBloc extends Bloc<AuthCheckEvent, AuthCheckState> {
  AuthCheckBloc() : super(AuthCheckInitial());

  @override
  Stream<AuthCheckState> mapEventToState(
    AuthCheckEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
