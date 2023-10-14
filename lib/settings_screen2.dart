import 'package:flutter/material.dart';
import 'package:screens_practice/blog_screen2.dart';
import 'package:screens_practice/explore_screen2.dart';
import 'package:screens_practice/feed_screen.dart';
import 'package:screens_practice/setting_screen_another.dart';

class SettingsScreen2 extends StatefulWidget {
  const SettingsScreen2({super.key});

  @override
  State<SettingsScreen2> createState() => _SettingsScreen2State();
}

class _SettingsScreen2State extends State<SettingsScreen2> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    FeedScreen(),
    ExploreScreen2(),
    BllogScreen2(),
    SettingscreenAnother()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        // fixedColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.grey,
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 30,
                color: Colors.grey,
              ),
              label: 'Saved'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30,
                color: Colors.grey,
              ),
              label: 'Settings',
              backgroundColor: Colors.black)
        ],
      ),
    );
  }
}
