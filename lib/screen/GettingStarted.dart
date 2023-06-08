import 'package:flutter/material.dart';

import '../component/Service.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({super.key});

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  int _selectedIndex = 0;
  final _widgetOptions = [
    {
      'name': 'Service',
      'icon': ImageIcon(AssetImage('assets/LOGO.png')),
      'widget': Service(),
    },
    {
      'name': 'Orders',
      'icon': Icon(Icons.monetization_on_outlined),
      'widget': Text("data"),
    },
    {
      'name': 'Account',
      'icon': Icon(Icons.account_circle_outlined),
      'widget': Text("data"),
    },
    {
      'name': 'More',
      'icon': Icon(Icons.more_horiz),
      'widget': Text("data"),
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                color: Colors.black),
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
