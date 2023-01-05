import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:going_home_app/common/color.dart';
import 'package:going_home_app/common/consts.dart';
import 'package:going_home_app/common/packages/cool_dropdown/cool_dropdown.dart';
import 'package:going_home_app/common/packages/cool_dropdown/cool_dropdown_item.dart';

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: CloseButton(
                onPressed: () => context.pop(),
              ),
            ),
            SwitchListTile(
              title: Text(
                'お気に入り登録',
                style: Theme.of(context).textTheme.headline6,
              ),
              value: false,
              onChanged: (bool value) {/* ... */},
              secondary: const Icon(Icons.star),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Divider(color: kDarkGray),
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
              dropdownList: [
                CoolDropdownItem(
                  label: '通知を受け取る',
                  value: '通知を受け取る',
                ),
                CoolDropdownItem(
                  label: '通知を受け取らない',
                  value: '通知を受け取らない',
                ),
              ],
              onChange: (value) => print(value),
            ),
          ],
        ),
      ),
    );
  }
}
