import 'package:demo_bank/resources/app_style.dart';
import 'package:flutter/material.dart';

class IntroductionPage1 extends StatelessWidget {
  const IntroductionPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/intro1.jpeg'),
            AppStyles.appGap(10.0),
            
            Text('Fastest Payment in the world',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
                ),
            ),
            AppStyles.appGap(10.0),

            Text('Integrate multiple payment methoods to help you up the process quickly',
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
