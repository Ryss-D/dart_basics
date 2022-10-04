import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import '/logic/cubit/counter_cubit.dart';
import '/logic/cubit/settings_cubit.dart';
import '/presentation/router/app_router.dart';
import 'logic/cubit/internet_cubit.dart';

// class MyClass extends Equatable {
//   final int value;

//   MyClass({
//     this.value,
//   });

//   @override
//   List<Object> get props => [];
// }

void main() async {
  //We need to ensure the binging becayuse we are callin native code above on get
  //getApllicationDocumentsDirectory, from path provider
  // thtats a pluggin who adapts storage for every os
  WidgetsFlutterBinding.ensureInitialized();
  //We are using hydrated to ensure stata persistency in our bloc
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  HydratedBlocOverrides.runZoned(
    () => runApp(MyApp(
      appRouter: AppRouter(),
      connectivity: Connectivity(),
    )),
    storage: storage,
  );
  // final a = MyClass(value: 1);
  // final b = MyClass(value: 2);

  // print('a == b ' + (a == b).toString());

  // print('a == a ' + (a == a).toString());
  // print('b == b ' + (b == b).toString());

  //runApp(MyApp(
  //appRouter: AppRouter(),
  //connectivity: Connectivity(),
  //));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  final Connectivity connectivity;

  const MyApp({
    Key? key,
    required this.appRouter,
    required this.connectivity,
  }) : super(key: key);

  @override
  Widget build(BuildContext myAppContext) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InternetCubit>(
          create: (internetCubitContext) =>
              InternetCubit(connectivity: connectivity),
        ),
        BlocProvider<CounterCubit>(
          create: (counterCubitContext) => CounterCubit(),
        ),
        BlocProvider<SettingsCubit>(
          create: (counterCubitContext) => SettingsCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
