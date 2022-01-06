import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bloc2/auth_repository.dart';
import 'package:my_bloc2/bloc/auth_check_bloc.dart';
import 'screens/home/home.dart';
import 'screens/sign_in/sign_in_page.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCheckBloc(
            AuthRepository(),
          )..add(AuthEventAuthRequested()),
        ),
// its like havving
// AuthCheckBloc(AtuhRepository());
//AuthCheckBloc.add(AuthEventAuthRequested);
      ],
      child: MaterialApp(
        title: 'Sign In Demo',
        debugShowCheckedModeBanner: false,
        routes: {
          SplashScreen.routeName: (context) => SplashScreen(),
          HomeScreen.routeName: (context) => HomeScreen(),
          SignInScreen.routeName: (context) => SignInScreen(),
        },
        home: HomeScreen(),
        // home: SplashScreen(),
      ),
    );
  }
}
