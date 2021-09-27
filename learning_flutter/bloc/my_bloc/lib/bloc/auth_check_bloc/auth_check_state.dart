part of 'auth_check_bloc.dart';

@immutable
abstract class AuthCheckState {}

class AuthCheckInitial extends AuthCheckState {}

class AuthCheckAuthenticated extends AuthCheckState {}

class AuthCheckUnauthenticated extends AuthCheckState {}
