import 'package:demo_bank/presentation/widget/custom_primary_button.dart';
import 'package:demo_bank/provider/profile/all_card_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../resources/app_color.dart';
import '../widget/custom_master_card.dart';
import 'add_new_card_screen.dart';

class BankAndCreditCardScreen extends StatefulWidget {
  const BankAndCreditCardScreen({super.key});

  @override
  State<BankAndCreditCardScreen> createState() => _BankAndCreditCardScreenState();
}

class _BankAndCreditCardScreenState extends State<BankAndCreditCardScreen> {

  @override
  void initState() {
    super.initState();
    Provider.of<AllCardProvider>(context, listen: false).getAllCard();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AllCardProvider>(context);
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

      body: provider.cardItemList.isEmpty?Center(child: CupertinoActivityIndicator(radius: 15.0, color: AppColors.primaryColor)) : Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 10.0,
        ),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: RefreshIndicator(
            onRefresh: () => provider.onRefreshScreen(),
            child: Column(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    reverse: false,
                    itemCount: provider.cardItemList.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final cardInfo = provider.cardItemList[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: CustomMasterCard(
                          name: cardInfo.name??'',
                          type: cardInfo.type??'',
                          expiryDate: cardInfo.expiry??'',
                          cvv: cardInfo.cvv??'',
                          number: cardInfo.number??'',
                        ),
                      );
                    },
                ),
              ],
            ),
          ),
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
