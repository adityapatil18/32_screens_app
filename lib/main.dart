import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screens_practice/blog_screen.dart';
import 'package:screens_practice/blog_screen2.dart';
import 'package:screens_practice/chat_screen.dart';
import 'package:screens_practice/contact_agent2_screen.dart';
import 'package:screens_practice/contactagnet_screen.dart';
import 'package:screens_practice/explore_screen2.dart';
import 'package:screens_practice/feed_screen.dart';
import 'package:screens_practice/feedback_screen.dart';
import 'package:screens_practice/filters_screen.dart';
import 'package:screens_practice/home_screen.dart';
import 'package:screens_practice/invite_friends_screen.dart';
import 'package:screens_practice/last_screen.dart';
import 'package:screens_practice/list_your_property.dart';
import 'package:screens_practice/list_your_property2.dart';
import 'package:screens_practice/list_your_property3_screen.dart';
import 'package:screens_practice/login_screen.dart';
import 'package:screens_practice/login_screen2.dart';
import 'package:screens_practice/map_screen.dart';
import 'package:screens_practice/notifications_screen.dart';
import 'package:screens_practice/notifications_screen2.dart';
import 'package:screens_practice/personal_chat_screen.dart';
import 'package:screens_practice/post_your_property_screen.dart';
import 'package:screens_practice/provider.dart';
import 'package:screens_practice/settings_screen.dart';
import 'package:screens_practice/share_screen.dart';
import 'package:screens_practice/signup_using_mobile.dart';
import 'package:screens_practice/signup_using_phone.dart';
import 'package:screens_practice/theme.dart';
import 'package:screens_practice/verify_phone_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: ScreensPractice()));
}

class ScreensPractice extends StatelessWidget {
  const ScreensPractice({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return ChangeNotifierProvider(
      create: (context) {
        return themeProvider;
      },
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) {
          return MaterialApp(
            theme: Styles.themeData(themeProvider.isDarkMode, context),
            debugShowCheckedModeBanner: false,
            home: HomeSreen(),
          );
        },
      ),
    );
  }
}
