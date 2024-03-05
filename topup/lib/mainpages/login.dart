import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:topup/reusable.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 23, 37, 1),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 18,
            child: Column(
              children: [
                SizedBox(
                  height: height * .1,
                ),
                Container(
                  alignment: Alignment.center,
                  height: height * .06,
                  child: const Text(
                    "Welcome Back",
                    style: TextStyle(
                        fontFamily: 'Lucida Sans',
                        fontSize: 40,
                        color: Colors.white),
                  ),
                ),
                Container(
                  height: height * .1,
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Enter your credentials to continue",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Lucida Sans',
                        fontSize: 16),
                  ),
                ),
                const PreBuildTextField(
                    textinputtype: TextInputType.emailAddress,
                    icon: Icons.alternate_email_outlined,
                    hinttext: "email"),
                SizedBox(
                  height: height * .02,
                ),
                const PasswordTextField(),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
