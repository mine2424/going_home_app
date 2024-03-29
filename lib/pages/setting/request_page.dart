import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://forms.gle/43s7ggJ2wbKuM8Zb7'),
      );
    return Scaffold(
      appBar: AppBar(
        title: const Text('お問い合わせ'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
