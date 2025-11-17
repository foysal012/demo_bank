import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BannerAddWidget extends StatefulWidget {
  const BannerAddWidget({super.key});

  @override
  State<BannerAddWidget> createState() => _BannerAddWidgetState();
}

class _BannerAddWidgetState extends State<BannerAddWidget> {

  BannerAd? _bannerAd;
  bool _isLoaded = false;

  // Ad unit Ids
  final String adUnitId = Platform.isAndroid?
  // // 'ca-app-pub-9093812169385004~2493465269': // my account
  // // 'ca-app-pub-9093812169385004/8731570554'; // my account
  'ca-app-pub-3940256099942544/9214589741':  // Test Mode
  'ca-app-pub-3940256099942544/2435281174'; // Test Mode

  // Load Ad
  void _loadAd() {
    _bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: adUnitId,
        listener: BannerAdListener(
          onAdLoaded: (ad) {
            setState(() {
              _isLoaded = true;
            });
            debugPrint('Banner Ad Loaded');
          },

          onAdFailedToLoad: (ad, error) {
            ad.dispose();
            debugPrint('Banner Ad failed to Load');
          },
        ),
        request: AdRequest()
    )..load();

  }

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banner Add'),
        centerTitle: true,
      ),

      body: Container(
        child: _bannerAd != null && _isLoaded? SizedBox(
          width: _bannerAd?.size.width.toDouble(),
          height: _bannerAd?.size.height.toDouble(),
          child: AdWidget(ad: _bannerAd!),
        ):SizedBox.shrink()
      ),
    );
  }
}
