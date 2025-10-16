import 'package:flutter/material.dart';

class CustomPrimaryButton extends StatelessWidget {
  const CustomPrimaryButton({
    super.key,
    required this.onTap,
    required this.buttonText
  });
  final VoidCallback onTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      color: Colors.teal,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10.0),
      ),
      onPressed: onTap,
      child: Text(buttonText,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }
}