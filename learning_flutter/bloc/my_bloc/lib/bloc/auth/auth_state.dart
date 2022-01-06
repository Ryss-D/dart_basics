part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @required String emailAdress,
    @required String password,
    @required String confirmation,
    @required bool showConfirmation,
    @required String errorMessage,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        emailAdress: '',
        password: '',
        confirmation: '',
        showConfirmation: false,
        errorMessage: '',
      );
}
