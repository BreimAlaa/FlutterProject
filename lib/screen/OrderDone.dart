import 'package:final_project/component/GradientButton.dart';
import 'package:flutter/material.dart';

class OrderDone extends StatelessWidget {
  const OrderDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 40),
        IconButton(
          padding: EdgeInsets.all(35),
          onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context);
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
        ),
        // image
        Image.asset(
          'assets/illustration.png',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        SizedBox(height: 70),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ORDER',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' DONE!',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            'The ORDER has been sent. A technician will contact you',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 20),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: GradientButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                text: "GO TO HOME"))
      ]),
    );
  }
}
