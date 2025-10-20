import 'package:demo_bank/resources/app_color.dart';
import 'package:demo_bank/resources/app_style.dart';
import 'package:flutter/material.dart';

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
        leading: CircleAvatar(
          radius: 30.0,
          backgroundColor: Colors.black38,
          child: Icon(Icons.arrow_back_ios_new),
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
            radius: 30.0,
            backgroundColor: Colors.black38,
            child: Icon(Icons.logout),
          ),
        ],
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Text('General',
               style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.appBlack
              ),
            ),
            AppStyles.appGap(10.0),

            ListTile(
              leading: Text('Language',
                style : TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.appBlack
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
