import 'package:final_project/component/GradientButton.dart';
import 'package:final_project/component/PhoneNumberField.dart';
import 'package:flutter/material.dart';

import 'PasswordField.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 32),
            PhoneNumberField(),
            SizedBox(height: 32),
            PasswordField(),
            SizedBox(height: 32),
            Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    setState(() {
                      _rememberMe = !_rememberMe;
                    });
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 36,
                        width: 20,
                        child: Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          value: _rememberMe,
                          onChanged: (value) {
                            setState(() {
                              _rememberMe = value!;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text('Remember Me'),
                      SizedBox(width: 8.0),
                    ],
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child:
                      Text('Forgot Password?', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            SizedBox(height: 32),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('New Member?', style: TextStyle(fontSize: 16)),
                    TextButton(
                      style: TextButton.styleFrom(
                        visualDensity: VisualDensity.compact,
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {},
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                    height: 50,
                    width: 160,
                    child: GradientButton(onPressed: () {}, text: "Login")),
              ],
            ),
            Spacer(),
            TextButton(
                onPressed: () {},
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text('Get Started Now',
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                  Icon(Icons.arrow_forward_ios, size: 16)
                ])),
            SizedBox(height: 32),
          ],
        ));
  }
}
