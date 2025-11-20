import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'auth/login_screen.dart';
import 'bottom_nav_bar/bottom_nav_bar_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    checkUser();
  }

  Future<void> checkUser() async{
    await Future.delayed(Duration(seconds: 2));
    User? user = FirebaseAuth.instance.currentUser;

    debugPrint('${user?.displayName}');
    debugPrint('${user?.emailVerified}');
    debugPrint('${user?.email}');
    debugPrint('${user?.isAnonymous}');
    debugPrint('${user?.metadata}');
    debugPrint('${user?.phoneNumber}');
    debugPrint('${user?.uid}');
    debugPrint('${user?.tenantId}');
    debugPrint('${user?.refreshToken}');
    debugPrint('${user?.photoURL}');

    if(user == null){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false);
    } else {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => BottomNavBarScreen()), (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.40),
            // Image.asset('asset/images/splash_logo.png')
            FlutterLogo(size: 110),
            SizedBox(height: 10.0),
            
            Text('Demo Bank',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.30),

            SpinKitFadingCircle(
              itemBuilder: (BuildContext context, int index) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    color: index.isEven ? Colors.red : Colors.green,
                  ),
                );
              },
            ),

            SizedBox(height: 10.0),
            Text('Design & Developed by',
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            Text('Foysal Joarder',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),

            SizedBox(height: 15.0)
          ],
        ),
      ),
    );
  }
}
