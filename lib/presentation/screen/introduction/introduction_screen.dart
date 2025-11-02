import 'package:demo_bank/presentation/screen/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:demo_bank/presentation/screen/introduction/introduction_page1.dart';
import 'package:demo_bank/presentation/screen/introduction/introduction_page2.dart';
import 'package:demo_bank/presentation/screen/introduction/introduction_page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {

  PageController controller = PageController();

  bool lastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (value) {
              setState(() {
                lastPage = (value==2);
              });
            },
            children: [
              IntroductionPage1(),
              IntroductionPage2(),
              IntroductionPage3(),
            ],
          ),

          Container(
            alignment: Alignment(0.0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap:(){
                    controller.jumpToPage(2);
                  },
                  child: Text('Skip',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ),

                SmoothPageIndicator(
                    onDotClicked: (index) {
                      controller.jumpToPage(index);
                    },
                    controller: controller,
                    count: 3,
                    axisDirection: Axis.horizontal,
                    effect:  SlideEffect(
                        spacing:  8.0,
                        radius:  4.0,
                        dotWidth:  24.0,
                        dotHeight:  16.0,
                        paintStyle:  PaintingStyle.stroke,
                        strokeWidth:  1.5,
                        dotColor:  Colors.grey,
                        activeDotColor:  Colors.indigo
                    ),
                ),

                lastPage?
                GestureDetector(
                  onTap:(){
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => BottomNavBarScreen()), (route) => false);
                  },
                  child: Text('Done',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ) :
                GestureDetector(
                  onTap:(){
                    controller.nextPage(
                        duration: Duration(microseconds: 500),
                        curve: Curves.bounceInOut
                    );
                  },
                  child: Text('Next',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
