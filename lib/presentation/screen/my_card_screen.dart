import 'package:demo_bank/model/payment_model.dart';
import 'package:demo_bank/resources/app_style.dart';
import 'package:flutter/material.dart';
import '../../resources/app_color.dart';

class MyCardScreen extends StatefulWidget {
  const MyCardScreen({super.key});

  @override
  State<MyCardScreen> createState() => _MyCardScreenState();
}

class _MyCardScreenState extends State<MyCardScreen> {

  List<PaymentModel> paymentList = [
    PaymentModel(imgIcon: 'asset/images/apple.png', title: 'Apple Store', subTitle: 'Entertainment', amount: '300.0'),
    PaymentModel(imgIcon: 'asset/images/spotify.jpeg', title: 'Spotify', subTitle: 'Music', amount: '250.0'),
    PaymentModel(imgIcon: 'asset/images/cart.jpeg', title: 'Grocery', subTitle: 'Shopping', amount: '400.0'),
  ];

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
        title: Text('My Cards',
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
            child: Icon(Icons.add),
          ),
        ],
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Container(
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.purple
              ),
            ),
            AppStyles.appGap(10.0),
            
            ListView.builder(
                shrinkWrap: true,
                itemCount: paymentList.length,
                itemBuilder: (context, index) {
                  final dataInfo = paymentList[index];
                  return ListTile(
                    leading: Image.asset('${dataInfo.imgIcon}', height: 100, width: 100),
                    
                    title: Text('${dataInfo.title}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.appBlack
                      ),
                    ),
                    subtitle: Text('${dataInfo.subTitle}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38
                      ),
                    ),
                    
                    trailing: Text('-${dataInfo.amount}',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.appRed
                      ),
                    ),
                  );
                    
                },
            )
          ],
        ),
      ),
    );
  }
}
