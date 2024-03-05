import 'package:flutter/material.dart';

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
              opacity: .8,
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
                      hintStyle: const TextStyle(color: Colors.white)),
                  style: const TextStyle(
                      fontFamily: 'Lucida Sans',
                      fontSize: 16,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
          color: Color.fromARGB(255, 109, 108, 108),
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
              opacity: .6,
              child: Padding(
                padding: EdgeInsets.only(right: width * .03),
                child: TextFormField(
                  obscureText: _obscureText,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "password",
                      hintStyle: TextStyle(color: Colors.white)),
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
