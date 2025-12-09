import 'package:flutter/material.dart';
import '../../../../resources/app_color.dart';
import '../../../../resources/app_style.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actionsPadding: EdgeInsets.only(right: 10.0),
          backgroundColor: AppColors.primaryColor,
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back_ios_new, color: Colors.white
              )
          ),

          centerTitle: true,
          title: Text('Notification',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          )
      ),

      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: SingleChildScrollView(
            child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          showDialog(
                              context: context, 
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('Notification Details'),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(' such as a sound or on-screen icon, that informs a user about something new, like a message, an update, or an alert. It can also refer to a formal announcement or the act of informing someone of something.')
                                    ],
                                  ),
                                  actions: [
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Cancel',style: TextStyle(fontSize: 14, color: Colors.red, fontWeight: FontWeight.bold)),
                                    ),

                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Ok',style: TextStyle(fontSize: 14, color: Colors.green, fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                );
                              },
                          );
                        },
                        leading: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor
                          ),
                          child: Icon(Icons.notification_important_rounded, color: Colors.white),
                        ),

                        title: Text('A notification is an alert or message',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.appBlack
                          ),
                        ),
                        subtitle: Text(' such as a sound or on-screen icon, that informs a user about something new, like a message, an update, or an alert. It can also refer to a formal announcement or the act of informing someone of something.',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38
                          ),
                        ),

                        // trailing: Text('-${dataInfo.amount}',
                        //   style: TextStyle(
                        //       fontSize: 14,
                        //       fontWeight: FontWeight.bold,
                        //       color: AppColors.appRed
                        //   ),
                        // ),
                      );

                    },
                  ),
                  AppStyles.appGap(20.0),
                ]
            ),
          )
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}
