import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/constants.dart';

class TrendingMovies extends StatelessWidget {
  final List trending;
  final String name;

  const TrendingMovies({Key key, this.trending, this.name}) : super(key: key);

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
              style: kPreviewText,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            height: 210,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trending.length,
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
                              trending[index]['poster_path'],
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