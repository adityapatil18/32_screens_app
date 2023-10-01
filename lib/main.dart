import 'package:flutter/material.dart';
import 'package:screens_practice/blog_screen.dart';
import 'package:screens_practice/chat_screen.dart';
import 'package:screens_practice/contact_agent2_screen.dart';
import 'package:screens_practice/contactagnet_screen.dart';
import 'package:screens_practice/explore_screen.dart';
import 'package:screens_practice/feedback_screen.dart';
import 'package:screens_practice/home_screen.dart';
import 'package:screens_practice/invite_friends_screen.dart';
import 'package:screens_practice/login_screen.dart';
import 'package:screens_practice/notifications_screen.dart';
import 'package:screens_practice/notifications_screen2.dart';
import 'package:screens_practice/personal_chat_screen.dart';
import 'package:screens_practice/settings_screen.dart';
import 'package:screens_practice/share_screen.dart';
import 'package:screens_practice/signup_using_mobile.dart';
import 'package:screens_practice/signup_using_phone.dart';
import 'package:screens_practice/verify_phone_screen.dart';

void main() {
  runApp(ScreensPractice());
}

class ScreensPractice extends StatelessWidget {
  const ScreensPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShareScreen(),
    );
  }
}
