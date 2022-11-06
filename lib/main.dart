import 'package:flutter/material.dart';
import 'package:world_time_app/Pages/Home.dart';
import 'package:world_time_app/Pages/Location.dart';
import 'package:world_time_app/Pages/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'World Time App',
      initialRoute: '/',
      routes: {
         '/': (context) => const Loading(),
        '/home': (context) => const Home(),
         '/location': (context) => const Location(),
      },
    );
  }
}
