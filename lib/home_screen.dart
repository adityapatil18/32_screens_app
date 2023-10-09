import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screens_practice/login_screen.dart';
import 'package:screens_practice/provider.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({super.key});

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  @override
  Widget build(BuildContext context) {
    final themeprovider1 = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 184, 81),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            IconButton(
                onPressed: () {
                  themeprovider1.toggleTheme();
                  print('dark mode is on');
                  
                },
                icon: Icon(Icons.light_mode)),
            GestureDetector(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/home1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginScreen()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Houzz Finder',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'Let Us Guide Your Dream Home ',
              style: TextStyle(fontSize: 15, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
