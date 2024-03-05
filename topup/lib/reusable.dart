import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class PreBuildTextField extends StatelessWidget {
  final TextInputType textinputtype;
  final InputBorder border;
  final String hinttext;
  const PreBuildTextField(
      {super.key,
      required this.textinputtype,
      required this.border,
      required this.hinttext});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
          color: const Color.fromRGBO(71, 71, 71, 1),
          borderRadius: BorderRadius.circular(20)),
      width: width * .9,
      height: height * .06,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: width * .15,
            child: Opacity(
              opacity: 0.5,
              child: const Icon(
                Icons.person_outline_outlined,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          Container(
            width: width * .75,
            child: Opacity(
              opacity: .6,
              child: Padding(
                padding: EdgeInsets.only(right: width * .13),
                child: const TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "name",
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
                  style: TextStyle(
                    fontFamily: 'Lucida Sans',
                    fontSize: 18,
                    color: Color.fromARGB(255, 252, 252, 252),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
