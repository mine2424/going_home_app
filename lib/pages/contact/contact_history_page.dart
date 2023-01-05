import 'package:flutter/material.dart';
import 'package:going_home_app/common/color.dart';
import 'package:going_home_app/widgets/modal/modal_bottom_sheet.dart';

class ContactHistoryPage extends StatelessWidget {
  const ContactHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('〜〜さんとの連絡簿')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var i = 0; i < 10; i++) historyListTile(context),
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

  Widget historyListTile(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('帰宅'),
          subtitle: Text('2020/01/01 00:00'),
          trailing: Text(
            '👍',
            style: Theme.of(context).textTheme.headline4,
          ),
          // trailing: Row(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     SizedBox(
          //       width: 40,
          //       child: TextButton(
          //         onPressed: () {},
          //         child: Text(
          //           '👍',
          //           style: Theme.of(context).textTheme.headline4,
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       width: 40,
          //       child: TextButton(
          //         onPressed: () {},
          //         child: Text(
          //           '😀',
          //           style: Theme.of(context).textTheme.headline4,
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       width: 40,
          //       child: TextButton(
          //         onPressed: () {},
          //         child: Text(
          //           '😡',
          //           style: Theme.of(context).textTheme.headline4,
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       width: 40,
          //       child: TextButton(
          //         onPressed: () {},
          //         child: Text(
          //           '🎉',
          //           style: Theme.of(context).textTheme.headline4,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ),
        const Divider(color: kDarkGray),
      ],
    );
  }
}
