import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/constants.dart';
import 'package:netflix_clone/screens/description.dart';
import 'package:animated_page_transition/animated_page_transition.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class PreviewMovies extends StatelessWidget {
  final List preview;
  final String name;

  const PreviewMovies({
    Key key,
    this.preview,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 24.0),
            child: Text(
              name,
              style: kHeadingText,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            //height: 210,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: preview.length,
              itemBuilder: (BuildContext context, int index) {
                ///remember to add onTap functionalities (toast)
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (content) => Description(
                        name: preview[index]['title'],
                        bannerUrl: 'https://image.tmdb.org/t/p/w500' +
                            preview[index]['backdrop_path'],
                        posterUrl: 'https://image.tmdb.org/t/p/w500' +
                            preview[index]['poster_path'],
                        description: preview[index]['overview'],
                        rating: preview[index]['vote_average'].toString(),
                        releaseDate: preview[index]['release_date'],
                      ),
                    ),
                  ),
                  child: Shimmer(
                    duration: Duration(seconds: 5),
                    interval: Duration(seconds: 0),
                    color: Colors.white,
                    colorOpacity: 0,
                    enabled: true,
                    direction: ShimmerDirection.fromLBRT(),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      width: 130.0,
                      height: 130.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://image.tmdb.org/t/p/w500' +
                                preview[index]['poster_path'],
                          ),
                          fit: BoxFit.cover,
                        ),
                        //shape: BoxShape.circle,
                        border: Border.all(color: kPrimaryRed, width: 4.0),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
