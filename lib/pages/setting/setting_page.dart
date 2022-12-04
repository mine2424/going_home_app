import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  static const list = [
    'お知らせ',
    '利用規約',
    'プライバシーポリシー',
    'お問い合わせ',
    'アプリバージョン',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(list[index]),
          );
        },
      ),
    );
  }
}
