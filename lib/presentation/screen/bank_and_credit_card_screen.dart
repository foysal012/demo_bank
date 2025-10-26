import 'package:demo_bank/presentation/widget/custom_primary_button.dart';
import 'package:flutter/material.dart';
import '../../resources/app_color.dart';
import '../../resources/app_style.dart';
import 'add_new_card_screen.dart';

class BankAndCreditCardScreen extends StatefulWidget {
  const BankAndCreditCardScreen({super.key});

  @override
  State<BankAndCreditCardScreen> createState() => _BankAndCreditCardScreenState();
}

class _BankAndCreditCardScreenState extends State<BankAndCreditCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actionsPadding: EdgeInsets.only(right: 10.0),
          leadingWidth: 40,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.black26,
                child: Icon(Icons.arrow_back_ios_new),
              ),
            ),
          ),

          centerTitle: true,
          title: Text('All Cards',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.appBlack
            ),
          )
      ),

      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 10.0,
        ),
        child: Column(
          children: [
            Container(
              height: 230,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.purple
              ),
            ),
            AppStyles.appGap(10.0),

            Container(
              height: 230,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.purple
              ),
            ),
            AppStyles.appGap(10.0),
          ],
        ),
      ),

      bottomNavigationBar: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomPrimaryButton(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddNewCardScreen()));
                },
                buttonText: 'Add New Card',
            ),
          )
      ),
    );
  }
}
