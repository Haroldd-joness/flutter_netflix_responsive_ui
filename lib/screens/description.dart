import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/constants.dart';
import 'package:netflix_clone/widgets/buttons.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class Description extends StatelessWidget {
  final String name,
      description,
      bannerUrl,
      posterUrl,
      rating,
      releaseDate,
      trailer;

  const Description({
    Key key,
    this.name,
    this.description,
    this.bannerUrl,
    this.releaseDate,
    this.posterUrl,
    this.rating,
    this.trailer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Container(
        child: ListView(
          children: [
            Shimmer(
              duration: Duration(seconds: 5),
              interval: Duration(seconds: 0),
              color: Colors.white,
              colorOpacity: 0.3,
              enabled: true,
              direction: ShimmerDirection.fromLBRT(),
              child: Container(
                height: 400,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    bannerUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                name != null ? name : "Loading",
                style: kMovieTitle,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text("⭐ " + rating, style: kSubTexts),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: SquareButton(
                onPressed: () => 'Playing',
                icon: Icons.play_arrow,
                title: 'Play',
                color: Colors.white,
                height: 45,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: SquareButton(
                onPressed: () => 'downloading',
                icon: Icons.arrow_circle_down,
                title: 'Download',
                color: Colors.white70,
                height: 45,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text(
                "Story Line",
                style: kHeadingText,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Text(
                description,
                //textAlign: TextAlign.justify,
                style: kMovieDesc,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Text(
                "Release Date: " + releaseDate,
                style: kHeadingText,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Text(
                "Casts",
                style: kHeadingText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
