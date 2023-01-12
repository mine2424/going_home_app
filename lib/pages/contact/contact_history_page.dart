import 'package:flutter/material.dart';
import 'package:going_home_app/common/color.dart';
import 'package:going_home_app/domain/contact/models/contact.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location_history.dart';
import 'package:going_home_app/pages/contact/notifier/contact_history_notifier.dart';
import 'package:going_home_app/pages/contact/notifier/contact_notifier.dart';
import 'package:going_home_app/pages/contact/state/contact_history_state.dart';
import 'package:going_home_app/widgets/modal/modal_bottom_sheet.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ContactHistoryPage extends ConsumerWidget {
  const ContactHistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stat = ref.watch(contactNotifierProvider).asData?.value;
    final hiStat = ref.watch(contactHistoryNotifierProvider).asData?.value ??
        const ContactHistoryState();
    return Scaffold(
      appBar: AppBar(
        title: (stat == null)
            ? const Text('名無しさんとの連絡簿　')
            : Text('${stat.selectedContact.contactName}との連絡簿'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var i = 0; i < hiStat.histories.length; i++)
                historyListTile(
                  context,
                  hiStat.histories[i],
                  stat?.selectedContact ?? const Contact(),
                ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          elevation: 10,
          child: const Icon(Icons.contact_page_outlined, size: 30),
          onPressed: () {
            const ModalBottomSheet().show(context);
          },
        ),
      ),
    );
  }

  Widget historyListTile(
    BuildContext context,
    ContactLocationHistory history,
    Contact contact,
  ) {
    return Column(
      children: [
        ListTile(
          title: Text(contact.isMatched ? 'すでに到着しています' : 'マッチしませんでした'),
          subtitle: Text(history.date.toString()),
          // trailing: Text(
          //   '👍',
          //   style: Theme.of(context).textTheme.headline4,
          // ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 40,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    '👍',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
              SizedBox(
                width: 40,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    '😀',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
              SizedBox(
                width: 40,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    '😡',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
              SizedBox(
                width: 40,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    '🎉',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(color: kDarkGray),
      ],
    );
  }
}
