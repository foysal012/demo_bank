import 'package:demo_bank/provider/profile/contract_us_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../resources/app_color.dart';
import '../../../../resources/app_style.dart';
import '../../../widget/custom_contract_widget.dart';

class ContractUsScreen extends StatelessWidget {
  const ContractUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contractUsProvider = Provider.of<ContractUsProvider>(context);
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
          title: Text('Contract Us',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          )
      ),

      body: Container(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Mobile',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500
                )
              ),
              AppStyles.appGap(5.0),

              GestureDetector(
                onTap: () => contractUsProvider.makePhoneCall('01912345678'),
                child: CustomContractWidget(
                  iconData: Icons.call,
                  tileText: '01912345678',
                ),
              ),
              AppStyles.appGap(10.0),

              Text('Email',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  )
              ),
              AppStyles.appGap(5.0),

              GestureDetector(
                onTap: () => contractUsProvider.sendEmail(toEmail: 'xyz@gmail.com',subject: 'About Help Center', body: 'How can i reach Out with your company? for Emergency Need?'),
                child: CustomContractWidget(
                  iconData: Icons.email,
                  tileText: 'xyz@gmail.com',
                ),
              ),
              AppStyles.appGap(10.0),

              Text('Fax',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  )
              ),
              AppStyles.appGap(5.0),

              GestureDetector(
                onTap: () => contractUsProvider.sendFax("021234567"),
                child: CustomContractWidget(
                  iconData: Icons.fax,
                  tileText: '"021234567"',
                ),
              ),
              AppStyles.appGap(10.0),

              Text('Website',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  )
              ),
              AppStyles.appGap(5.0),

              GestureDetector(
                onTap: () => contractUsProvider.openWebsite('https://github.com/foysal012'),
                child: CustomContractWidget(
                  iconData: Icons.web,
                  tileText: 'https://github.com/foysal012',
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
