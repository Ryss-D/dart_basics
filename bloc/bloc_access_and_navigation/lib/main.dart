import 'dart:developer';

import 'package:bloc_access_and_navigation/presentation/router/app_router.dart';
import 'package:bloc_access_and_navigation/presentation/screens/second_screen.dart';
import 'package:bloc_access_and_navigation/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/cubit/counter_cubit.dart';
import 'presentation/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //final CounterCubit _counterCubit = CounterCubit();
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    //wraping MareaialApp with a bloc with make the bloc
    //avaliable to the entire app and screens
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: _appRouter.onGenerateRoute,
        //! Named routes approach
        // routes: {
        //   '/': (context) => BlocProvider.value(
        //         value: _counterCubit,
        //         child: HomeScreen(
        //           title: 'HomeScreen',
        //           color: Colors.blueAccent,
        //         ),
        //       ),
        //   '/second': (context) => BlocProvider.value(
        //         value: _counterCubit,
        //         child: SecondScreen(
        //           title: 'SecondScreen',
        //           color: Colors.redAccent,
        //         ),
        //       ),
        //   '/third': (context) => BlocProvider.value(
        //         value: _counterCubit,
        //         child: ThirdScreen(
        //           title: 'ThirdScreen',
        //           color: Colors.greenAccent,
        //         ),
        //       )
        // },
        home: const HomeScreen(
          title: 'Flutter Demo Home Page',
          color: Colors.blueAccent,
        ),
      ),
    );
    //   @override
    //   void dispose() {
    //     //we have to close the Cubit manually becasuse BlocProvider.value
    //     //dont close the Cubit automatically as BlocProvider
    //     _appRouter.dispose();
    //     //_counterCubit.close();
    //     super.dispose();
    //   }
  }
}
