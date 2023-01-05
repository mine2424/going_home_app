import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SingleDialog extends StatelessWidget {
  const SingleDialog({
    super.key,
    required this.title,
    required this.buttonText,
  });

  final String title;
  final String buttonText;

  void show(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) => this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      actions: [
        TextButton(
          child: Text(buttonText),
          onPressed: () {
            context.pop();
          },
        ),
      ],
    );
  }
}
