import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/constants.dart';
import 'package:netflix_clone/widgets/buttons.dart';

import '../models/content_model.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;

  const ContentHeader({
    Key key,
    @required this.featuredContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                featuredContent.imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 550.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [kBackground, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250.0,
            child: Image.asset(featuredContent.titleImageUrl),
          ),
        ),
        Positioned(
            bottom: 90.0,
            child: Container(
              child: Row(
                children: [
                  Text(
                    "Action • ",
                    style: kSubTexts,
                  ),
                  Text(
                    "Drama • ",
                    style: kSubTexts,
                  ),
                  Text(
                    "Animate • ",
                    style: kSubTexts,
                  ),
                  Text(
                    "Makeover • ",
                    style: kSubTexts,
                  ),
                  Text(
                    "Kids ",
                    style: kSubTexts,
                  ),
                ],
              ),
            )),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0.0,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonIcon(
                  icon: Icons.add,
                  title: 'My List',
                ),
                SquareButton(
                  icon: Icons.play_arrow,
                  title: 'Play',
                  width: 100,
                  height: 40,
                  color: Colors.white,
                ),
                ButtonIcon(
                  icon: Icons.info_outline,
                  title: 'Info',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
