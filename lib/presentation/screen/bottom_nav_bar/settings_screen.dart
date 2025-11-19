import 'package:demo_bank/presentation/screen/login_screen.dart';
import 'package:demo_bank/resources/app_color.dart';
import 'package:demo_bank/resources/app_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../widget/custom_profile_tile_widget.dart';
import '../biometric_screen.dart';
import '../settings/admob/banner_add_widget.dart';
import '../settings/admob/intertential_add_widget.dart';
import '../settings/admob/reward_ad_screen.dart';
import '../settings/change_password_screen.dart';
import '../contract_us_screen.dart';
import '../settings/language_screen.dart';
import '../settings/my_profile_screen.dart';
import '../settings/privacy_policy_screen.dart';

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
        backgroundColor: AppColors.primaryColor,
        // leading: Icon(Icons.arrow_back_ios_new, color: Colors.white),

        centerTitle: true,
        title: Text('Settings',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),

        actions: [
          GestureDetector(
            onTap: () async{
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false,);
            },
            child: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.black26,
              child: Icon(Icons.logout, color: Colors.red),
            ),
          ),
        ],
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LanguageScreen()));
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => BiometricScreen()));
                },
                title: 'Biometrics',
              ),
              AppStyles.appGap(10.0),
          
              CustomProfileTileWidget(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => BannerAddWidget()));
                },
                title: 'Banner Add',
              ),
              AppStyles.appGap(10.0),
          
          
              CustomProfileTileWidget(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => IntertentialAddWidget()));
                },
                title: 'Intertential Add',
              ),
          
              AppStyles.appGap(10.0),
          
          
              CustomProfileTileWidget(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => RewardAdScreen()));
                },
                title: 'Reward Add',
              ),
              AppStyles.appGap(5.0),
            ],
          ),
        ),
      ),
    );
  }
}
