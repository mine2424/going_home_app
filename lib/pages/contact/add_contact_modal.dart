import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:going_home_app/common/color.dart';
import 'package:going_home_app/common/consts.dart';
import 'package:going_home_app/common/packages/cool_dropdown/cool_dropdown.dart';
import 'package:going_home_app/common/packages/cool_dropdown/cool_dropdown_item.dart';
import 'package:going_home_app/domain/contact/enums/notify_area.dart';
import 'package:going_home_app/widgets/button/widely_button.dart';

class AddContactModal extends StatelessWidget {
  const AddContactModal({super.key});

  void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      useRootNavigator: true,
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
      height: MediaQuery.of(context).size.height * 0.9,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: CloseButton(
                onPressed: () => context.pop(),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SwitchListTile(
                  title: Text(
                    'お気に入り登録',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  value: false,
                  onChanged: (bool value) {/* ... */},
                  secondary: const Icon(Icons.star),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24).copyWith(
                    top: 16,
                  ),
                  child: const Divider(color: kDarkGray),
                ),
                Text(
                  '通知の文言を決める',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: Consts.space4x(6)),
                TextField(
                  controller: TextEditingController(),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '文言を入力してください',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: Divider(color: kDarkGray),
                ),
                CoolDropdown(
                  resultWidth: double.infinity,
                  dropdownWidth: 300,
                  dropdownList: [
                    CoolDropdownItem(
                      label: '超近距離(100~500m以内)',
                      value: NotifyArea.veryNear.name,
                    ),
                    CoolDropdownItem(
                      label: '近距離(500~1000m以内)',
                      value: NotifyArea.near.name,
                    ),
                    CoolDropdownItem(
                      label: '通常(1000~2000m以内)',
                      value: NotifyArea.normal.name,
                    ),
                    CoolDropdownItem(
                      label: '遠距離(2000~5000m以内)',
                      value: NotifyArea.far.name,
                    ),
                    CoolDropdownItem(
                      label: '超遠距離(5000m以上)',
                      value: NotifyArea.veryFar.name,
                    ),
                  ],
                  onChange: (value) => print(value),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24).copyWith(
                    bottom: 16,
                  ),
                  child: const Divider(color: kDarkGray),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: WidelyButton(
                    label: '到着場所を登録する',
                    textStyle: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: kWhite),
                    onPressed: () {
                      // TODO: ここで到着場所を登録する
                      // TODO: google mapで場所を選択する
                    },
                  ),
                ),
                SizedBox(height: Consts.space4x(2)),
                Text(
                  '※到着場所に近づいた時に通知が届きます。',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: kDarkGray, fontSize: 14),
                ),
                SizedBox(height: Consts.space4x(35)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: WidelyButton(
                    label: '連絡先を追加する',
                    textStyle: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: kWhite),
                    onPressed: () {
                      // home画面まで戻る
                      context.pop();
                      context.pop();
                    },
                    backgroundColor: kRed,
                    height: 60,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
