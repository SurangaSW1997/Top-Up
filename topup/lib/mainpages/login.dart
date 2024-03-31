import 'package:flutter/material.dart';
import 'package:topup/mainpages/signup.dart';
import 'package:topup/reusable.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passswordcontroller = TextEditingController();
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: height * .1,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: height * .06,
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(
                          fontFamily: 'Lucida Sans',
                          fontSize: height * .04,
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
                  PreBuildTextField(
                    textinputtype: TextInputType.emailAddress,
                    icon: Icons.alternate_email_outlined,
                    hinttext: "email",
                    controller: _emailcontroller,
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  PasswordTextField(
                    controller: _passswordcontroller,
                  ),
                  SizedBox(
                    height: height * .005,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    width: width * .9,
                    height: height * .03,
                    child: Padding(
                      padding: EdgeInsets.only(right: width * .02),
                      child: const Text(
                        "Forget Password?",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 87, 255, 1),
                            fontFamily: 'Lucida Sans',
                            fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  PreBuildButton(
                    customheight: .06,
                    customwidth: .9,
                    ontapp: () {},
                    buttonText: "Login",
                  ),
                  SizedBox(
                    height: height * .435,
                  ),
                  SizedBox(
                    height: height * .05,
                    width: width * .9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(
                              fontFamily: 'Lucida Sans',
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUp(),
                              ),
                            );
                          },
                          child: const Text(
                            " Sign Up",
                            style: TextStyle(
                                fontFamily: 'Lucida Sans',
                                fontSize: 16,
                                color: Color.fromRGBO(0, 87, 255, 1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
