import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bloc/bloc/auth_check_bloc/auth_check_bloc.dart';
import 'package:my_bloc/screens/home/home.dart';
import 'package:my_bloc/screens/sign_in/sign_in_page.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash-screen';

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCheckBloc, AuthCheckState>(
      listener: (context, state) {
        if (state is AuthCheckInitial) {
          return;
        } else if (state is AuthCheckAuthenticated) {
          Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
        } else if (state is AuthCheckUnauthenticated) {
          Navigator.of(context).pushReplacementNamed(SignInScreen.routeName);
        }
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
