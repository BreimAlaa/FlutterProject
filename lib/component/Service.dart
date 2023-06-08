import 'package:flutter/material.dart';

class Service extends StatelessWidget {
  final _titles = List.filled(12, "Carpenter");
  final _icons = [
    Icons.home_outlined,
    Icons.search_outlined,
    Icons.person_outlined,
    Icons.add_outlined,
    Icons.search_outlined,
    Icons.favorite_border_outlined,
    Icons.home_outlined,
    Icons.person_outlined,
    Icons.favorite_border_outlined,
    Icons.add_outlined,
    Icons.search_outlined,
    Icons.favorite_border_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> _tiles = List.generate(
      12,
      (index) => Material(
        child: InkWell(
          onTap: () {
            print('tapped');
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(_icons[index], color: Colors.blue),
                SizedBox(height: 8),
                Text(_titles[index], style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
        ),
      ),
    );

    return Stack(
      children: [
        Image.asset(
          'assets/appbar.png',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Positioned(
          top: 45,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 40),
                  Spacer(),
                  SizedBox(
                    height: 35,
                    child: Image.asset(
                      'assets/LOGO.png',
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.notifications_active_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 30),
              // 300 * 35 white box with shadow
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Select Service Text
              Container(
                // margin: EdgeInsets.all(10),
                child: Text(
                  'Select Service',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                padding: EdgeInsets.all(20),
                childAspectRatio: 1.15,
                crossAxisCount: 3,
                mainAxisSpacing: 15,
                crossAxisSpacing: 20,
                children: _tiles,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
