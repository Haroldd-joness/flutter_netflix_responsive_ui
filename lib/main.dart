import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/home_screen.dart';
import 'package:netflix_clone/screens/splash_screen.dart';
import 'package:netflix_clone/screens/users.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Netflix UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.black
      ),
      //home: Splash(),
      initialRoute: '/',

      routes: {
        '/': (context) => Splash(),
        '/users': (context) => Users(),
        '/HomeScreen': (context) => HomeScreen()
      },
    );
  }
}


