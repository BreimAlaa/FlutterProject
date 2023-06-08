import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'CardInfo.dart';
import 'ChoiceCard.dart';
import 'GettingStarted.dart';
import 'Login.dart';
import 'Onboarding.dart';
import 'OrderDone.dart';
import 'Splash.dart';

void main() => runApp(MyApp());
late BuildContext myContext;

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    myContext = context;
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const Splash(),
        '/home': (context) => const Onboarding(),
        '/login': (context) => Login(),
        '/getting-started': (context) => const GettingStarted(),
        '/choice-card': (context) => const ChoiceCard(),
        '/card-info': (context) => const CardInfo(),
        '/order-done': (context) => const OrderDone(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
