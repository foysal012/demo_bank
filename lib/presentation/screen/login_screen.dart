import 'package:demo_bank/presentation/screen/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:demo_bank/presentation/screen/signup_screen.dart';
import 'package:demo_bank/presentation/widget/custom_text_field.dart';
import 'package:demo_bank/resources/app_color.dart';
import 'package:demo_bank/resources/app_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isObSecureText = true;
  final formKey = GlobalKey<FormState>();

  bool isButtonLoading = false;

  void login({required String email, required String password}) async{
    isButtonLoading = true;
    setState(() {

    });
    try{
     final response = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );

     debugPrint("Output: ${response}");

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Successfully Login')));

      await Future.delayed(Duration(seconds: 2), () {
       Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNavBarScreen()));
      });
    } on FirebaseAuthException catch (e) {
      String message = 'An error occurred';
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password provided.';
      }
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$message')));
    } catch(e){
      debugPrint('Exception: ${e.toString()}');
    } finally{
      isButtonLoading = false;
      setState(() {

      });
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Form(
          key: formKey,
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
                  validator: (value) => value.toString().isEmpty? 'Email is required':null,
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
                validator: (value) {
                  if(value.toString().isEmpty){
                  return 'Password is required';
                  } else if(value.toString().length>12){
                    return 'Too long';
                  } else if(value.toString().length<6){
                    return 'Too short';
                  } else {
                    return null;
                  }
                }
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
                    if(formKey.currentState!.validate()){
                      login(
                        email: emailController.text,
                        password: passwordController.text
                      );
                    }
                  },
                  child: isButtonLoading? CupertinoActivityIndicator(radius: 15.0, color: Colors.white) : Text('Sign In',
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupScreen()));
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'I\'m a new user.',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black38,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign Up',
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
      ),


    );
  }
}
