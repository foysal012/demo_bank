// To parse this JSON data, do
//
//     final allCardModel = allCardModelFromJson(jsonString);

import 'dart:convert';

List<AllCardModel> allCardModelFromJson(String str) => List<AllCardModel>.from(json.decode(str).map((x) => AllCardModel.fromJson(x)));

String allCardModelToJson(List<AllCardModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllCardModel {
  String? type;
  String? name;
  String? number;
  String? cvv;
  String? expiry;

  AllCardModel({
    this.type,
    this.name,
    this.number,
    this.cvv,
    this.expiry,
  });

  factory AllCardModel.fromJson(Map<String, dynamic> json) => AllCardModel(
    type: json["type"],
    name: json["name"],
    number: json["number"],
    cvv: json["cvv"],
    expiry: json["expiry"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "name": name,
    "number": number,
    "cvv": cvv,
    "expiry": expiry,
  };
}
