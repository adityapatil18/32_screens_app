import 'package:flutter/material.dart';
import 'package:screens_practice/home_screen.dart';
import 'package:screens_practice/login_screen.dart';
import 'package:screens_practice/settings_screen.dart';

void main() {
  runApp(ScreensPractice());
}

class ScreensPractice extends StatelessWidget {
  const ScreensPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingsScreen(),
    );
  }
}
