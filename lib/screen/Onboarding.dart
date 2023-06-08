import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../component/GradientButton.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  void _navigateToNextPage() {
    if (_currentPageIndex == 2) {
      Navigator.pushReplacementNamed(context, '/login');
    }
    _pageController.animateToPage(
      _currentPageIndex + 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
                children: [
                  OnboardingPage(
                      'assets/screen1.png',
                      AppLocalizations.of(context)?.fast ??
                          "Fast reservation with technicians and craftsmen"),
                  OnboardingPage(
                      'assets/screen2.png',
                      AppLocalizations.of(context)?.fast ??
                          "Fast reservation with technicians and craftsmen"),
                  OnboardingPage(
                      'assets/screen3.png',
                      AppLocalizations.of(context)?.fast ??
                          "Fast reservation with technicians and craftsmen"),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(35),
              width: double.infinity,
              child:
              GradientButton(onPressed: _navigateToNextPage, text: "Next"),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final _img;
  final _text;

  OnboardingPage(this._img, this._text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              _img,
            ),
            const SizedBox(height: 65),
            Text(
              _text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Poppins',
                  color: Color(0xFF0E9CF9)),
            ),
            const SizedBox(height: 140),
          ],
        ),
      ),
    );
  }
}
