import 'dart:ui';

import 'package:flutter/material.dart';

class OnBoardContents {
  String image;
  String title;
  String description;
  Color color;

  OnBoardContents({this.image, this.title, this.description, this.color});
}

List<OnBoardContents> contents = [
  OnBoardContents(
    title: 'Trying to join Netflix',
    description:
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing'
        'int, and publishing.',
    image: 'assets/images/.png',
    color: Colors.black,
  ),
  OnBoardContents(
    title: 'Watch on Any Device',
    description:
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing '
        'int, and publishing.',
    image: 'assets/images/1.png',
    color: Colors.black,
  ),
  OnBoardContents(
    title: 'Download And Go',
    description:
        'Lorem ipsum is placeholder tn the graphic, print, and publishing'
        'Lorem ipsum is placeholdernt, and publishing  ',
    image: 'assets/images/2.png',
    color: Colors.black,
  ),
  OnBoardContents(
    title: 'No Pesky Contact',
    description: 'Lorem ipsum is placeholder text commonly used  and publishing'
        'Lorem ipsum is placeholder print, and publishing  ',
    image: 'assets/images/3.png',
    color: Colors.black,
  ),
];
