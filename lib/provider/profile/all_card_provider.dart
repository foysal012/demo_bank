import 'package:demo_bank/model/all_card_model.dart';
import 'package:demo_bank/repositories/profile/all_card_repositories.dart';
import 'package:flutter/cupertino.dart';

class AllCardProvider with ChangeNotifier{

  List<AllCardModel> _cardItemList = [];
  List<AllCardModel> get cardItemList => _cardItemList;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

   Future<void> getAllCard({String? cardType}) async{
     _isLoading = true;
     try{
       _cardItemList.clear();
       var responseData = await AllCardRepositories.getAllCard(cardName: cardType??'Visa');
       _cardItemList.addAll(responseData);
       notifyListeners();
     } catch(e){
       debugPrint('Error Occurs on ${e.toString()}');
     } finally {
       _isLoading = false;
       notifyListeners();
     }
   }

   Future<void> onRefreshScreen() async{
     getAllCard();
     notifyListeners();
   }
}