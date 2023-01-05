import 'package:flutter/material.dart';
import 'package:going_home_app/common/color.dart';
import 'package:going_home_app/common/consts.dart';

class ModalBottomSheet extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Consts.space4x(4)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Consts.space4x(4)),
            TextButton(
              child: Text(
                '〜〜さんを削除する',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              onPressed: () {},
            ),
            const Divider(color: kDarkGray),
            TextButton(
              child: Text(
                '文言を編集する',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              onPressed: () {},
            ),
            const Divider(color: kDarkGray),
            TextButton(
              child: Text(
                'お気に入りに追加する',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              onPressed: () {},
            ),
            SizedBox(height: Consts.space4x(10)),
          ],
        ),
      ),
    );
  }
}
