import 'package:final_project/component/Account.dart';
import 'package:final_project/component/Orders.dart';
import 'package:final_project/screen/More.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../component/Service.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({super.key});

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _widgetOptions = [
      {
        'name': AppLocalizations.of(context)!.service,
        'icon': ImageIcon(AssetImage('assets/LOGO.png')),
        'widget': Service(),
      },
      {
        'name': AppLocalizations.of(context)!.orders,
        'icon': Icon(Icons.monetization_on_outlined),
        'widget': Orders(),
      },
      {
        'name': AppLocalizations.of(context)!.account,
        'icon': Icon(Icons.account_circle_outlined),
        'widget': Account(),
      },
      {
        'name': AppLocalizations.of(context)!.more,
        'icon': Icon(Icons.more_horiz),
        'widget': More(),
      },
    ];

    var width = MediaQuery.of(context).size.width / _widgetOptions.length;
    return Scaffold(
        backgroundColor: Colors.white,
        body: _widgetOptions.elementAt(_selectedIndex)['widget'] as Widget,
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                transform:
                Matrix4.translationValues(_selectedIndex * width, 0, 0),
                height: 2,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue)),
            Container(
              height: 80,
              child: BottomNavigationBar(
                selectedItemColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Colors.white,
                selectedIconTheme:
                const IconThemeData(color: Colors.white, size: 30),
                selectedFontSize: 12,
                items: _widgetOptions
                    .map((e) => BottomNavigationBarItem(
                  icon: e['icon'] as Widget,
                  label: e['name'] as String,
                ))
                    .toList(),
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                backgroundColor: Color(0xFF6FC8FB),
              ),
            ),
          ],
        ));
  }
}
