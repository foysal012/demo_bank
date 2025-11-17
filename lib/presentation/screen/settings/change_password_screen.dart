import 'package:flutter/material.dart';
import '../../../resources/app_color.dart';
import '../../../resources/app_style.dart';
import '../../widget/custom_text_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {

  final oldPassTextController = TextEditingController();
  final newPassTextController = TextEditingController();
  final confirmPassTextController = TextEditingController();

  bool oldObscure = true;
  bool newObscure = true;
  bool confirmObscure = true;

  @override
  void dispose() {
    oldPassTextController.dispose();
    newPassTextController.dispose();
    confirmPassTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 10.0),
        backgroundColor: AppColors.primaryColor,
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios_new, color: Colors.white
            )
        ),

        title: Text('Change Password',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text('Old Password',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                  fontWeight: FontWeight.w500
              ),
            ),
            AppStyles.appGap(5.0),

            CustomTextField(
              textController: oldPassTextController,
              hintText: 'Old Password',
              prefixIconData: Icon(Icons.key, color: AppColors.primaryColor),
              suffixIconData: IconButton(
                  onPressed: (){
                    setState(() {
                      oldObscure =! oldObscure;
                    });
                  },
                  icon: Icon(oldObscure?Icons.visibility_off:Icons.visibility)
              ),
              isObSecureText: oldObscure,
            ),
            AppStyles.appGap(10),

            Text('New Password',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                  fontWeight: FontWeight.w500
              ),
            ),
            AppStyles.appGap(5.0),

            CustomTextField(
              textController: newPassTextController,
              hintText: 'New Password',
              prefixIconData: Icon(Icons.key, color: AppColors.primaryColor),
              suffixIconData: IconButton(
                  onPressed: (){
                    setState(() {
                      newObscure =! newObscure;
                    });
                  },
                  icon: Icon(newObscure?Icons.visibility_off:Icons.visibility)
              ),
              isObSecureText: newObscure,
            ),
            AppStyles.appGap(10.0),

            Text('Confirm Password',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                  fontWeight: FontWeight.w500
              ),
            ),
            AppStyles.appGap(5.0),

            CustomTextField(
              textController: confirmPassTextController,
              hintText: 'Confirm Password',
              prefixIconData: Icon(Icons.key, color: AppColors.primaryColor),
              suffixIconData: IconButton(
                  onPressed: (){
                    setState(() {
                      confirmObscure =! confirmObscure;
                    });
                  },
                  icon: Icon(confirmObscure?Icons.visibility_off:Icons.visibility)
              ),
              isObSecureText: confirmObscure,
            ),
            AppStyles.appGap(30.0),
            
            Center(
              child: MaterialButton(
                  padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 14.0),
                  onPressed: (){

                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  color: AppColors.primaryColor,
                  child: Text('Submit',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
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
