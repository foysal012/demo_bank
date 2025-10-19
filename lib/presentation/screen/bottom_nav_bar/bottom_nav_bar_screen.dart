import 'package:demo_bank/presentation/screen/home_screen.dart';
import 'package:demo_bank/presentation/screen/my_card_screen.dart';
import 'package:demo_bank/presentation/screen/settings_screen.dart';
import 'package:demo_bank/presentation/screen/statistics_screen.dart';
import 'package:demo_bank/resources/app_color.dart';
import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {

  List<Widget> pages = [
    HomeScreen(),
    MyCardScreen(),
    StatisticsScreen(),
    SettingsScreen()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white30,
          currentIndex: currentIndex,
          onTap: (value) {
            currentIndex = value;
            setState(() {

            });
          },
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.black38,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: 'My Cards'),
            BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: 'Statistics'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ]
      ),
    );
  }
}
