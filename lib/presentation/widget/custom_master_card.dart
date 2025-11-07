import 'dart:math';
import 'package:flutter/material.dart';
import '../../resources/app_style.dart';

class CustomMasterCard extends StatelessWidget {
  const CustomMasterCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Color(0xff4B5B98)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Transform.rotate(
                  angle: pi/2,
                  child: Icon(Icons.sim_card, size: 40.0, color: Colors.white38)),

              Transform.rotate(
                  angle: pi/2,
                  child: Icon(Icons.wifi, size: 30.0, color: Colors.white38)),
            ],
          ),
          AppStyles.appGap(10.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('4562',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  )
              ),

              Text('1122',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  )
              ),

              Text('4595',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  )
              ),

              Text('7852',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  )
              ),
            ],
          ),
          AppStyles.appGap(10.0),

          Text('AR jonson',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              )
          ),
          AppStyles.appGap(10.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text('Entry Date',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white38
                          )
                      ),
                      Text('24/2000',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          )
                      ),
                    ],
                  ),
                  AppStyles.appGap(10.0),

                  Column(
                    children: [
                      Text('CVV',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white38
                          )
                      ),
                      Text('6986',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          )
                      ),
                    ],
                  ),
                ],
              ),

              Column(
                children: [
                  Image.asset('assets/images/master_card.png', height: 36, width: 36),
                  Text('Mastercard',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      )
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}