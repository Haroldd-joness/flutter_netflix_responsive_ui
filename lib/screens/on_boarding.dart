import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:netflix_clone/constants/constants.dart';
import 'package:netflix_clone/widgets/widgets.dart';

import '../contents.dart';
import '../networks/internet_connection.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  StreamSubscription subscription;
  var isDeviceConnected = false;
  bool isAlertSet = false;

  void initState() {
    getConnectivity();
    super.initState();
  }

  getConnectivity() {
    subscription = Connectivity().onConnectivityChanged.listen(
      (event) async {
        isDeviceConnected = await InternetConnectionChecker().hasConnection;

        ///check network connection (status)
        if (!isDeviceConnected && isAlertSet == false) {
          showDialogBox();

          setState(() => isAlertSet = true);
        }
      },
    );
    @override
    void dispose() {
      subscription.cancel();
      super.dispose();
    }
  }

  //dialog box
  showDialogBox() => showDialog<String>(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
            title: const Text("Ooops No Connection!"),
            content: const Text(
                'Please make sure you have a valid internet connection through your WIFI'
                'or cellular network.'),
            actions: <Widget>[
              TextButton(onPressed: () {}, child: const Text("Ok"))
            ]),
      );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: PageView.builder(
          itemCount: contents.length,
          itemBuilder: (context, int index) {
            OnBoardContents i = contents[index];
            return Container(
              height: height,
              width: width,
              child: Stack(
                children: [
                  Container(
                    width: width,
                    height: height,
                    color: index == 0 ? i.color.withOpacity(0.0) : i.color,
                  ),
                  Container(
                    width: width,
                    height: height,
                    child: Image(
                      fit: BoxFit.cover,
                      image: index == 0
                          ? AssetImage('assets/images/screen.png')
                          : AssetImage('assets/images/dark.png'),
                    ),
                  ),
                  Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black,
                          Colors.transparent,
                          Colors.black.withOpacity(0.9),
                          Colors.black.withOpacity(0.8),
                        ],
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/images/netflix_logo1.png',
                            width: 90,
                          ),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Text(
                          "Privacy",
                          style: kSignInText,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Image.asset(
                          i.image,
                          width: 290,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: Text(
                          i.title,
                          style: kOnBoardHead,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          i.description,
                          style: kOnBoardText,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 150),
                          height: height * (0.033),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: contents.length,
                              itemBuilder: (context, int i) {
                                return Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    width: 10,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: index == i
                                            ? kPrimaryRed
                                            : Colors.white60),
                                  ),
                                );
                              }),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SignInButton(
                          title: "SIGN IN",
                          width: MediaQuery.of(context).size.width,
                          height: 54,
                          color: kPrimaryRed,
                          onPressed: () =>
                              Navigator.pushReplacementNamed(context, '/users'),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
