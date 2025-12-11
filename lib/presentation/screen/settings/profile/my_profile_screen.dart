import 'package:flutter/material.dart';
import '../../../../resources/app_color.dart';
import 'address_screen.dart';
import 'bank_and_credit_card_screen.dart';
import 'edit_my_profile.dart';
import 'message_center_screen.dart';
import 'notification_screen.dart';
import 'payment_preference_screen.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
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

          centerTitle: true,
          title: Text('My Profile',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
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
                child: Icon(Icons.person_outline_rounded, color: Colors.white),
              ),
            ),
          ]
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            CustomProfileListTile(
              onTap: (){},
              iconData: Icons.person_outline_rounded,
              title: 'Personal Information',
            ),
            CustomProfileListTile(
              onTap: () =>
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentPreferenceScreen())),
              iconData: Icons.payment,
              title: 'Payment Preferences',
            ),
            CustomProfileListTile(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BankAndCreditCardScreen())),
              iconData: Icons.add_card_rounded,
              title: 'Bank & Credit Card',
            ),
            CustomProfileListTile(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationScreen())),
              iconData: Icons.notifications,
              title: 'Notifications',
            ),
            CustomProfileListTile(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessageCenterScreen())),
              iconData: Icons.message,
              title: 'Message Center',
            ),
            CustomProfileListTile(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddressScreen())),
              iconData: Icons.location_on,
              title: 'Address',
            ),
            CustomProfileListTile(
              onTap: (){},
              iconData: Icons.settings,
              title: 'Settings',
            ),

          ],
        ),
      ),
    );
  }
}

class CustomProfileListTile extends StatelessWidget {
  const CustomProfileListTile({
    super.key,
    required this.iconData,
    required this.title,
    required this.onTap
  });

  final IconData iconData;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: Icon(iconData),

          title: Text(title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.appBlack
            ),
          ),

          trailing: Icon(Icons.arrow_forward_ios_outlined),
        ),
        Divider(
          indent: 10,
          endIndent: 10,
          color: Colors.black12,
          thickness: 2,
        )
      ],
    );
  }
}

