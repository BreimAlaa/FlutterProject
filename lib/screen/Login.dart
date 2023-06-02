import 'package:final_project/component/LoginView.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF346EDF), Color(0xFF6FC8FB)],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 85),
              child: Image.asset(
                'assets/LOGO.png',
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 600,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: DefaultTabController(
                length: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: TabBar(
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.grey,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.blue,
                        tabs: [
                          Tab(
                            child: Text('Service Provider'),
                          ),
                          Tab(
                            child: Text('Customer'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          LoginPage(),
                          LoginPage(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class LoginPage extends StatelessWidget {
//   final String tabText;
//
//   LoginPage({required this.tabText});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(20),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             tabText,
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 20),
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'Phone',
//             ),
//           ),
//           SizedBox(height: 10),
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'Password',
//             ),
//           ),
//           SizedBox(height: 10),
//           Row(
//             children: [
//               Checkbox(
//                 value: false,
//                 onChanged: (value) {},
//               ),
//               Text('Remember Me'),
//               Spacer(),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text(
//                   'Forgot Password',
//                   style: TextStyle(
//                     color: Colors.blue,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
