import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_clone/main.dart';
import 'package:lottie/lottie.dart';

import 'home_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacementNamed(context, '/onBoard'),
    );
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
