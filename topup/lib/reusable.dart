import 'package:flutter/material.dart';
import 'package:topup/mainpages/loginintro.dart';

//prebuild textfield

class PreBuildTextField extends StatelessWidget {
  final TextInputType textinputtype;
  final IconData icon;
  final String hinttext;
  const PreBuildTextField({
    super.key,
    required this.textinputtype,
    required this.icon,
    required this.hinttext,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 112, 112, 112),
          borderRadius: BorderRadius.circular(20)),
      width: width * .9,
      height: height * .06,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: width * .15,
            child: Opacity(
              opacity: .6,
              child: Icon(
                icon,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: width * .75,
            child: Opacity(
              opacity: .8,
              child: Padding(
                padding: EdgeInsets.only(right: width * .13),
                child: TextFormField(
                  cursorErrorColor: Colors.red,
                  cursorColor: Colors.white,
                  keyboardType: textinputtype,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hinttext,
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 209, 207, 207))),
                  style: const TextStyle(
                      fontFamily: 'Lucida Sans',
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//prebuild password text field

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 109, 108, 108),
          borderRadius: BorderRadius.circular(20)),
      width: width * .9,
      height: height * .06,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: width * .15,
            child: const Opacity(
              opacity: .6,
              child: Icon(
                size: 20,
                Icons.lock_outline_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: width * .65,
            child: Opacity(
              opacity: .8,
              child: Padding(
                padding: EdgeInsets.only(right: width * .03),
                child: TextFormField(
                  cursorErrorColor: Colors.red,
                  cursorColor: Colors.white,
                  obscureText: _obscureText,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "password",
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 209, 207, 207))),
                  style: const TextStyle(
                    fontFamily: 'Lucida Sans',
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: width * .1,
            child: InkWell(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Opacity(
                  opacity: .6,
                  child: Icon(
                    color: Colors.white,
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class PreBuildButton extends StatelessWidget {
  final double customwidth;
  final double customheight;
  final GestureTapCallback ontapp;
  final String buttonText;
  const PreBuildButton(
      {super.key,
      required this.customheight,
      required this.customwidth,
      required this.ontapp,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: ontapp,
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 87, 255, 1),
            borderRadius: BorderRadius.circular(20)),
        width: width * customwidth,
        height: height * customheight,
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
                fontSize: 16, fontFamily: 'Lora', color: Colors.white),
          ),
        ),
      ),
    );
  }
}
