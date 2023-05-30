import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      // appbar with title
      appBar: AppBar(
        title: Text("Home"),
      ),
      // body with center text
      body: Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
