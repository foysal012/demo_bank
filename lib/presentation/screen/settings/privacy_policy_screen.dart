import 'package:flutter/material.dart';
import '../../../constant/app_text.dart';
import '../../../resources/app_color.dart';
import '../../../resources/app_style.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actionsPadding: EdgeInsets.only(right: 10.0),
          scrolledUnderElevation: 0,
          backgroundColor: AppColors.primaryColor,
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back_ios_new, color: Colors.white
              )
          ),

          centerTitle: true,
          title: Text('Privacy Policy',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          )
      ),

      body: Container(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(AppText.terms1),
              AppStyles.appGap(10.0),
          
              Text(AppText.terms2),
              AppStyles.appGap(10.0),
          
              Text(AppText.terms3),
              AppStyles.appGap(10.0),
              
              Text(AppText.terms4)
          
            ],
          ),
        ),
      ),
    );
  }
}
