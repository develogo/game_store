import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 120,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: MyCustomClipper(),
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 4,
                      sigmaY: 4,
                    ),
                    child: Container(
                      height: 60,
                      color: const Color(0xff7039f7).withOpacity(.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buidIcon(icon: IconlyBold.home),
                          buidIcon(icon: IconlyBold.discount),
                          const SizedBox(width: 40),
                          buidIcon(icon: IconlyBold.buy),
                          buidIcon(icon: IconlyBold.setting),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 32,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 4,
                    sigmaY: 4,
                  ),
                  child: Container(
                    height: 68,
                    width: 68,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        center: const Alignment(0, 0), // near the top right
                        radius: 0.8,
                        stops: const <double>[0.5, 1.0],
                        colors: [
                          const Color(0xff7039f7).withOpacity(.3),
                          Colors.white.withOpacity(1),
                        ],
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xff7039f7).withOpacity(.5),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/down.png',
                              height: 20,
                              fit: BoxFit.fitHeight,
                            ),
                            const SizedBox(height: 2),
                            Container(
                              height: 2,
                              width: 30,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff6771f5),
                                    Color(0xff9972ff),
                                    Color(0xffbb65f5),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              '%88',
                              style: GoogleFonts.lato(
                                color: const Color(0xffd966f5),
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buidIcon({required IconData icon}) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        color: Colors.white,
        size: 32,
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width, 0);
    path0.quadraticBezierTo(
        size.width * 0.7656250, 0, size.width * 0.6875000, 0);
    path0.cubicTo(
        size.width * 0.5820375,
        size.height * 0.0782000,
        size.width * 0.5648500,
        size.height * 0.5656500,
        size.width * 0.5000000,
        size.height * 0.6500000);
    path0.cubicTo(
        size.width * 0.4382875,
        size.height * 0.5625000,
        size.width * 0.4171875,
        size.height * 0.0813500,
        size.width * 0.3125000,
        0);
    path0.quadraticBezierTo(size.width * 0.2343750, 0, 0, 0);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
