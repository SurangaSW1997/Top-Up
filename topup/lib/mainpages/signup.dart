import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:topup/mainpages/login.dart';
import 'package:topup/reusable.dart';
import 'package:topup/subpages/homepage.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _firstnamecontroller = TextEditingController();
  final TextEditingController _lastnamecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _phonecontroller = TextEditingController();
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
                      "Create Account",
                      style: TextStyle(
                          fontFamily: 'Lucida Sans',
                          fontSize: height * 0.04,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    height: height * .1,
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Sign Up for get started",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lucida Sans',
                          fontSize: 16),
                    ),
                  ),
                  PreBuildTextField(
                    textinputtype: TextInputType.name,
                    icon: Icons.person,
                    hinttext: "first name",
                    controller: _firstnamecontroller,
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  PreBuildTextField(
                    textinputtype: TextInputType.name,
                    icon: Icons.person,
                    hinttext: "last name",
                    controller: _lastnamecontroller,
                  ),
                  SizedBox(
                    height: height * .02,
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
                  PreBuildTextField(
                    textinputtype: TextInputType.phone,
                    icon: Icons.phone,
                    hinttext: "whatsapp number",
                    controller: _phonecontroller,
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
                  SizedBox(
                    height: height * .02,
                  ),
                  PreBuildButton(
                    customheight: .06,
                    customwidth: .9,
                    ontapp: () {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: _emailcontroller.text,
                              password: _passswordcontroller.text)
                          .then((value) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        ).onError((error, stackTrace) {
                          print("Error");
                        });
                      });
                    },
                    buttonText: "Sign Up",
                  ),
                  SizedBox(
                    height: height * .225,
                  ),
                  SizedBox(
                    height: height * .05,
                    width: width * .9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account?",
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
                                    builder: (context) => const LogIn()));
                          },
                          child: const Text(
                            " Login",
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
