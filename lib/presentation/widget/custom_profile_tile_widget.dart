import 'package:flutter/material.dart';
import '../../resources/app_color.dart';

class CustomProfileTileWidget extends StatelessWidget {
  const CustomProfileTileWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: Text(title,
            style : TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.appBlack
            ),
          ),

          trailing: Icon(Icons.arrow_forward_ios_outlined),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.black38,
          indent: 15.0,
          endIndent: 15.0,
        ),
      ],
    );
  }
}