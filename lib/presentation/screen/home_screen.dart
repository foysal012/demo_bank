import 'package:demo_bank/presentation/screen/transection_history_screen.dart';
import 'package:flutter/material.dart';

import '../../model/payment_model.dart';
import '../../resources/app_color.dart';
import '../../resources/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // requestPermission() async{
  //   final FirebaseMessaging messaging = FirebaseMessaging.instance;
  //
  //   final settings = await messaging.requestPermission(
  //     alert: true,
  //     announcement: false,
  //     badge: true,
  //     carPlay: false,
  //     criticalAlert: false,
  //     provisional: false,
  //     sound: true,
  //   );
  //
  //   if (kDebugMode) {
  //     print('Permission granted: ${settings.authorizationStatus}');
  //   }
  //
  //   String? token = await messaging.getToken();
  //
  //   debugPrint('Token: ${token}');
  // }
  //
  // void initFCM() async{
  //
  //   FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
  //     debugPrint('Notification1: ${message}');
  //   });
  //
  //   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //     debugPrint('Notification2: ${message}');
  //   });
  //
  //   FirebaseMessaging.onBackgroundMessage((RemoteMessage message) async{
  //     debugPrint('Notification3: ${message}');
  //   },);
  // }
  //
  //
  // @override
  // void initState() {
  //   super.initState();
  //   requestPermission();
  // }

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
        title: Text('Home Screen'),
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
        child: SingleChildScrollView(
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
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomHomeCircleWidget(
                    iconData: Icons.arrow_upward,
                  ),
          
                  CustomHomeCircleWidget(
                    iconData: Icons.arrow_downward,
                  ),
          
                  CustomHomeCircleWidget(
                    iconData: Icons.screen_lock_landscape,
                  ),
          
                  CustomHomeCircleWidget(
                    iconData: Icons.hourglass_top,
                  ),
                ],
              ),
              AppStyles.appGap(10.0),

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
            ],
          ),
        ),
      ),
    );
  }
}

class CustomHomeCircleWidget extends StatelessWidget {
  const CustomHomeCircleWidget({
    super.key,
    required this.iconData
  });
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black38
      ),
      child: Icon(iconData, color: Colors.white),
    );
  }
}
