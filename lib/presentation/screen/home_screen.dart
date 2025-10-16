import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),

      body: Container(
        child: Column(
          children: [
            Text('Notification')
          ],
        ),
      ),
    );
  }
}
