// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
//
// class NotificationServices{
//
//   requestPermission() async{
//     final FirebaseMessaging messaging = FirebaseMessaging.instance;
//
//     final settings = await messaging.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );
//
//     if (kDebugMode) {
//       print('Permission granted: ${settings.authorizationStatus}');
//     }
//
//     String? fcmToken = await messaging.getToken();
//
//     debugPrint('Token: ${fcmToken}');
//   }
//
//   void initFCM() async{
//     requestPermission();
//
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       debugPrint('Notification1: ${message}');
//     });
//
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       debugPrint('Notification2: ${message}');
//     });
//
//     FirebaseMessaging.onBackgroundMessage((RemoteMessage message) async{
//       debugPrint('Notification3: ${message}');
//     },);
//   }
// }

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

class NotificationServices {
  Future<void> requestPermission() async {
    final FirebaseMessaging messaging = FirebaseMessaging.instance;

    final settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (kDebugMode) {
      print('Permission granted: ${settings.authorizationStatus}');
    }

    String? fcmToken = await messaging.getToken();
    debugPrint('📱 FCM Token: $fcmToken');
  }

  Future<void> initFCM() async {
    await requestPermission();

    // App খোলা অবস্থায় notification এ ট্যাপ করলে
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      debugPrint('👉 onMessageOpenedApp: ${message.messageId}');
    });

    // App খোলা অবস্থায় notification এলে
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint('👉 onMessage (Foreground): ${message.messageId}');
    });
  }

}
