import 'package:demo_bank/resources/app_color.dart';
import 'package:demo_bank/resources/app_style.dart';
import 'package:flutter/material.dart';

import '../widget/custom_profile_tile_widget.dart';
import 'change_password_screen.dart';
import 'contract_us_screen.dart';
import 'my_profile_screen.dart';
import 'privacy_policy_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 10.0),
        leadingWidth: 40,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.black26,
            child: Icon(Icons.arrow_back_ios_new),
          ),
        ),

        centerTitle: true,
        title: Text('Settings',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.appBlack
          ),
        ),

        actions: [
          CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.black26,
            child: Icon(Icons.logout),
          ),
        ],
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('General',
               style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38
              ),
            ),
            AppStyles.appGap(10.0),

            CustomProfileTileWidget(
              onTap: (){

              },
              title: 'Language',
            ),
            AppStyles.appGap(5.0),

            CustomProfileTileWidget(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyProfileScreen()));
              },
              title: 'My Profile',
            ),
            AppStyles.appGap(5.0),

            CustomProfileTileWidget(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContractUsScreen()));
              },
              title: 'Contract us',
            ),
            AppStyles.appGap(10.0),

            Text('Security',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38
              ),
            ),
            AppStyles.appGap(10.0),

            CustomProfileTileWidget(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChangePasswordScreen()));
              },
              title: 'Change Password',
            ),
            AppStyles.appGap(5.0),

            CustomProfileTileWidget(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PrivacyPolicyScreen()));
              },
              title: 'Privacy Policies',
            ),
            AppStyles.appGap(10.0),

            Text('Choose what data you share with us',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38
              ),
            ),
            AppStyles.appGap(10.0),

            CustomProfileTileWidget(
              onTap: (){

              },
              title: 'Biometrics',
            ),
            AppStyles.appGap(5.0),
          ],
        ),
      ),
    );
  }
}
