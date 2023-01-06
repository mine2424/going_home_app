import 'package:flutter/material.dart';
import 'package:going_home_app/common/consts.dart';
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
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Consts.space4x(4)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DashedCircle(
              color: Colors.deepOrangeAccent,
              child: Padding(
                padding: EdgeInsets.all(Consts.space4x(1.5)),
                child: const CircleAvatar(
                  radius: 70,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/200/300'),
                ),
              ),
            ),
            SizedBox(height: Consts.space4x(2)),
            const Text('name'),
            SizedBox(height: Consts.space4x(1)),
            // TODO: idはコピペ可能にする
            const Text('id: 1234567890'),
            SizedBox(height: Consts.space4x(6)),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '名前',
              ),
            ),
            SizedBox(height: Consts.space4x(2)),
            // TODO: 家族設定をできるようにする
            SizedBox(height: Consts.space4x(2)),
          ],
        ),
      )),
    );
  }
}
