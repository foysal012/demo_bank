import 'package:flutter/material.dart';
import '../../resources/app_color.dart';

class CustomRequiredHeader extends StatelessWidget {
  const CustomRequiredHeader({
    super.key,
    required this.header,
    this.isRequired = true
  }
      );
  final String header;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(header,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.appBlack
          ),
        ),
        Text(' *',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.appRed
          ),
        ),
      ],
    );
  }
}