import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:going_home_app/common/color.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お知らせ'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var i = 0; i < 10; i++) newsListTile(),
            ],
          ),
        ),
      ),
    );
  }

  Widget newsListTile() {
    return Column(
      children: [
        ListTile(
          title: Text('お知らせ'),
          subtitle: Text('2020/01/01 00:00'),
          trailing: Icon(Icons.add),
        ),
        Divider(color: kDarkGray),
      ],
    );
  }
}
