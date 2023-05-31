import 'package:flutter/material.dart';

class GradientButtonFullSize extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const GradientButtonFullSize({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55, // Full width
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF346EDF),
            Color(0xff346edf),
            Color(0xFF6FC8FB)
          ], // Gradient colors
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Soft shadow color
            blurRadius: 15,
            offset: const Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onPressed,
          splashColor: Colors.white.withOpacity(0.5), // Ripple effect color
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
