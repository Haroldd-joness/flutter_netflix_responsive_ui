import 'package:flutter/material.dart';
import 'package:netflix_clone/data/data.dart';
import 'package:netflix_clone/models/models.dart';
import 'package:netflix_clone/Screens/home_screen.dart';
import 'package:tmdb_api/tmdb_api.dart';

import '../constants/constants.dart';

class ContentList extends StatelessWidget {
  final String title;
  final List<Content> contentList;
  final bool isOrginals;

  const ContentList({
    Key key,
    @required this.title,
    @required this.contentList,
    this.isOrginals = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 24.0),
          child: Text(title, style: kHeadingText),
        ),

        ///check the image sizes(if the image is big set 500px else 220px
        Container(
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          height: isOrginals ? 600.0 : 250.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: contentList.length,
            itemBuilder: (BuildContext context, int index) {
              ///extracting contents
              final Content contents = contentList[index];

              ///remember to add onTap functionalities (toast)
              return GestureDetector(
                onTap: () => print(contents.name),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),

                  ///check the sizes(if is big set 400px else 200px
                  width: isOrginals ? 400.0 : 150.0,
                  height: isOrginals ? 200.0 : 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(contents.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
