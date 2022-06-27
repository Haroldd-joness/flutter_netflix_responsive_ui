import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/main.dart';
import 'package:lottie/lottie.dart';

import 'screens/home_screen.dart';

class Splash extends StatefulWidget {
  ///const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
              context,
              (MaterialPageRoute(
                builder: (context) => HomeScreen(),
              )),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Lottie.asset('assets/logo.json'),
      ),
    );
  }
}
