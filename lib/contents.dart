class OnBoardContents {
  String image;
  String title;
  String description;

  OnBoardContents({this.image, this.title, this.description});
}

List<OnBoardContents> contents = [
  OnBoardContents(
    title: 'Trying to join Netflix',
    description:
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing'
        'int, and publishing  ',
    image: 'assets/movies.pn',
  ),
  OnBoardContents(
      title: 'Watch on Any Device',
      description:
          'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing'
          'publishing  ',
      image: 'assets/images/'),
  OnBoardContents(
      title: 'Download And Go',
      description:
          'Lorem ipsum is placeholder tn the graphic, print, and publishing'
          'Lorem ipsum is placeholdernt, and publishing  ',
      image: 'assets/images/'),
  OnBoardContents(
      title: 'No Pesky Contact',
      description:
          'Lorem ipsum is placeholder text commonly used  and publishing'
          'Lorem ipsum is placeholder print, and publishing  ',
      image: 'assets/images/'),
];
