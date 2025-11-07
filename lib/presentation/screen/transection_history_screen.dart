import 'package:demo_bank/presentation/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import '../../model/payment_model.dart';
import '../../resources/app_color.dart';
import '../../resources/app_style.dart';

class TransectionHistoryScreen extends StatefulWidget {
  const TransectionHistoryScreen({super.key});

  @override
  State<TransectionHistoryScreen> createState() => _TransectionHistoryScreenState();
}

class _TransectionHistoryScreenState extends State<TransectionHistoryScreen> {

  List<PaymentModel> paymentList = [
    PaymentModel(imgIcon: 'assets/images/apple.jpeg', title: 'Apple Store', subTitle: 'Entertainment', amount: '300.0'),
    PaymentModel(imgIcon: 'assets/images/spotify.png', title: 'Spotify', subTitle: 'Music', amount: '250.0'),
    PaymentModel(imgIcon: 'assets/images/cart.jpeg', title: 'Grocery', subTitle: 'Shopping', amount: '400.0'),
    PaymentModel(imgIcon: 'assets/images/apple.jpeg', title: 'Apple Store', subTitle: 'Entertainment', amount: '300.0'),
    PaymentModel(imgIcon: 'assets/images/spotify.png', title: 'Spotify', subTitle: 'Music', amount: '250.0'),
    PaymentModel(imgIcon: 'assets/images/cart.jpeg', title: 'Grocery', subTitle: 'Shopping', amount: '400.0'),
    PaymentModel(imgIcon: 'assets/images/apple.jpeg', title: 'Apple Store', subTitle: 'Entertainment', amount: '300.0'),
    PaymentModel(imgIcon: 'assets/images/spotify.png', title: 'Spotify', subTitle: 'Music', amount: '250.0'),
    PaymentModel(imgIcon: 'assets/images/cart.jpeg', title: 'Grocery', subTitle: 'Shopping', amount: '400.0'),
    PaymentModel(imgIcon: 'assets/images/apple.jpeg', title: 'Apple Store', subTitle: 'Entertainment', amount: '300.0'),
    PaymentModel(imgIcon: 'assets/images/spotify.png', title: 'Spotify', subTitle: 'Music', amount: '250.0'),
    PaymentModel(imgIcon: 'assets/images/cart.jpeg', title: 'Grocery', subTitle: 'Shopping', amount: '400.0'),
  ];

  final searchTextController = TextEditingController();

  @override
  void dispose() {
    searchTextController.dispose();
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
          title: Text('Transection History',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.appBlack
            ),
          )
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                  textController: searchTextController,
                  prefixIconData: Icon(Icons.search),
                  suffixIconData: IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Icons.close, color: Colors.red,)
                  ),
                  hintText: 'Search with any key',
              ),
              AppStyles.appGap(10.0),

              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: paymentList.length,
                itemBuilder: (context, index) {
                  final dataInfo = paymentList[index];
                  return ListTile(
                    leading: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('${dataInfo.imgIcon}'))
                      ),
                    ),
          
                    title: Text('${dataInfo.title}',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.appBlack
                      ),
                    ),
                    subtitle: Text('${dataInfo.subTitle}',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38
                      ),
                    ),
          
                    trailing: Text('-${dataInfo.amount}',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.appRed
                      ),
                    ),
                  );
          
                },
              ),
              AppStyles.appGap(20.0),
            ],
          ),
        ),
      ),
    );
  }
}
