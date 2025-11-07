import 'package:demo_bank/presentation/screen/login_screen.dart';
import 'package:demo_bank/presentation/screen/splash_screen.dart';
import 'package:demo_bank/services/notification_services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'presentation/screen/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'presentation/screen/introduction/introduction_screen.dart';
import 'presentation/screen/language_screen.dart';

// ⬇️ Top-level background handler (class-এর বাইরে)
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  debugPrint('🔔 Handling a background message: ${message.messageId}');
}

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  final notificationServices = NotificationServices();
  notificationServices.initFCM();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: BottomNavBarScreen(),
      // home: LoginScreen(),
      // home: IntroductionScreen(),
      // home: LanguageScreen()
    );
  }
}
