import 'package:flutter/material.dart';
import 'package:game_store/src/widgets/white_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      width: double.maxFinite,
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                  color: const Color(0xff6e75fe),
                  borderRadius: BorderRadius.circular(14),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff6e75fe),
                      Color(0xff2c36ff),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/1.png',
                height: 230,
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              top: 62,
              left: 24,
              child: RichText(
                text: TextSpan(
                  text: 'PUSH YOUR\n',
                  style: GoogleFonts.ramabhadra(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                      height: .95),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'RANK',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 52)),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 12,
              left: 24,
              child: WhiteButtonWidget(
                title: 'Play now',
              ),
            )
          ],
        ),
      ),
    );
  }
}
