import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/constants.dart';
import 'package:netflix_clone/widgets/custom_appBar.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';

class Users extends StatelessWidget {
  const Users({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool hasInternet = false;
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackground,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: UserAppBar(),
      ),
      body: SafeArea(
        child: GridView.count(
          padding: const EdgeInsets.all(50),
          crossAxisCount: 2,
          children: [
            GestureDetector(
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/HomeScreen'),
              child: Container(
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/2.png',
                          fit: BoxFit.cover,
                          width: 110,
                          height: 110,
                        )),
                    Text(
                      'Harold',
                      style: kAppBarText,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/HomeScreen'),
              child: Container(
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/1.jpg',
                          fit: BoxFit.cover,
                          width: 110,
                          height: 110,
                        )),
                    Text(
                      'Kobe',
                      style: kAppBarText,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/HomeScreen'),
              child: Container(
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/3.jpg',
                          fit: BoxFit.cover,
                          width: 110,
                          height: 110,
                        )),
                    Text(
                      'Josephine',
                      style: kAppBarText,
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Icon(
                      Icons.add_sharp,
                      color: kTextColor,
                      size: 50,
                    ),
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[100]),
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                  Text(
                    'Harold',
                    style: kAppBarText,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
