import 'package:demo_bank/model/payment_model.dart';
import 'package:demo_bank/resources/app_style.dart';
import 'package:flutter/material.dart';
import '../../resources/app_color.dart';
import '../widget/custom_master_card.dart';

class MyCardScreen extends StatefulWidget {
  const MyCardScreen({super.key});

  @override
  State<MyCardScreen> createState() => _MyCardScreenState();
}

class _MyCardScreenState extends State<MyCardScreen> {

  List<PaymentModel> paymentList = [
    PaymentModel(imgIcon: 'asset/images/apple.jpeg', title: 'Apple Store', subTitle: 'Entertainment', amount: '300.0'),
    PaymentModel(imgIcon: 'asset/images/spotify.png', title: 'Spotify', subTitle: 'Music', amount: '250.0'),
    PaymentModel(imgIcon: 'asset/images/cart.jpeg', title: 'Grocery', subTitle: 'Shopping', amount: '400.0'),
  ];

  double initialValue = 10.0;

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomMasterCard(),
              AppStyles.appGap(10.0),
              
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: paymentList.length,
                  itemBuilder: (context, index) {
                    final dataInfo = paymentList[index];
                    return ListTile(
                      leading: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('${dataInfo.imgIcon}'))
                        ),
                      ),
                      
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
              ),
              AppStyles.appGap(20.0),

              Text('Monthly spending limit',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
              AppStyles.appGap(10.0),

              Container(
                height: 180,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Color(0xffF4F4F4)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Amount:\$ 85696.00'),
                    Slider(
                        min: 0,
                        max: 20,
                        value: initialValue,
                        divisions: 20,
                        activeColor: Color(0xff0066FF),
                        inactiveColor: Color(0xffFFFFFF),
                        thumbColor: Color(0xffFFFFFF),
                        label: initialValue.toString(),
                        overlayColor: WidgetStateColor.resolveWith((states) {
                          return Color(0xff9ebded);
                        },),
                        onChanged: (value) {
                          setState(() {
                            initialValue = value;
                          });
                        },
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$ 0.00'),
                          Text('\$ 10000.00')
                        ]
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
