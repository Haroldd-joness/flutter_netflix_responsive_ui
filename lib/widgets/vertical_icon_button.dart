import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/constants.dart';

class VerticalIconButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const VerticalIconButton({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            color: kTextColor,
            size: 28,
          ),
          SizedBox(height: 6.0),
          Text(title, style: kButtonText)
        ],
      ),
    );
  }
}

class SquareButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onPressed;

  const SquareButton(
      {Key key,
      @required this.icon,
      @required this.title,
      @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.white),
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(icon, size: 28, color: kBackground),
          SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: kPlayButtonText,
          )
        ],
      ),
    );
  }
}
