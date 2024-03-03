import 'package:flutter/material.dart';
import 'package:topup/mainpages/login.dart';
import 'package:topup/mainpages/loginintro.dart';
import 'package:topup/mainpages/spalshscreen.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn(),
    );
  }
}
