import 'dart:convert';
import 'package:demo_bank/model/all_card_model.dart';
import 'package:demo_bank/resources/app_url.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class AllCardRepositories{

 static Future<List<AllCardModel>> getAllCard() async {
      final response = await http.get(Uri.parse(AppUrl.allCard));
      debugPrint('Url: ${AppUrl.allCard}');
      if (response.statusCode == 200) {
        final returnResponse = jsonDecode(response.body);
        debugPrint('Output1: ${returnResponse}');

        return List<AllCardModel>.from(returnResponse.map((data) => AllCardModel.fromJson(data)));
      } else {
        Fluttertoast.showToast(msg: 'Something went wrong');
        return [];
      }
  }
}