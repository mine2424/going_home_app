import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermsOfServicePage extends StatelessWidget {
  const TermsOfServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://going-home-a47ce.web.app/terms_of_service.html'),
      );
    return Scaffold(
      appBar: AppBar(
        title: const Text('利用規約'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
