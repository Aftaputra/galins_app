import 'package:flutter/material.dart';
import 'first.dart';
import 'second.dart';
import 'third.dart';
import 'fourth.dart';
import 'splash.dart';
import 'devicesLists.dart';
// Import halaman lain

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      routes: {
        '/first': (context) => const FirstPage(),
        '/second': (context) => const SecondPage(),
        '/third': (context) => const ThirdPage(),
        '/fourth': (context) => const FourthPage(),
        '/blelis': (context) => PilihPerangkatPage(),
        // Define routes buat halaman lain
      },
    );
  }
}
