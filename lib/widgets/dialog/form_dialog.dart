import 'package:flutter/material.dart';
import 'package:going_home_app/common/consts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FormDialog extends ConsumerWidget {
  const FormDialog({
    Key? key,
    required this.titleText,
    this.memoText = '',
    required this.hintText,
    required this.textController,
    required this.onPressed,
  }) : super(key: key);

  final String titleText;
  final String memoText;
  final String hintText;
  final TextEditingController textController;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: Text(titleText),
      content: SizedBox(
        height: 140,
        child: Column(
          children: [
            SizedBox(height: Consts.space4x(4)),
            TextFormField(
              controller: textController,
              decoration: InputDecoration(
                hintText: hintText,
              ),
            ),
            SizedBox(height: Consts.space4x(4)),
            Text(memoText),
          ],
        ),
      ),
      actions: [
        Builder(
          builder: (context) {
            return TextButton(
              onPressed: onPressed,
              child: const Text("決定"),
            );
          },
        ),
      ],
    );
  }
}
