import 'package:demo_bank/presentation/widget/custom_text_field.dart';
import 'package:demo_bank/resources/app_style.dart';
import 'package:flutter/material.dart';
import '../../../../resources/app_color.dart';

class MessageCenterScreen extends StatefulWidget {
  const MessageCenterScreen({super.key});

  @override
  State<MessageCenterScreen> createState() => _MessageCenterScreenState();
}

class _MessageCenterScreenState extends State<MessageCenterScreen> {
  
  final messageTextController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actionsPadding: EdgeInsets.only(right: 10.0),
          backgroundColor: AppColors.primaryColor,
          leadingWidth: 40,
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
          ),

          centerTitle: true,
          title: Text('Message Center',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          )
      ),
      
      bottomNavigationBar: SafeArea(
          child: Container(
            padding: EdgeInsetsGeometry.all(10.0),
            color: Colors.grey[200],
            child: Row(children: [
              Expanded(
                flex: 7,
                  child: CustomTextField(
                      textController: messageTextController,
                      hintText: 'Write me text'
                  )
              ),
              AppStyles.appGap(10.0),

              Expanded(
                flex: 3,
                  child: MaterialButton(
                  onPressed: (){

                  },
                    color: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0)),
                    ),
                    child: Text('Send',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    ),
              )
            )
            ]
              ),
          )
      ),
    );
  }
}
