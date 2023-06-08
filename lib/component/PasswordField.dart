import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _hidePassword = true;

  void _togglePassword() {
    setState(() {
      _hidePassword = !_hidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1), // Soft shadow color
          blurRadius: 15,
          offset: const Offset(0, 0),
        ),
      ]),
      child: TextField(
        textAlign: TextAlign.center,
        obscureText: _hidePassword,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFECEFEF),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: '********',
          hintStyle: TextStyle(
            letterSpacing: 3.0,
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            height: 1.7,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 16.0),
          suffixIcon: IconButton(
            color: _hidePassword ? Colors.grey : Colors.blue,
            icon: _hidePassword
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            onPressed: _togglePassword,
          ),
        ),
      ),
    );
  }
}
