import 'package:demo_bank/presentation/widget/custom_text_field.dart';
import 'package:demo_bank/resources/app_color.dart';
import 'package:demo_bank/resources/app_style.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isObSecureText = true;

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
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height*0.08,
            ),

            Text('Sign Up',
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: height*0.08,
            ),

            Text('Full Name',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                  fontWeight: FontWeight.w500
              ),
            ),
            AppStyles.appGap(5.0),

            CustomTextField(
              textController: emailController,
              hintText: 'Foysal Joarder',
              prefixIconData: Icon(Icons.drive_file_rename_outline, color: AppColors.primaryColor),
            ),
            AppStyles.appGap(10.0),

            Text('Phone Number',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                  fontWeight: FontWeight.w500
              ),
            ),
            AppStyles.appGap(5.0),

            CustomTextField(
              textController: emailController,
              hintText: '+8801745889632',
              prefixIconData: Icon(Icons.call_outlined, color: AppColors.primaryColor),
            ),
            AppStyles.appGap(10.0),

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
              textController: passwordController,
              hintText: 'Password',
              prefixIconData: Icon(Icons.key, color: AppColors.primaryColor),
              suffixIconData: IconButton(
                  onPressed: (){
                    setState(() {
                      isObSecureText =! isObSecureText;
                    });
                  },
                  icon: Icon(isObSecureText?Icons.visibility_off:Icons.visibility)
              ),
              isObSecureText: isObSecureText,
            ),
            AppStyles.appGap(30.0),

            MaterialButton(
              minWidth: width,
              height: 48,
              color: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10.0),
              ),
              onPressed: (){

              },
              child: Text('Sign Up',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white
                ),
              ),
            ),
            AppStyles.appGap(30.0),

            Center(
              child: GestureDetector(
                onTap: (){

                },
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account.',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black38,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),


    );
  }
}
