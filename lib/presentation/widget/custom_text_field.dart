import 'package:flutter/material.dart';
import '../../resources/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.textController,
    this.hintText = 'hint text',
    this.prefixIconData,
    this.suffixIconData,
    this.validator,
    this.isObSecureText = false
  });

  final TextEditingController textController;
  final String hintText;
  final Icon? prefixIconData;
  final IconButton? suffixIconData;
  final String? Function(String?)? validator;
  final bool isObSecureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      validator: validator,
      obscureText: isObSecureText,
      obscuringCharacter: '#',
      decoration: InputDecoration(
        prefixIcon: prefixIconData,
        suffixIcon: suffixIconData,
        hintText: hintText,
        hintStyle: TextStyle(color: AppColors.appFadedBlack),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
                color: AppColors.primaryColor,
                width: 1
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
                color: AppColors.primaryColor,
                width: 1
            )
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
                color: AppColors.appRed,
                width: 1
            )
        ),
      ),

    );
  }
}