import 'package:flutter/material.dart';

import 'Login.dart';
import 'Onboarding.dart';
import 'Splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // SET DEFALUT COLOR TO WHITE
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      initialRoute: '/splash',
      routes: {
        '/home': (context) => Onboarding(),
        '/splash': (context) => Splash(),
        '/login': (context) => Login(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
