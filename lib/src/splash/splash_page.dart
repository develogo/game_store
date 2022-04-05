import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:game_store/src/widgets/white_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xff6c72e9),
      body: Stack(
        children: [
          Transform.translate(
            offset: Offset(0, 20),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                'assets/sage.png',
                fit: BoxFit.fitHeight,
                height: size.height * .9,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/jett3.png',
              fit: BoxFit.fitHeight,
              height: size.height * .8,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(IconlyLight.arrowLeft2, color: Colors.white, size: 36),
                  Text('Skip', style: GoogleFonts.lato(color: Colors.white)),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: size.height * .06,
            left: size.width * .06,
            child: WhiteButtonWidget(
              title: 'Next  >',
              radius: 25,
              fontSize: 14,
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage())),
            ),
          )
        ],
      ),
    );
  }
}
