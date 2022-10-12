import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:netflix_clone/constants/constants.dart';
import 'package:netflix_clone/widgets/custom_appBar.dart';
import 'package:netflix_clone/widgets/widgets.dart';

class Users extends StatefulWidget {
  const Users({Key key}) : super(key: key);

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    const List usernames = ['Harold', "Kobe"];
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kBackground,
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Edit Profiles",
                  style: kAppBarText,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    "Who's Watching?",
                    style: kUserHeading,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Select or create a profile. "
                    "Have kids? Keep them safe with Kids Mode!",
                    style: kUserDesc,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
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
                            'assets/1.jpg',
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
                            'assets/3.jpg',
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
                GestureDetector(
                  onTap: () => showBarModalBottomSheet(
                    backgroundColor: kPrimaryRed,
                    context: context,
                    builder: (context) => Container(
                      child: SafeArea(
                        child: ListView(
                          shrinkWrap: true,
                          padding: EdgeInsets.all(25),
                          children: [
                            Container(
                              child: Text(
                                "Add Profile",
                                style: kUserHeading,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: CircleAvatar(
                                radius: 60,
                                backgroundColor: Colors.white54,
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 40,
                                  color: Colors.white60,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(26),
                              child: TextField(
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 16,
                                    fontFamily: "Montserrat-Regular"),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.white54),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    hintText: 'Profile Name',
                                    hintStyle:
                                        TextStyle(color: Colors.white60)),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Kids Profile",
                                  style: kUserHeading,
                                ),
                                Switch(
                                  value: isSwitched,
                                  onChanged: (value) {},
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Made for kids 12 and under, bur parents have all the control.",
                                    style: kUserDesc,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  child: Container(
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
      ),
    );
  }
}
