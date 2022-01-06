import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial());

  @override
  Stream<AuthState> mapEvenToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      // yield alone means just emit one yield * means emit all of them in order they come out "every time one comes in pass it as comes in"
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAdress: e.email,
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.password,
        );
      },
      confirmationChanged: (e) async* {
        yield state.copyWith(
          confirmation: e.confirmation,
        );
      },
      toggleShowConfirm: (e) async* {
        yield state.copyWith(showConfirmation: !state.showConfirmation);
      },
      loginPressed: (e) async* {
        yield state.copyWith();
      },
      registrationPressed: (e) async* {
        yield state.copyWith();
      },
    );
    // TODO: implement mapEventToState
  }
}
