import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GoogleTripMapScreen extends StatefulWidget {
  const GoogleTripMapScreen({super.key});

  @override
  State<GoogleTripMapScreen> createState() => _GoogleTripMapScreenState();
}

class _GoogleTripMapScreenState extends State<GoogleTripMapScreen> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onHttpError: (HttpResponseError error) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          return NavigationDecision.navigate; // 모든 요청을 허용
        },
      ),
    )
    ..loadRequest(Uri.parse(
        'https://www.google.com/maps/d/edit?mid=1Sbbzb_Wm6y5E1lT0b3VW82IECy55l_4&usp=sharing'));

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: controller);
  }
}
