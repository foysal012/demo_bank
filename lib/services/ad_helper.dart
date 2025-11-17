import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if(Platform.isAndroid){
      return 'ca-app-pub-9093812169385004/8731570554';
    } else if( Platform.isIOS) {
      return '<Your_IOS_BANNER_AD_ID>';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if(Platform.isAndroid){
      return 'ca-app-pub-9093812169385004/9749316366';
    } else if( Platform.isIOS) {
      return '<Your_IOS_BANNER_AD_ID>';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get rewardedAdUnitId {
    if(Platform.isAndroid){
      return 'ca-app-pub-9093812169385004/7613999815';
    } else if( Platform.isIOS) {
      return '<Your_IOS_BANNER_AD_ID>';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}