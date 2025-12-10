import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class ContractUsProvider with ChangeNotifier{

  // Phone
  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(launchUri);
  }

  // Fax
  Future<void> sendFax(String faxNumber) async {
    final Uri uri = Uri(scheme: 'tel', path: faxNumber);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  // Email
  Future<void> sendEmail({
    required String toEmail,
    String subject = "",
    String body = "",
  }) async {
    final Uri uri = Uri(scheme: 'mailto', path: toEmail, query: "subject=$subject&body=$body");

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  // Website
  Future<void> openWebsite(String url) async {
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }


}