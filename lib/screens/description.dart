import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/constants.dart';

class Description extends StatelessWidget {
  final String name, description, bannerUrl, posterUrl, rating, releaseDate;
  const Description(
      {Key key,
      this.name,
      this.description,
      this.bannerUrl,
      this.releaseDate,
      this.posterUrl,
      this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Container(
        child: Stack(
          children: [
            ClipPath(
              child: ClipRect(
                child: Container(
                  child: Image.network(
                    bannerUrl,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 2,
                    fit: BoxFit.cover,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
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
}
