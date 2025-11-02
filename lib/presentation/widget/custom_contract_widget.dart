import 'package:flutter/material.dart';

class CustomContractWidget extends StatelessWidget {
  const CustomContractWidget({
    super.key,
    required this.iconData,
    required this.tileText
  });

  final IconData iconData;
  final String tileText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.black38
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.white38,
              child: Icon(iconData, color: Colors.white),
            ),

            Text(tileText,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                )
            ),

            Icon(Icons.send, color: Colors.white)
          ]
      ),
    );
  }
}
