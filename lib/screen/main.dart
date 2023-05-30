import 'package:flutter/material.dart';

import 'Home.dart';
import 'Splash.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/splash',
        routes: {
          '/home': (context) => Home(),
          '/splash': (context) => Splash(),
        },
        home: Scaffold(
            body: Container(
              color: Colors.blue,
              child: Center(
                child: Text("Main"),
              ),
            )
        )

      // Home(),
    );
  }
}
