import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:going_home_app/common/color.dart';
import 'package:going_home_app/common/consts.dart';
import 'package:going_home_app/pages/auth/notifier/auth_notifier.dart';
import 'package:going_home_app/pages/auth/state/auth_state.dart';
import 'package:going_home_app/widgets/other/dash_circle_painter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddProfilePage extends ConsumerWidget {
  const AddProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authNotifierProvider).asData?.value.user ??
        const AuthState().user;
    final noti = ref.watch(authNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('プロフィールを編集'),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Consts.space4x(4)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                noti;
              },
              child: DashedCircle(
                color: Colors.deepOrangeAccent,
                child: Padding(
                  padding: EdgeInsets.all(Consts.space4x(1.5)),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                      (user.profileImageUrl == '')
                          ? 'https://picsum.photos/200/300'
                          : user.profileImageUrl,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: Consts.space4x(2)),
            // TODO: idはコピペ可能にする
            Text('uid: ${user.uid}'),
            SizedBox(height: Consts.space4x(6)),
            TextField(
              controller: noti.nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '名前',
              ),
            ),
            SizedBox(height: Consts.space4x(2)),
            // TODO: 家族設定をできるようにする
            SizedBox(height: Consts.space4x(2)),
            ElevatedButton(
              onPressed: () {
                noti.saveUser(user.copyWith(name: noti.emailController.text));
                context.pop();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '更新する',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: kWhite, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
