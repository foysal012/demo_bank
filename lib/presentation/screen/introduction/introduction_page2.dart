import 'package:flutter/material.dart';
import '../../../resources/app_style.dart';

class IntroductionPage2 extends StatelessWidget {
  const IntroductionPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/intro2.jpeg'),
            AppStyles.appGap(10.0),

            Text('The most Secoure Platfrom for Customer',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),
            ),
            AppStyles.appGap(10.0),

            Text('Built-in Fingerprint, face recognition and more, keeping you completely safe',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black38
              ),
            ),
          ],
        ),
      ),
    );
  }
}
