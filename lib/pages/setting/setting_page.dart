import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:going_home_app/router.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final list = {
      '使い方': RoutePath.add_profile.toStr,
      'プロフィール編集': RoutePath.add_profile.toStr,
      'お知らせ': RoutePath.news.toStr,
      '利用規約': RoutePath.terms_of_service.toStr,
      'プライバシーポリシー': RoutePath.privacy_policy.toStr,
      'お問い合わせ・ご要望': RoutePath.request.toStr,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(list.keys.toList()[index]),
            onTap: () {
              context.push(list.values.toList()[index]);
            },
          );
        },
      ),
    );
  }
}
