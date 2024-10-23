import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:game_store/src/widgets/white_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselListWidget extends StatefulWidget {
  final List<Game> games;

  const CarouselListWidget({super.key, required this.games});

  @override
  State<CarouselListWidget> createState() => _CarouselListWidgetState();
}

class _CarouselListWidgetState extends State<CarouselListWidget> {
  late PageController _pageController;

  ValueNotifier<double> scrollOffSet = ValueNotifier(1);

  @override
  void initState() {
    _pageController = PageController(initialPage: 1, viewportFraction: .62);
    _pageController.addListener(() {
      scrollOffSet.value = _pageController.page!;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        itemCount: widget.games.length,
        physics: const BouncingScrollPhysics(),
        controller: _pageController,
        itemBuilder: (context, index) {
          return ValueListenableBuilder(
              valueListenable: scrollOffSet,
              builder: (context, value, child) {
                double teste = math.exp(
                        -math.pow(scrollOffSet.value - index, -4) /
                            widget.games.length) /
                    .5;
                final game = widget.games[index];
                return Align(
                  alignment: Alignment(0, -teste),
                  child: Container(
                    height: 220,
                    width: 232,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color(0xff251d33),
                    ),
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 120,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Image.asset(
                            game.assetImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          game.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber),
                            Text(
                              game.evaluation.toString(),
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),
                            ),
                            const Spacer(),
                            WhiteButtonWidget(
                              title: 'Install',
                              fontSize: 12,
                              height: 28,
                            )
                          ],
                        ),
                        const SizedBox(height: 4),
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}

class Game {
  final String name;
  final double evaluation;
  final String assetImage;

  Game({
    required this.name,
    required this.evaluation,
    required this.assetImage,
  });
}
