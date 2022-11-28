import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../constants/constants.dart';
import '../screens/description.dart';
import 'buttons.dart';

class NowStreaming extends StatelessWidget {
  final List nowStreaming;
  const NowStreaming({
    Key key,
    this.nowStreaming,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Shimmer(
                duration: Duration(seconds: 5),
                interval: Duration(seconds: 0),
                color: Colors.white,
                colorOpacity: 0,
                enabled: true,
                direction: ShimmerDirection.fromLeftToRight(),
                child: Container(
                  height: 550.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: nowStreaming.length,
                    itemBuilder: (BuildContext context, int index) {
                      ///remember to add onTap functionalities (toast)
                      return GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (content) => Description(
                              name: nowStreaming[index]['title'],
                              bannerUrl: 'https://image.tmdb.org/t/p/w500' +
                                  nowStreaming[index]['backdrop_path'],
                              posterUrl: 'https://image.tmdb.org/t/p/w500' +
                                  nowStreaming[index]['poster_path'],
                              description: nowStreaming[index]['overview'],
                              rating: nowStreaming[index]['vote_average']
                                  .toString(),
                              releaseDate: nowStreaming[index]['release_date'],
                            ),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          width: width,
                          height: 510,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://image.tmdb.org/t/p/w500' +
                                    nowStreaming[index]['poster_path'],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        // Container(
        //   height: 550.0,
        //   decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //       colors: [kBackground, Colors.transparent],
        //       begin: Alignment.bottomCenter,
        //       end: Alignment.topCenter,
        //     ),
        //   ),
        // ),
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
                    "Crime ",
                    style: kSubTexts,
                  ),
                  Text(
                    "Crime ",
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
