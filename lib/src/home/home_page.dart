import 'package:game_store/src/widgets/bannet_wideget.dart';
import 'package:game_store/src/widgets/bottom_bat_widget.dart';
import 'package:game_store/src/widgets/carousel_list_widget.dart';
import 'package:game_store/src/widgets/code_textfield_widget.dart';
import 'package:game_store/src/widgets/custom_app_bar_widget.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: AlignmentDirectional.topEnd,
            radius: .8,
            colors: [
              Color(0xff370b52),
              Color(0xff110c3f),
            ],
            stops: [0.3, 0.9],
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                const Color(0xff0c116a).withOpacity(.4),
                Colors.black,
              ],
              stops: const [0, .3, .8],
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: size.height * .13,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  height: size.height * 1.6,
                  width: size.height * 1.6,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Color(0xff393cf6),
                      ],
                      stops: [0.96, 1],
                    ),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Color(0xff32158c),
                        ],
                        stops: [0.98, 1],
                      ),
                    ),
                  ),
                ),
              ),
              ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(bottom: 60),
                children: <Widget>[
                  const CustomAppBarWidget(),
                  const SizedBox(height: 16),
                  const CodeTextField(),
                  const SizedBox(height: 6),
                  const BannerWidget(),
                  const SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Text(
                      'Recommended',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  CarouselListWidget(
                    games: [
                      Game(name: 'Rainbow Six', evaluation: 4.5, assetImage: 'assets/games/rainbow.jpg'),
                      Game(name: 'Cyber Punk', evaluation: 4.8, assetImage: 'assets/games/cyber-punk.png'),
                      Game(name: 'Horizon Zero Down', evaluation: 4.5, assetImage: 'assets/games/horizon.jpg'),
                    ],
                  ),
                  const SizedBox(height: 22),
                  CarouselListWidget(
                    games: [
                      Game(name: 'God of War Ragnarök', evaluation: 4.5, assetImage: 'assets/games/god.jpg'),
                      Game(name: 'Watch Dogs: Legion', evaluation: 4.8, assetImage: 'assets/games/watch-dogs-legion.png'),
                      Game(name: 'Elden Ring', evaluation: 4.5, assetImage: 'assets/games/elder.jpg'),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
              const BottomBarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
