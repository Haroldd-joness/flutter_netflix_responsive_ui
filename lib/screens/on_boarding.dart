import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/constants.dart';
import 'package:netflix_clone/widgets/widgets.dart';

import '../contents.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: PageView.builder(
          itemCount: contents.length,
          itemBuilder: (_, i) {
            return Stack(
              alignment: Alignment.center,
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Image.asset(contents[i].image),
                    ),
                    Container(
                      child: Text(
                        contents[i].title,
                        style: kOnBoardHead,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Text(
                        contents[i].description,
                        style: kOnBoardText,
                        textAlign: TextAlign.center,
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
            );
          }),
    );
  }
}
