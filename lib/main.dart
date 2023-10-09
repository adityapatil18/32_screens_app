import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:screens_practice/home_screen.dart';

import 'package:screens_practice/provider.dart';

import 'package:screens_practice/theme.dart';

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
