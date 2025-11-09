import 'dart:math';
import 'package:demo_bank/resources/app_image.dart';
import 'package:flutter/material.dart';
import '../../resources/app_style.dart';

class CustomMasterCard extends StatelessWidget {
  const CustomMasterCard({
    super.key,
    this.number = '4562658921453658',
    this.type = 'Master Card',
    this.name = 'AR jonson',
    this.cvv = '6986',
    this.expiryDate = '24/2000'
  });

  final String number;
  final String type;
  final String name;
  final String cvv;
  final String expiryDate;

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

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text('4562',
          //         style: TextStyle(
          //             fontSize: 25,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.white
          //         )
          //     ),
          //
          //     Text('1122',
          //         style: TextStyle(
          //             fontSize: 25,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.white
          //         )
          //     ),
          //
          //     Text('4595',
          //         style: TextStyle(
          //             fontSize: 25,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.white
          //         )
          //     ),
          //
          //     Text('7852',
          //         style: TextStyle(
          //             fontSize: 25,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.white
          //         )
          //     ),
          //   ],
          // ),
          Text(number,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 5
              )
          ),
          AppStyles.appGap(10.0),

          Text(name,
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
                      Text('Expiry Date',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white38
                          )
                      ),
                      Text(expiryDate,
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
                      Text(cvv,
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
                  Image.asset(
                      // 'assets/images/master_card.png',
                      type == 'JCB'?AppImage.jcb : type == 'VISA'? AppImage.visa : type == 'MasterCard'? AppImage.mastercard: AppImage.americanExpress,
                      height: 36,
                      width: 36
                  ),
                  Text(type,
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