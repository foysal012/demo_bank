import 'package:demo_bank/presentation/widget/custom_text_field.dart';
import 'package:demo_bank/resources/app_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../resources/app_color.dart';

class EditMyProfile extends StatefulWidget {
  const EditMyProfile({super.key});

  @override
  State<EditMyProfile> createState() => _EditMyProfileState();
}

class _EditMyProfileState extends State<EditMyProfile> {

  final nameTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final phoneTextController = TextEditingController();
  final dateTextController = TextEditingController();

  @override
  void dispose() {
    nameTextController.dispose();
    emailTextController.dispose();
    phoneTextController.dispose();
    dateTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actionsPadding: EdgeInsets.only(right: 10.0),
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
          title: Text('Edit Profile',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.appBlack
            ),
          ),

          actions: [
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditMyProfile()));
              },
              child: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.black26,
                child: Icon(Icons.person_outline_rounded),
              ),
            ),
          ]
      ),

      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 10.0
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.tealAccent,
                  ),
                  Text('Foysal Joarder',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.appBlack
                    ),
                  ),
                  Text('Software Engineer',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.appFadedBlack
                    ),
                  ),
                ],
              ),
            ),
            AppStyles.appGap(20.0),

            Text('Full Name',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.appBlack
              ),
            ),
            AppStyles.appGap(5.0),

            CustomTextField(
                textController: nameTextController,
                prefixIconData: Icon(Icons.person),
                hintText: 'Enter Name'
            ),
            AppStyles.appGap(10.0),

            Text('Email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.appBlack
              ),
            ),
            AppStyles.appGap(5.0),

            CustomTextField(
                textController: emailTextController,
                prefixIconData: Icon(Icons.email_outlined),
                hintText: 'Enter email'
            ),
            AppStyles.appGap(10.0),

            Text('Phone',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.appBlack
              ),
            ),
            AppStyles.appGap(5.0),

            CustomTextField(
                textController: phoneTextController,
                prefixIconData: Icon(Icons.call_outlined),
                hintText: 'Enter Phone'
            ),
            AppStyles.appGap(10.0),

            Text('Date of Birth',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.appBlack
              ),
            ),
            AppStyles.appGap(5.0),

            CustomTextField(
                textController: dateTextController..text = DateFormat.yMd().format(DateTime.now()),
                prefixIconData: Icon(Icons.call_outlined),
                hintText: 'Enter Date'
            ),
            Spacer(),

            Center(
              child: Text('Join 26, December 2020',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.appFadedBlack
                ),
              ),
            ),
            AppStyles.appGap(10.0),
          ],
        ),
      ),
    );
  }
}
