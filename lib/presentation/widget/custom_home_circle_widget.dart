import 'package:flutter/material.dart';

class CustomHomeCircleWidget extends StatelessWidget {
  const CustomHomeCircleWidget({
    super.key,
    required this.iconData
  });
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black38
      ),
      child: Icon(iconData, color: Colors.white),
    );
  }
}
