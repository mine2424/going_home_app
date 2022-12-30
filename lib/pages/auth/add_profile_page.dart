import 'package:flutter/material.dart';
import 'package:going_home_app/common/constants.dart';
import 'package:going_home_app/widgets/other/dash_circle_painter.dart';

class AddProfilePage extends StatelessWidget {
  const AddProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プロフィールを追加'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DashedCircle(
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/going_home_onboarding.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: Constants.space4x(2)),
          Text('name'),
          SizedBox(height: Constants.space4x(1)),
          // TODO: idはコピペ可能にする
          Text('id: 1234567890'),
          SizedBox(height: Constants.space4x(6)),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '名前',
            ),
          ),
          SizedBox(height: Constants.space4x(2)),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '職業',
            ),
          ),
          SizedBox(height: Constants.space4x(2)),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '生年月日',
            ),
          ),
        ],
      )),
    );
  }
}
