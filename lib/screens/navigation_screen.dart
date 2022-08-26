import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/constants.dart';
import 'package:netflix_clone/screens/home_screen.dart';

class NavScreen extends StatefulWidget {
  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(key: PageStorageKey('homeScreen')),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final Map<String, IconData> _icons = const {
    'Home': Icons.home_rounded,
    'Search': Icons.search_rounded,
    'Coming Soon': Icons.queue_play_next_rounded,
    'Downloads': Icons.download_for_offline_outlined,
    'Menu': Icons.menu_rounded,
  };

  ///setting screen to render

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kBackground,
        type: BottomNavigationBarType.fixed,
        items: _icons
            .map(
              (title, icon) => MapEntry(
                title,
                BottomNavigationBarItem(
                  icon: Icon(icon, size: 25.0),
                  label: title,
                ),
              ),
            )
            .values
            .toList(),
        currentIndex: _currentIndex,
        selectedItemColor: kTextColor,
        selectedFontSize: 11.0,
        unselectedItemColor: kSecondBackground,
        unselectedFontSize: 11.0,

        ///render page and update index ontap
        onTap: (index) => setState(
          () => _currentIndex = index,
        ),
      ),
    );
  }
}
