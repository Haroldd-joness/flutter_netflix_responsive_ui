import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/constants.dart';
import 'package:netflix_clone/widgets/buttons.dart';

class Description extends StatelessWidget {
  final String name, description, bannerUrl, posterUrl, rating, releaseDate;

  const Description({
    Key key,
    this.name,
    this.description,
    this.bannerUrl,
    this.releaseDate,
    this.posterUrl,
    this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Container(
        child: ListView(
          children: [
            Container(
                height: 250,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: Image.network(
                          bannerUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.all(5),
              child: Text(
                name != null ? name : "Name unavailable",
                style: kMovieTitle,
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Row(
                children: [
                  Text("⭐ Average Rating - " + rating, style: kSubTexts),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SquareButton(
              icon: Icons.play_arrow,
              title: 'Play',
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            SquareButton(
              icon: Icons.arrow_circle_down,
              title: 'Download',
              width: 10.0,
              color: Colors.white30,
            ),
            // Container(
            //   margin: EdgeInsets.all(5),
            //   child: Text(
            //     "Overview",
            //     style: kHeadingText,
            //   ),
            // ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  width: 100,
                  height: 200,
                  child: Image.network(
                    posterUrl,
                  ),
                ),
                Container(
                  child: Flexible(
                    child: Text(
                      description,
                      textAlign: TextAlign.justify,
                      style: kMovieDesc,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Text(
                "Release Date: " + releaseDate,
                style: kHeadingText,
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Text(
                "Cast",
                style: kHeadingText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
