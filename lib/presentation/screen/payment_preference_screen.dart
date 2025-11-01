import 'package:demo_bank/presentation/screen/transection_history_screen.dart';
import 'package:demo_bank/resources/app_style.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../model/payment_model.dart';
import '../../resources/app_color.dart';

class PaymentPreferenceScreen extends StatefulWidget {
  const PaymentPreferenceScreen({super.key});

  @override
  State<PaymentPreferenceScreen> createState() => _PaymentPreferenceScreenState();
}

class _PaymentPreferenceScreenState extends State<PaymentPreferenceScreen> {

  final List<ChartData> chartData = [
    ChartData('David', 25),
    ChartData('Steve', 38),
    ChartData('Jack', 34),
    ChartData('Others', 52)
  ];

  List<PaymentModel> paymentList = [
    PaymentModel(imgIcon: 'asset/images/apple.jpeg', title: 'Apple Store', subTitle: 'Entertainment', amount: '300.0'),
    PaymentModel(imgIcon: 'asset/images/spotify.png', title: 'Spotify', subTitle: 'Music', amount: '250.0'),
    PaymentModel(imgIcon: 'asset/images/cart.jpeg', title: 'Grocery', subTitle: 'Shopping', amount: '400.0'),
    PaymentModel(imgIcon: 'asset/images/apple.jpeg', title: 'Apple Store', subTitle: 'Entertainment', amount: '300.0'),
    PaymentModel(imgIcon: 'asset/images/spotify.png', title: 'Spotify', subTitle: 'Music', amount: '250.0'),
    PaymentModel(imgIcon: 'asset/images/cart.jpeg', title: 'Grocery', subTitle: 'Shopping', amount: '400.0'),
    PaymentModel(imgIcon: 'asset/images/apple.jpeg', title: 'Apple Store', subTitle: 'Entertainment', amount: '300.0'),
    PaymentModel(imgIcon: 'asset/images/spotify.png', title: 'Spotify', subTitle: 'Music', amount: '250.0'),
    PaymentModel(imgIcon: 'asset/images/cart.jpeg', title: 'Grocery', subTitle: 'Shopping', amount: '400.0'),
    PaymentModel(imgIcon: 'asset/images/apple.jpeg', title: 'Apple Store', subTitle: 'Entertainment', amount: '300.0'),
    PaymentModel(imgIcon: 'asset/images/spotify.png', title: 'Spotify', subTitle: 'Music', amount: '250.0'),
    PaymentModel(imgIcon: 'asset/images/cart.jpeg', title: 'Grocery', subTitle: 'Shopping', amount: '400.0'),
  ];

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
          title: Text('Payment Preference',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.appBlack
            ),
          )
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppStyles.appGap(50.0),
              Container(
                  child: SfCircularChart(
                      enableMultiSelection: true,
                      series: <CircularSeries>[
                        PieSeries<ChartData, String>(
                            dataSource: chartData,
                            pointColorMapper:(ChartData data, _) => data.color,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y
                        ),
          
                      ]
                  )
              ),
              AppStyles.appGap(20.0),
          
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Transection',style: TextStyle(fontSize: 16, color: AppColors.appBlack, fontWeight: FontWeight.bold)),
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => TransectionHistoryScreen()));
                        },
                        child: Text('See all',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.teal,
                                fontWeight: FontWeight.bold
                            )
                        )
                    ),
                  ]
              ),
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
            ]
          ),
        )
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}
