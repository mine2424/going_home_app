import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // TODO: 相手に通知
            // TODO: GPSをオンにして、1キロ圏内になったら再度通知する
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(64),
            ),
          ),
          child: const Text(
            '今から帰ります',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
