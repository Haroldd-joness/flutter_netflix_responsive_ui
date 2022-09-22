import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/constants.dart';
import 'package:netflix_clone/widgets/custom_appBar.dart';

class Users extends StatelessWidget {
  const Users({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List usernames = ['Harold', "Kobe"];
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kBackground,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: UserAppBar(),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.only(top: 35),
            child: Text(
              "Who's Watching?",
              style: kUserHeading,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(
              "Select or create a profile. "
              "Have kids? Keep them safe with Kids Mode!",
              style: kUserDesc,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushReplacementNamed(
                        context,
                        ("/HomeScreen"),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/2.png',
                          fit: BoxFit.cover,
                          width: 115,
                          height: 115,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        usernames[0],
                        style: kUserDesc,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushReplacementNamed(
                          context, ("/HomeScreen")),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/2.png',
                          fit: BoxFit.cover,
                          width: 115,
                          height: 115,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        usernames[1],
                        style: kUserDesc,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 115,
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  Icons.add,
                  size: 60,
                  color: Colors.white60,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Add Profile",
                  style: kUserDesc,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
