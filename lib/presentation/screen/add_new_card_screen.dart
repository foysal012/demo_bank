import 'package:demo_bank/presentation/widget/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../resources/app_color.dart';
import '../../resources/app_style.dart';
import '../widget/custom_text_field.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({super.key});

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {

  final cardHolderNameTextController = TextEditingController();
  final expiryDateTextController = TextEditingController();
  final cvvTextController = TextEditingController();
  final cardTextController = TextEditingController();

  @override
  void dispose() {
    cardHolderNameTextController.dispose();
    expiryDateTextController.dispose();
    cvvTextController.dispose();
    cardTextController.dispose();
    super.dispose();
  }

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
          title: Text('Add New Card',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 230,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.purple
              ),
            ),
            AppStyles.appGap(20.0),

            Text('Card Holder Name',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.appBlack
              ),
            ),
            AppStyles.appGap(5.0),

            CustomTextField(
                textController: cardHolderNameTextController,
                prefixIconData: Icon(Icons.person),
                hintText: 'Enter Card Holder Name'
            ),
            AppStyles.appGap(10.0),

            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Expiry Date',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.appBlack
                        ),
                      ),
                      AppStyles.appGap(5.0),

                      CustomTextField(
                          textController: expiryDateTextController..text = '${DateFormat.yMd().format(DateTime.now())}',
                          prefixIconData: Icon(Icons.date_range),
                          hintText: 'Enter Expiry Date'
                      ),
                    ],
                  ),
                ),
                AppStyles.appGap(10.0),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CVV',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.appBlack
                        ),
                      ),
                      AppStyles.appGap(5.0),

                      CustomTextField(
                          textController: cvvTextController,
                          prefixIconData: Icon(Icons.numbers),
                          hintText: 'Enter CVV'
                      ),
                    ],
                  ),
                ),
              ],
            ),
            AppStyles.appGap(10.0),

            Text('Card Number',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.appBlack
              ),
            ),
            AppStyles.appGap(5.0),

            CustomTextField(
                textController: cardTextController,
                prefixIconData: Icon(Icons.credit_card),
                hintText: 'Enter Card Number'
            ),
            AppStyles.appGap(20.0),

            CustomPrimaryButton(
                onTap: (){

                },
                buttonText: 'Add'
            )
          ],
        ),
      ),
    );
  }
}
