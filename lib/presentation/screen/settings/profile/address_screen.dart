import 'package:demo_bank/resources/app_style.dart';
import 'package:flutter/material.dart';
import '../../../../resources/app_color.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actionsPadding: EdgeInsets.only(right: 10.0),
          backgroundColor: AppColors.primaryColor,
          leadingWidth: 40,
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
          ),

          centerTitle: true,
          title: Text('Address',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          )
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Select delivery address',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.appBlack,
                fontWeight: FontWeight.bold
              ),
            ),
            AppStyles.appGap(10.0),
            
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0)),
                border: Border.all(
                  width: 1.0,
                  color: AppColors.appFadedBlack
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_circle_outline_outlined, color: AppColors.appBlack),
                  AppStyles.appGap(10.0),

                  Text('Add New Address',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            AppStyles.appGap(10.0),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0)),
                  border: Border.all(
                      width: 1.0,
                      color: AppColors.appFadedBlack
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.shopping_bag, color: AppColors.appBlack, size: 40),
                      AppStyles.appGap(5.0),

                      Text('Work',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      AppStyles.appGap(10.0),

                      Container(
                        padding: EdgeInsetsGeometry.all(5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusGeometry.all(Radius.circular(5.0)),
                          color: AppColors.primaryColor,
                        ),
                        child: Text('Default',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          )
                        ),
                      )
                    ],
                  ),
                  AppStyles.appGap(5.0),

                  Text('Muhammad Raza\n+971-50-1234567',
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.appBlack,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  AppStyles.appGap(10.0),

                  Text('Room # 1 - Ground Floor, AI Najoum Building, 24 B\nStreet, Dubai - United Arab Emirates',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.appFadedBlack,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            AppStyles.appGap(10.0),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0)),
                  border: Border.all(
                      width: 1.0,
                      color: AppColors.primaryColor
                  ),
                color: AppColors.primaryColor.withAlpha(30)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.home, color: AppColors.primaryColor, size: 40),
                          AppStyles.appGap(5.0),
                          
                          Text('Home',
                            style: TextStyle(
                                fontSize: 18,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),

                      Container(
                        padding: EdgeInsetsGeometry.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.primaryColor
                          ),
                          color: AppColors.primaryColor.withAlpha(30),
                          shape: BoxShape.circle
                        ),
                        child: Icon(Icons.check, color: AppColors.primaryColor)
                      )
                    ],
                  ),
                  AppStyles.appGap(5.0),

                  Text('Muhammad Raza\n+971-50-1234567',
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.appBlack,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  AppStyles.appGap(10.0),

                  Text('Abu Dubai Mall - 10th St - Al Zahiyah, Abu Dhabi -\nUnited Arab Emirates',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.appFadedBlack,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            AppStyles.appGap(10.0),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0)),
                  color: Colors.black26
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.info_sharp, color: AppColors.primaryColor),
                  AppStyles.appGap(10.0),

                  FittedBox(
                    child: Text('You are selecting a different city as before which was\nDubai. Delivery charges may vary for this city.',
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.appBlack,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
