import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:go_router/go_router.dart';
import 'package:going_home_app/common/color.dart';
import 'package:going_home_app/common/consts.dart';
import 'package:going_home_app/domain/contact/models/contact.dart';
import 'package:going_home_app/pages/contact/add_contact_modal.dart';
import 'package:going_home_app/pages/contact/notifier/contact_history_notifier.dart';
import 'package:going_home_app/pages/contact/notifier/contact_notifier.dart';
import 'package:going_home_app/pages/contact/state/contact_state.dart';
import 'package:going_home_app/router.dart';
import 'package:going_home_app/widgets/button/widely_button.dart';
import 'package:going_home_app/widgets/dialog/single_dialog.dart';
import 'package:going_home_app/widgets/modal/modal_bottom_sheet.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ContactHomePage extends ConsumerWidget {
  const ContactHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contactState = ref.watch(contactNotifierProvider);
    final contactNoti = ref.watch(contactNotifierProvider.notifier);
    final contactHistoryNoti =
        ref.watch(contactHistoryNotifierProvider.notifier);

    return contactState.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(error.toString()),
            WidelyButton(
              label: '再読み込み',
              onPressed: () => ref.refresh(contactNotifierProvider),
            ),
          ],
        ),
      ),
      data: (contacts) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('もうつく'),
            leading: IconButton(
              icon: const Icon(Icons.add, size: 32),
              onPressed: () => showAddContactDialog(
                context,
                contactNoti,
                contacts,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings, size: 24),
                onPressed: () => context.push(RoutePath.setting.toStr),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(
                    'お気に入り',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  if (contacts.contacts.isEmpty)
                    const Text(
                      'お気に入り登録しましょう！ \n ※連絡先の履歴から下のボタンをタップするとお気に入り登録できます。',
                    ),
                  for (var i = 0; i < contacts.contacts.length; i++)
                    (contacts.contacts[i].isFavorite)
                        ? contactCard(
                            context,
                            contacts.contacts[i],
                            contactNoti,
                            contactHistoryNoti,
                          )
                        : const SizedBox.shrink(),
                  const SizedBox(height: 30),
                  Text(
                    '連絡一覧',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  if (contacts.contacts.isEmpty)
                    const Text('まだ連絡先が登録されていません... \n 今すぐ登録しよう！'),
                  for (var i = 0; i < contacts.contacts.length; i++)
                    (!contacts.contacts[i].isFavorite)
                        ? contactCard(
                            context,
                            contacts.contacts[i],
                            contactNoti,
                            contactHistoryNoti,
                          )
                        : const SizedBox.shrink(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget contactCard(
    BuildContext context,
    Contact contact,
    ContactNotifier noti,
    ContactHistoryNotifier hiNoti,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: GestureDetector(
        onTap: () => (contact.isMatched)
            ? showNotificationDialog(context, contact, hiNoti)
            : showAbortDialog(context),
        onLongPress: () {
          noti.setSelectedContact(contact);
          const ModalBottomSheet().show(context);
          // first releaseでは使用しない
          // context.push(RoutePath.contact_history.toStr);
        },
        onDoubleTap: () {
          noti.setSelectedContact(contact);
          const ModalBottomSheet().show(context);
          // first releaseでは使用しない
          // context.push(RoutePath.contact_history.toStr);
        },
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(noti.getContactName(contact)),
                  Text(
                    (contact.isMatched) ? '' : '向かっています',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showAbortDialog(BuildContext context) {
    const SingleDialog(title: '向かっている途中なので、使用できません。', buttonText: 'ok')
        .show(context);
  }

  void showNotificationDialog(
    BuildContext context,
    Contact contact,
    ContactHistoryNotifier noti,
  ) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.7),
      builder: (context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await noti.startRecording(contact);
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(64),
                ),
              ),
              child: Text(
                contact.word,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: Consts.space4x(8)),
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text(
                'キャンセル',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showAddContactDialog(
    BuildContext context,
    ContactNotifier noti,
    ContactState state,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Scaffold(
        body: Consumer(builder: (context, ref, child) {
          final contact =
              ref.watch(contactNotifierProvider).asData?.value ?? state;
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(16).copyWith(top: 32),
                child: WidelyButton(
                  label: '自分のIDをコピーする',
                  height: 54,
                  textStyle: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: kWhite),
                  onPressed: () async {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'IDをコピーしました',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: kWhite, fontSize: 16),
                        ),
                      ),
                    );
                    await Clipboard.setData(ClipboardData(text: noti.myUid));
                    await FlutterShare.share(
                      title: '自分のIDを共有する',
                      text: noti.myUid,
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'IDまたは名前を検索',
                  ),
                  onSubmitted: (value) => noti.searchContactUser(value),
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  itemCount: contact.searchedUsers.length,
                  itemBuilder: (context, index) {
                    final user = contact.searchedUsers[index];
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 24,
                        backgroundImage: (user.profileImageUrl.isEmpty)
                            ? const NetworkImage('https://picsum.photos/200')
                            : NetworkImage(user.profileImageUrl),
                      ),
                      title: Text(user.name),
                      trailing: IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          // TODO: コメント外す
                          noti.addContactUser(user);
                          const AddContactModal().show(context);
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
