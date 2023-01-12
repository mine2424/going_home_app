import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:going_home_app/common/color.dart';
import 'package:going_home_app/common/consts.dart';
import 'package:going_home_app/common/packages/cool_dropdown/cool_dropdown.dart';
import 'package:going_home_app/common/packages/cool_dropdown/cool_dropdown_item.dart';
import 'package:going_home_app/domain/contact/enums/notify_area.dart';
import 'package:going_home_app/pages/contact/notifier/contact_notifier.dart';
import 'package:going_home_app/pages/contact/state/contact_state.dart';
import 'package:going_home_app/router.dart';
import 'package:going_home_app/widgets/button/widely_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddContactModal extends ConsumerWidget {
  const AddContactModal({super.key});

  void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      useRootNavigator: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => this,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final noti = ref.watch(contactNotifierProvider.notifier);
    final stat = ref.watch(contactNotifierProvider).asData?.value ??
        const ContactState();

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: SingleChildScrollView(
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
                    value: stat.isFavorite,
                    onChanged: (_) => noti.setIsFavorite(),
                    secondary: const Icon(Icons.star),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24).copyWith(
                      top: 16,
                    ),
                    child: const Divider(color: kDarkGray),
                  ),
                  Text(
                    '通知の文言を決めましょう',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height: Consts.space4x(3)),
                  TextField(
                    controller: noti.wordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '文言を入力してください',
                    ),
                  ),
                  Text(
                    '※デフォルトで「今から帰ります」の文言が入ります。',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Divider(color: kDarkGray),
                  ),
                  Text(
                    'どのくらいの距離で通知しますか？',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height: Consts.space4x(3)),
                  CoolDropdown(
                    resultWidth: double.infinity,
                    dropdownWidth: 300,
                    dropdownList: [
                      CoolDropdownItem(
                        label: '10m以内',
                        value: NotifyArea.veryNear.name,
                      ),
                      CoolDropdownItem(
                        label: '100m以内',
                        value: NotifyArea.near.name,
                      ),
                      CoolDropdownItem(
                        label: '500m以内',
                        value: NotifyArea.normal.name,
                      ),
                      CoolDropdownItem(
                        label: '1km以内',
                        value: NotifyArea.far.name,
                      ),
                      CoolDropdownItem(
                        label: '10km以内',
                        value: NotifyArea.veryFar.name,
                      ),
                    ],
                    onChange: (CoolDropdownItem value) =>
                        noti.changeNotifyArea(value),
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
                        context.push(RoutePath.add_goal_location.toStr);
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
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: WidelyButton(
                      label: '連絡先を追加する',
                      textStyle: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: kWhite),
                      onPressed: () async {
                        print('addContact start');
                        await noti.addContact().then((value) {
                          print('addContact return: $value');
                          if (!value) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('連絡先を選択してください'),
                              ),
                            );
                            return;
                          }

                          // home画面まで戻る
                          context.pop();
                          context.pop();
                        }).catchError((e) {
                          print('addContact error: $e');
                        });
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
      ),
    );
  }
}
