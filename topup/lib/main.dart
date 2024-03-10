import 'package:flutter/material.dart';
import 'package:topup/mainpages/login.dart';
import 'package:topup/mainpages/loginintro.dart';
import 'package:topup/mainpages/signup.dart';
import 'package:topup/mainpages/spalshscreen.dart';
import 'package:topup/reusable.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
