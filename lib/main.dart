import 'package:bloc_access_and_routing/presentations/screens/screen_second.dart';
import 'package:bloc_access_and_routing/presentations/screens/screen_third.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './logic/cubit/counter_cubit.dart';
import './presentations/screens/screen_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      routes: {
        '/' : (context) => HomeScreen(),
        '/second' : (context) => SecondScreen(),
        '/third' : (context) => ThirdScreen()
      },
      home: BlocProvider<CounterCubit>(
        create: (context) => CounterCubit(),
        child: HomeScreen(
          title: 'Flutter Demo Home Page',
          color: Colors.blue,),
      ),
    );
  }
}
