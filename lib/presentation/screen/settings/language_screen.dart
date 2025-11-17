import 'package:demo_bank/presentation/widget/custom_text_field.dart';
import 'package:demo_bank/resources/app_style.dart';
import 'package:flutter/material.dart';
import '../../../model/language_model.dart';
import '../../../resources/app_color.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {

  final searchTextController = TextEditingController();

  List<LanguageModel> languageList = [
    LanguageModel(name: 'Bangladesh', imgUrl: 'assets/images/bangladesh.jpeg'),
    LanguageModel(name: 'Srilanka', imgUrl: 'assets/images/srilangka.png'),
    LanguageModel(name: 'USA', imgUrl: 'assets/images/usa.png'),
    LanguageModel(name: 'UK', imgUrl: 'assets/images/uk.jpeg'),
    LanguageModel(name: 'Pakisthan', imgUrl: 'assets/images/pakisthan.jpeg'),
    LanguageModel(name: 'Nepal', imgUrl: 'assets/images/nepal.jpeg'),
    LanguageModel(name: 'Russia', imgUrl: 'assets/images/russia.png'),
    LanguageModel(name: 'Barma', imgUrl: 'assets/images/barma.png'),
    LanguageModel(name: 'China', imgUrl: 'assets/images/china.png'),
    LanguageModel(name: 'AfganStan', imgUrl: 'assets/images/afganstan.jpeg'),
    LanguageModel(name: 'France', imgUrl: 'assets/images/france.png'),
    LanguageModel(name: 'Germany', imgUrl: 'assets/images/germany.png'),
    LanguageModel(name: 'India', imgUrl: 'assets/images/india.jpeg'),
  ];

  int selectedIndex = 0;


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
          scrolledUnderElevation: 0,
          backgroundColor: AppColors.primaryColor,
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back_ios_new, color: Colors.white)),

          centerTitle: true,
          title: Text('Language',
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

              CustomTextField(
                 textController: searchTextController,
                 hintText: 'Search Your Language',
                  prefixIconData: Icon(Icons.search),
              ),
              AppStyles.appGap(10.0),

              ListView.builder(
                shrinkWrap: true,
                reverse: false,
                itemCount: languageList.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final dataInfo = languageList[index];
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      margin: EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(
                          width: 1.0,
                          color: AppColors.primaryColor
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20.0,
                                child: Image.asset(dataInfo.imgUrl??''),
                              ),
                              AppStyles.appGap(10.0),
                              Text('${dataInfo.name}')
                            ],
                          ),
                          selectedIndex == index?
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primaryColor
                            ),
                          ): SizedBox()
                        ],
                      ),
                    ),
                  );
                }
              )

            ],
          ),
        ),
      ),
    );
  }
}
