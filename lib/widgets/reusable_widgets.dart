import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ReusableWidgets extends StatelessWidget {
  final List listName;
  final String name;

  const ReusableWidgets({Key key, this.listName, this.name}) : super(key: key);

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
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listName.length,
              itemBuilder: (BuildContext context, int index) {
                ///remember to add onTap functionalities (toast)
                return GestureDetector(
                  onTap: () => print('desc'),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    width: 150.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://image.tmdb.org/t/p/w500' +
                              listName[index]['poster_path'],
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
