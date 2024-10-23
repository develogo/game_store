import 'package:flutter/material.dart';

class CodeTextField extends StatelessWidget {
  const CodeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        width: double.maxFinite,
        height: 66.0,
        decoration: kGradientBoxDecoration,
        child: Padding(
          padding: const EdgeInsets.all(1.4),
          child: Container(
            decoration: kInnerDecoration,
            child: Center(
              child: Text(
                'Enter your code',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration get kInnerDecoration => BoxDecoration(
        color: const Color(0xff251d33),
        borderRadius: BorderRadius.circular(14),
      );

  BoxDecoration get kGradientBoxDecoration => BoxDecoration(
        gradient: const LinearGradient(colors: [
          Color(0xff404097),
          Color(0xff595084),
          Color(0Xff4d1675),
        ]),
        borderRadius: BorderRadius.circular(14),
      );
}
