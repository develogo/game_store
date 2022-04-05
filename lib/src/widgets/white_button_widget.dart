import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhiteButtonWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final String title;
  final double? fontSize;
  final double radius;
  final VoidCallback? onPressed;

  WhiteButtonWidget({
    Key? key,
    this.height = 36,
    this.width,
    required this.title,
    this.fontSize = 18,
    this.radius = 8.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        // borderRadius: BorderRadius.circular(radius),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.lato(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader = linearGradient,
              ),
            ),
          ),
        ),
      ),
    );
  }

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xff918ef3), Color(0xfff69aff)],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
}
