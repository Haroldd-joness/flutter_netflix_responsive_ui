import 'package:flutter/material.dart';
import 'package:netflix_clone/assets.dart';
import 'package:netflix_clone/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffSet;
  const CustomAppBar({Key key, this.scrollOffSet = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      color:
          Colors.black.withOpacity((scrollOffSet / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            SizedBox(width: 12.0),
            Image.asset(Assets.netflixLogo0),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarButton(
                      title: 'TV Shows', onTap: () => print('tv shows')),
                  _AppBarButton(title: 'Movies', onTap: () => print('movies')),
                  _AppBarButton(
                      title: 'My List', onTap: () => print('my list')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function onTap;

  _AppBarButton({@required this.title, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: kAppBarText,
      ),
    );
  }
}
