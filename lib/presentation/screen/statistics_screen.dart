import 'package:demo_bank/resources/app_style.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../model/payment_model.dart';
import '../../resources/app_color.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {

  final List<ChartData> chartData = <ChartData>[
    ChartData('Jan', 21),
    ChartData('Feb', 24),
    ChartData('Mar', 35),
    ChartData('Apr', 38),
    ChartData('May', 54),
    ChartData('Jun', 21),
    ChartData('Jul', 24),
    ChartData('Aug', 35),
    ChartData('Sep', 38),
    ChartData('Oct', 54),
    ChartData('Nov', 38),
    ChartData('Dec', 54)
  ];

  List<PaymentModel> paymentList = [
    PaymentModel(imgIcon: 'assets/images/apple.jpeg', title: 'Apple Store', subTitle: 'Entertainment', amount: '300.0'),
    PaymentModel(imgIcon: 'assets/images/spotify.png', title: 'Spotify', subTitle: 'Music', amount: '250.0'),
    PaymentModel(imgIcon: 'assets/images/cart.jpeg', title: 'Grocery', subTitle: 'Shopping', amount: '400.0'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actionsPadding: EdgeInsets.only(right: 10.0),
          backgroundColor: AppColors.primaryColor,
          leading: Icon(Icons.arrow_back_ios_new, color: Colors.white),

          centerTitle: true,
          title: Text('Statistics',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),

          actions: [
            CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.black26,
              child: Icon(Icons.notification_important_rounded, color: Colors.white,),
            ),
          ]
        ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Current Balance',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black38
                ),
              ),
              Text('\$ 8674.00',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.appBlack
                ),
              ),
              AppStyles.appGap(10.0),
          
              Container(
                  child: SfCartesianChart(
                      // isTransposed: true,
                      primaryXAxis: CategoryAxis(),
                      series: <CartesianSeries>[
                        SplineSeries<ChartData, String>(
                            dataSource: chartData,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y,
                            width: 8.0,
                        ),
                      ]
                  )
              ),
              AppStyles.appGap(10.0),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Transsection',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),
                  ),
                  Text('Sel All',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue
                    ),
                  ),
                ],
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
          
            ],
          ),
        )
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}