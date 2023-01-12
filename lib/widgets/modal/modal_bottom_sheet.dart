import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:going_home_app/common/color.dart';
import 'package:going_home_app/common/consts.dart';
import 'package:going_home_app/pages/contact/notifier/contact_notifier.dart';
import 'package:going_home_app/widgets/dialog/form_dialog.dart';
import 'package:going_home_app/widgets/dialog/single_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ModalBottomSheet extends ConsumerWidget {
  const ModalBottomSheet({super.key});

  void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) => this,
    );
  }

  Future<void> inputWordDialog(
    BuildContext context,
    ContactNotifier noti,
  ) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => FormDialog(
        titleText: '通知する文言を更新する',
        memoText: '登録後も変更ができます。',
        hintText: '名前',
        textController: noti.wordController,
        onPressed: () async {
          if (noti.wordController.text.isEmpty) {
            const SingleDialog(
              title: '名前を入力してください',
              buttonText: 'OK',
            ).show(context);
            return;
          }
          await noti.updateWord();
          context.pop();
          return;
        },
      ),
    );
    return;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stat = ref.watch(contactNotifierProvider).asData!.value;
    final noti = ref.watch(contactNotifierProvider.notifier);
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Consts.space4x(4)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Consts.space4x(4)),
            TextButton(
              child: Text(
                '${stat.selectedContact.contactName}との連絡先を削除する',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              onPressed: () async {
                await noti.removeContactUser(stat.selectedContact.contactId);
              },
            ),
            const Divider(color: kDarkGray),
            TextButton(
              child: Text(
                '文言を編集する',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              onPressed: () async {
                await inputWordDialog(context, noti);
              },
            ),
            const Divider(color: kDarkGray),
            TextButton(
              child: Text(
                (stat.selectedContact.isFavorite) ? 'お気に入りから外す' : 'お気に入りに追加する',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              onPressed: () {
                noti.updateIsFavorite();
              },
            ),
            const Divider(color: kDarkGray),
            TextButton(
              child: Text(
                '到着場所を設定する',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              onPressed: () {
                //
              },
            ),
            SizedBox(height: Consts.space4x(10)),
          ],
        ),
      ),
    );
  }
}
