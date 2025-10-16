import 'package:demo_bank/presentation/widget/custom_text_field.dart';
import 'package:demo_bank/resources/app_color.dart';
import 'package:demo_bank/resources/app_style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      // appBar: AppBar(
      //   leadingWidth: 80,
      //   leading: GestureDetector(
      //     onTap: (){
      //       Navigator.of(context);
      //     },
      //     child: Container(
      //         padding: EdgeInsets.all(10.0),
      //         margin: EdgeInsets.all(10.0),
      //         decoration: BoxDecoration(
      //             color: Colors.black26,
      //             shape: BoxShape.circle
      //         ),
      //         child: Center(child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black))
      //     ),
      //   )
      // ),

      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height*0.08,
            ),

            Text('Sign In',
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: height*0.08,
            ),

            Text('Email Address',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                  fontWeight: FontWeight.w500
              ),
            ),
            AppStyles.appGap(5.0),

            CustomTextField(
                textController: emailController,
                hintText: 'Email address',
                prefixIconData: Icon(Icons.email_outlined, color: AppColors.primaryColor),
            ),
            AppStyles.appGap(10.0),

            Text('Password',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                  fontWeight: FontWeight.w500
              ),
            ),
            AppStyles.appGap(5.0),

            CustomTextField(
              textController: emailController,
              hintText: 'Password',
              prefixIconData: Icon(Icons.key, color: AppColors.primaryColor),
            )

          ],
        ),
      ),


    );
  }
}
