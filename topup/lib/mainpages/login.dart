import 'package:flutter/material.dart';
import 'package:topup/reusable.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          PreBuildTextField(
              textinputtype: TextInputType.name,
              border: InputBorder.none,
              hinttext: "name"),
        ],
      ),
    );
  }
}
