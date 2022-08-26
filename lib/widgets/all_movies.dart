import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/constants.dart';

import '../screens/description.dart';

///toprated
class TopRated extends StatelessWidget {
  final List topRated;
  final String name;

  const TopRated({Key key, this.topRated, this.name}) : super(key: key);

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
            height: 210,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topRated.length,
              itemBuilder: (BuildContext context, int index) {
                ///remember to add onTap functionalities (toast)
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (content) => Description(
                        name: topRated[index]['title'],
                        bannerUrl: 'https://image.tmdb.org/t/p/w500' +
                            topRated[index]['backdrop_path'],
                        posterUrl: 'https://image.tmdb.org/t/p/w500' +
                            topRated[index]['poster_path'],
                        description: topRated[index]['overview'],
                        rating: topRated[index]['vote_average'].toString(),
                        releaseDate: topRated[index]['release_date'],
                      ),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    width: 120.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://image.tmdb.org/t/p/w500' +
                              topRated[index]['poster_path'],
                        ),
                        fit: BoxFit.cover,
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

///comming
class ComingSoon extends StatelessWidget {
  final List upComing;
  final String name;
  const ComingSoon({Key key, this.upComing, this.name}) : super(key: key);

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
            height: 270.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: upComing.length,
              itemBuilder: (BuildContext context, int index) {
                ///remember to add onTap functionalities (toast)
                return GestureDetector(
                  onTap: () => print('desc'),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    width: 150.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://image.tmdb.org/t/p/w500' +
                              upComing[index]['poster_path'],
                        ),
                        fit: BoxFit.cover,
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

///tvshows
class TVShows extends StatelessWidget {
  final List tvShows;
  final String name;
  const TVShows({Key key, this.tvShows, this.name}) : super(key: key);

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
            height: 210.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tvShows.length,
              itemBuilder: (BuildContext context, int index) {
                ///remember to add onTap functionalities (toast)
                return GestureDetector(
                  onTap: () => print('desc'),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    width: 120.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://image.tmdb.org/t/p/w500' +
                              tvShows[index]['poster_path'],
                        ),
                        fit: BoxFit.cover,
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
