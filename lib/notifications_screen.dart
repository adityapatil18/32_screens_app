import 'package:flutter/material.dart';
import 'package:screens_practice/feed_screen.dart';
import 'package:screens_practice/settings_screen2.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => SettingsScreen2()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FeedScreen()));
              },
              child: Image.asset(
                'images/group_people.webp',
                height: 300,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You are all caught up!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // fixedColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 30,
                color: Colors.black,
              ),
              label: 'Saved'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30,
                color: Colors.black,
              ),
              label: 'Settings',
              backgroundColor: Colors.black)
        ],
      ),
    );
  }
}
