import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../services/ad_helper.dart';

class IntertentialAddWidget extends StatefulWidget {
  const IntertentialAddWidget({super.key});

  @override
  State<IntertentialAddWidget> createState() => _IntertentialAddWidgetState();
}

class _IntertentialAddWidgetState extends State<IntertentialAddWidget> {

  // ca-app-pub-9093812169385004~2493465269
  // ca-app-pub-9093812169385004/9749316366

  // final String adUnitId = 'ca-app-pub-9093812169385004~2493465269';
  final String adUnitId = 'ca-app-pub-9093812169385004/9749316366';

  InterstitialAd? _interstitialAd;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    InterstitialAd.load(
        adUnitId: AdHelper.interstitialAdUnitId,
        // adUnitId: adUnitId,
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (ad) {
            ad.fullScreenContentCallback = FullScreenContentCallback(
              onAdDismissedFullScreenContent: (ad){},
            );
            setState(() {
              _interstitialAd = ad;
            });
          },
          onAdFailedToLoad: (error) {
            debugPrint('Failed to load a interstitial ad: ${error.message}');
          },
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banner Add'),
        centerTitle: true,
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.teal,
        ),
        child: Column(
          children: [
            GestureDetector(
                onTap:(){
                  _interstitialAd?.show();
                },
                child: Text('Tap Here')
            )
          ],
        ),
      ),
    );
  }
}
