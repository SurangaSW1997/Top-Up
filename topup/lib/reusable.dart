import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final String text;

  const MyButton({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width * .8,
      height: 50,
      color: color,
      child: Text(text),
    );
  }
}
