import 'package:flutter/material.dart';
import 'package:topup/reusable.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          MyButton(
            color: Colors.red,
            text: "Hello",
          ),
          MyButton(color: Colors.black, text: "Sursn"),
          MyButton(color: Colors.white, text: "ssw")
        ],
      ),
    );
  }
}
