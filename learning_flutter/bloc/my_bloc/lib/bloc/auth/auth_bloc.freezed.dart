// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

// ignore: unused_element
  _PasswordChanged passwordChanged(String password) {
    return _PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  _ConfirmationChanged confirmationChanged(String confirmation) {
    return _ConfirmationChanged(
      confirmation,
    );
  }

// ignore: unused_element
  _ToggleShowConfirm toggleShowConfirm() {
    return const _ToggleShowConfirm();
  }

// ignore: unused_element
  _LoginPressed loginPressed() {
    return const _LoginPressed();
  }

// ignore: unused_element
  _RegistrationTriggers registrationPressed() {
    return const _RegistrationTriggers();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult confirmationChanged(String confirmation),
    @required TResult toggleShowConfirm(),
    @required TResult loginPressed(),
    @required TResult registrationPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult confirmationChanged(String confirmation),
    TResult toggleShowConfirm(),
    TResult loginPressed(),
    TResult registrationPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult confirmationChanged(_ConfirmationChanged value),
    @required TResult toggleShowConfirm(_ToggleShowConfirm value),
    @required TResult loginPressed(_LoginPressed value),
    @required TResult registrationPressed(_RegistrationTriggers value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult confirmationChanged(_ConfirmationChanged value),
    TResult toggleShowConfirm(_ToggleShowConfirm value),
    TResult loginPressed(_LoginPressed value),
    TResult registrationPressed(_RegistrationTriggers value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged with DiagnosticableTreeMixin implements _EmailChanged {
  const _$_EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.emailChanged(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.emailChanged'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult confirmationChanged(String confirmation),
    @required TResult toggleShowConfirm(),
    @required TResult loginPressed(),
    @required TResult registrationPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult confirmationChanged(String confirmation),
    TResult toggleShowConfirm(),
    TResult loginPressed(),
    TResult registrationPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult confirmationChanged(_ConfirmationChanged value),
    @required TResult toggleShowConfirm(_ToggleShowConfirm value),
    @required TResult loginPressed(_LoginPressed value),
    @required TResult registrationPressed(_RegistrationTriggers value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult confirmationChanged(_ConfirmationChanged value),
    TResult toggleShowConfirm(_ToggleShowConfirm value),
    TResult loginPressed(_LoginPressed value),
    TResult registrationPressed(_RegistrationTriggers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements AuthEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_PasswordChanged
    with DiagnosticableTreeMixin
    implements _PasswordChanged {
  const _$_PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.passwordChanged(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.passwordChanged'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult confirmationChanged(String confirmation),
    @required TResult toggleShowConfirm(),
    @required TResult loginPressed(),
    @required TResult registrationPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult confirmationChanged(String confirmation),
    TResult toggleShowConfirm(),
    TResult loginPressed(),
    TResult registrationPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult confirmationChanged(_ConfirmationChanged value),
    @required TResult toggleShowConfirm(_ToggleShowConfirm value),
    @required TResult loginPressed(_LoginPressed value),
    @required TResult registrationPressed(_RegistrationTriggers value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult confirmationChanged(_ConfirmationChanged value),
    TResult toggleShowConfirm(_ToggleShowConfirm value),
    TResult loginPressed(_LoginPressed value),
    TResult registrationPressed(_RegistrationTriggers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements AuthEvent {
  const factory _PasswordChanged(String password) = _$_PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$ConfirmationChangedCopyWith<$Res> {
  factory _$ConfirmationChangedCopyWith(_ConfirmationChanged value,
          $Res Function(_ConfirmationChanged) then) =
      __$ConfirmationChangedCopyWithImpl<$Res>;
  $Res call({String confirmation});
}

/// @nodoc
class __$ConfirmationChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$ConfirmationChangedCopyWith<$Res> {
  __$ConfirmationChangedCopyWithImpl(
      _ConfirmationChanged _value, $Res Function(_ConfirmationChanged) _then)
      : super(_value, (v) => _then(v as _ConfirmationChanged));

  @override
  _ConfirmationChanged get _value => super._value as _ConfirmationChanged;

  @override
  $Res call({
    Object confirmation = freezed,
  }) {
    return _then(_ConfirmationChanged(
      confirmation == freezed ? _value.confirmation : confirmation as String,
    ));
  }
}

/// @nodoc
class _$_ConfirmationChanged
    with DiagnosticableTreeMixin
    implements _ConfirmationChanged {
  const _$_ConfirmationChanged(this.confirmation)
      : assert(confirmation != null);

  @override
  final String confirmation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.confirmationChanged(confirmation: $confirmation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.confirmationChanged'))
      ..add(DiagnosticsProperty('confirmation', confirmation));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfirmationChanged &&
            (identical(other.confirmation, confirmation) ||
                const DeepCollectionEquality()
                    .equals(other.confirmation, confirmation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(confirmation);

  @JsonKey(ignore: true)
  @override
  _$ConfirmationChangedCopyWith<_ConfirmationChanged> get copyWith =>
      __$ConfirmationChangedCopyWithImpl<_ConfirmationChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult confirmationChanged(String confirmation),
    @required TResult toggleShowConfirm(),
    @required TResult loginPressed(),
    @required TResult registrationPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return confirmationChanged(confirmation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult confirmationChanged(String confirmation),
    TResult toggleShowConfirm(),
    TResult loginPressed(),
    TResult registrationPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmationChanged != null) {
      return confirmationChanged(confirmation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult confirmationChanged(_ConfirmationChanged value),
    @required TResult toggleShowConfirm(_ToggleShowConfirm value),
    @required TResult loginPressed(_LoginPressed value),
    @required TResult registrationPressed(_RegistrationTriggers value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return confirmationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult confirmationChanged(_ConfirmationChanged value),
    TResult toggleShowConfirm(_ToggleShowConfirm value),
    TResult loginPressed(_LoginPressed value),
    TResult registrationPressed(_RegistrationTriggers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmationChanged != null) {
      return confirmationChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmationChanged implements AuthEvent {
  const factory _ConfirmationChanged(String confirmation) =
      _$_ConfirmationChanged;

  String get confirmation;
  @JsonKey(ignore: true)
  _$ConfirmationChangedCopyWith<_ConfirmationChanged> get copyWith;
}

/// @nodoc
abstract class _$ToggleShowConfirmCopyWith<$Res> {
  factory _$ToggleShowConfirmCopyWith(
          _ToggleShowConfirm value, $Res Function(_ToggleShowConfirm) then) =
      __$ToggleShowConfirmCopyWithImpl<$Res>;
}

/// @nodoc
class __$ToggleShowConfirmCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$ToggleShowConfirmCopyWith<$Res> {
  __$ToggleShowConfirmCopyWithImpl(
      _ToggleShowConfirm _value, $Res Function(_ToggleShowConfirm) _then)
      : super(_value, (v) => _then(v as _ToggleShowConfirm));

  @override
  _ToggleShowConfirm get _value => super._value as _ToggleShowConfirm;
}

/// @nodoc
class _$_ToggleShowConfirm
    with DiagnosticableTreeMixin
    implements _ToggleShowConfirm {
  const _$_ToggleShowConfirm();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.toggleShowConfirm()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.toggleShowConfirm'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ToggleShowConfirm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult confirmationChanged(String confirmation),
    @required TResult toggleShowConfirm(),
    @required TResult loginPressed(),
    @required TResult registrationPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return toggleShowConfirm();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult confirmationChanged(String confirmation),
    TResult toggleShowConfirm(),
    TResult loginPressed(),
    TResult registrationPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toggleShowConfirm != null) {
      return toggleShowConfirm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult confirmationChanged(_ConfirmationChanged value),
    @required TResult toggleShowConfirm(_ToggleShowConfirm value),
    @required TResult loginPressed(_LoginPressed value),
    @required TResult registrationPressed(_RegistrationTriggers value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return toggleShowConfirm(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult confirmationChanged(_ConfirmationChanged value),
    TResult toggleShowConfirm(_ToggleShowConfirm value),
    TResult loginPressed(_LoginPressed value),
    TResult registrationPressed(_RegistrationTriggers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toggleShowConfirm != null) {
      return toggleShowConfirm(this);
    }
    return orElse();
  }
}

abstract class _ToggleShowConfirm implements AuthEvent {
  const factory _ToggleShowConfirm() = _$_ToggleShowConfirm;
}

/// @nodoc
abstract class _$LoginPressedCopyWith<$Res> {
  factory _$LoginPressedCopyWith(
          _LoginPressed value, $Res Function(_LoginPressed) then) =
      __$LoginPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginPressedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LoginPressedCopyWith<$Res> {
  __$LoginPressedCopyWithImpl(
      _LoginPressed _value, $Res Function(_LoginPressed) _then)
      : super(_value, (v) => _then(v as _LoginPressed));

  @override
  _LoginPressed get _value => super._value as _LoginPressed;
}

/// @nodoc
class _$_LoginPressed with DiagnosticableTreeMixin implements _LoginPressed {
  const _$_LoginPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.loginPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.loginPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult confirmationChanged(String confirmation),
    @required TResult toggleShowConfirm(),
    @required TResult loginPressed(),
    @required TResult registrationPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return loginPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult confirmationChanged(String confirmation),
    TResult toggleShowConfirm(),
    TResult loginPressed(),
    TResult registrationPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginPressed != null) {
      return loginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult confirmationChanged(_ConfirmationChanged value),
    @required TResult toggleShowConfirm(_ToggleShowConfirm value),
    @required TResult loginPressed(_LoginPressed value),
    @required TResult registrationPressed(_RegistrationTriggers value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return loginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult confirmationChanged(_ConfirmationChanged value),
    TResult toggleShowConfirm(_ToggleShowConfirm value),
    TResult loginPressed(_LoginPressed value),
    TResult registrationPressed(_RegistrationTriggers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginPressed != null) {
      return loginPressed(this);
    }
    return orElse();
  }
}

abstract class _LoginPressed implements AuthEvent {
  const factory _LoginPressed() = _$_LoginPressed;
}

/// @nodoc
abstract class _$RegistrationTriggersCopyWith<$Res> {
  factory _$RegistrationTriggersCopyWith(_RegistrationTriggers value,
          $Res Function(_RegistrationTriggers) then) =
      __$RegistrationTriggersCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegistrationTriggersCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$RegistrationTriggersCopyWith<$Res> {
  __$RegistrationTriggersCopyWithImpl(
      _RegistrationTriggers _value, $Res Function(_RegistrationTriggers) _then)
      : super(_value, (v) => _then(v as _RegistrationTriggers));

  @override
  _RegistrationTriggers get _value => super._value as _RegistrationTriggers;
}

/// @nodoc
class _$_RegistrationTriggers
    with DiagnosticableTreeMixin
    implements _RegistrationTriggers {
  const _$_RegistrationTriggers();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.registrationPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.registrationPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegistrationTriggers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult confirmationChanged(String confirmation),
    @required TResult toggleShowConfirm(),
    @required TResult loginPressed(),
    @required TResult registrationPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return registrationPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult confirmationChanged(String confirmation),
    TResult toggleShowConfirm(),
    TResult loginPressed(),
    TResult registrationPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registrationPressed != null) {
      return registrationPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult confirmationChanged(_ConfirmationChanged value),
    @required TResult toggleShowConfirm(_ToggleShowConfirm value),
    @required TResult loginPressed(_LoginPressed value),
    @required TResult registrationPressed(_RegistrationTriggers value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmationChanged != null);
    assert(toggleShowConfirm != null);
    assert(loginPressed != null);
    assert(registrationPressed != null);
    return registrationPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult confirmationChanged(_ConfirmationChanged value),
    TResult toggleShowConfirm(_ToggleShowConfirm value),
    TResult loginPressed(_LoginPressed value),
    TResult registrationPressed(_RegistrationTriggers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registrationPressed != null) {
      return registrationPressed(this);
    }
    return orElse();
  }
}

abstract class _RegistrationTriggers implements AuthEvent {
  const factory _RegistrationTriggers() = _$_RegistrationTriggers;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _AuthState call(
      {@required String emailAdress,
      @required String password,
      @required String confirmation,
      @required bool showConfirmation,
      @required String errorMessage}) {
    return _AuthState(
      emailAdress: emailAdress,
      password: password,
      confirmation: confirmation,
      showConfirmation: showConfirmation,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  String get emailAdress;
  String get password;
  String get confirmation;
  bool get showConfirmation;
  String get errorMessage;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {String emailAdress,
      String password,
      String confirmation,
      bool showConfirmation,
      String errorMessage});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object emailAdress = freezed,
    Object password = freezed,
    Object confirmation = freezed,
    Object showConfirmation = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      emailAdress:
          emailAdress == freezed ? _value.emailAdress : emailAdress as String,
      password: password == freezed ? _value.password : password as String,
      confirmation: confirmation == freezed
          ? _value.confirmation
          : confirmation as String,
      showConfirmation: showConfirmation == freezed
          ? _value.showConfirmation
          : showConfirmation as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String emailAdress,
      String password,
      String confirmation,
      bool showConfirmation,
      String errorMessage});
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object emailAdress = freezed,
    Object password = freezed,
    Object confirmation = freezed,
    Object showConfirmation = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_AuthState(
      emailAdress:
          emailAdress == freezed ? _value.emailAdress : emailAdress as String,
      password: password == freezed ? _value.password : password as String,
      confirmation: confirmation == freezed
          ? _value.confirmation
          : confirmation as String,
      showConfirmation: showConfirmation == freezed
          ? _value.showConfirmation
          : showConfirmation as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_AuthState with DiagnosticableTreeMixin implements _AuthState {
  const _$_AuthState(
      {@required this.emailAdress,
      @required this.password,
      @required this.confirmation,
      @required this.showConfirmation,
      @required this.errorMessage})
      : assert(emailAdress != null),
        assert(password != null),
        assert(confirmation != null),
        assert(showConfirmation != null),
        assert(errorMessage != null);

  @override
  final String emailAdress;
  @override
  final String password;
  @override
  final String confirmation;
  @override
  final bool showConfirmation;
  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(emailAdress: $emailAdress, password: $password, confirmation: $confirmation, showConfirmation: $showConfirmation, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('emailAdress', emailAdress))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('confirmation', confirmation))
      ..add(DiagnosticsProperty('showConfirmation', showConfirmation))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthState &&
            (identical(other.emailAdress, emailAdress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAdress, emailAdress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmation, confirmation) ||
                const DeepCollectionEquality()
                    .equals(other.confirmation, confirmation)) &&
            (identical(other.showConfirmation, showConfirmation) ||
                const DeepCollectionEquality()
                    .equals(other.showConfirmation, showConfirmation)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAdress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmation) ^
      const DeepCollectionEquality().hash(showConfirmation) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {@required String emailAdress,
      @required String password,
      @required String confirmation,
      @required bool showConfirmation,
      @required String errorMessage}) = _$_AuthState;

  @override
  String get emailAdress;
  @override
  String get password;
  @override
  String get confirmation;
  @override
  bool get showConfirmation;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith;
}
