import 'package:flutter/material.dart';
import '../../constant/app_text.dart';
import '../../resources/app_color.dart';
import '../../resources/app_style.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actionsPadding: EdgeInsets.only(right: 10.0),
          scrolledUnderElevation: 0,
          leadingWidth: 40,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.black26,
                child: Icon(Icons.arrow_back_ios_new),
              ),
            ),
          ),

          centerTitle: true,
          title: Text('Terms & Condition',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.appBlack
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
