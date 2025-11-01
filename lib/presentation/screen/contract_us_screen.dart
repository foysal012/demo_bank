import 'package:flutter/material.dart';
import '../../resources/app_color.dart';
import '../../resources/app_style.dart';
import '../widget/custom_contract_widget.dart';

class ContractUsScreen extends StatelessWidget {
  const ContractUsScreen({super.key});

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
          title: Text('Contract Us',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.appBlack
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

              CustomContractWidget(
                iconData: Icons.call,
                tileText: '01912345678',
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

              CustomContractWidget(
                iconData: Icons.email,
                tileText: 'xyz@gmail.com',
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

              CustomContractWidget(
                iconData: Icons.fax,
                tileText: 'fax%4bgtd67#',
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

              CustomContractWidget(
                iconData: Icons.web,
                tileText: 'contract.com',
              ),

            ],
          ),
        ),
      ),
    );
  }
}
