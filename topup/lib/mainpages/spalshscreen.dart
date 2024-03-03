//splash screen
import 'package:flutter/material.dart';
import 'package:topup/mainpages/loginintro.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay for the splash screen (e.g., 2 seconds)
    Future.delayed(const Duration(seconds: 2), () {
      // Navigate to the main screen after the splash screen duration
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginIntro()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: SizedBox(
          width: width * .5,
          child: Image.asset(
            "assets/topup.png",
            width: width * .5,
          ),
        ),
      ),
    );
  }
}
