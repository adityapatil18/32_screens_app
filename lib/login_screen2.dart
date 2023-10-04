import 'package:flutter/material.dart';
import 'package:screens_practice/settings_screen.dart';

class LoginScreen2 extends StatelessWidget {
  const LoginScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 9, 69, 118),
        body: Stack(
          children: [
            Positioned(
              left: 10,
              top: 20,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Hello there',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    Text(
                      'Welcome home',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                left: 120,
                top: 180,
                // right: 200,
                child: CircleAvatar(
                  radius: 200,
                  backgroundImage: AssetImage('images/family1.jpg'),
                )),
            Positioned(
                left: 140,
                top: 200,
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.yellow,
                )),
            // Positioned(
            //     left: 80,
            //     top: 400,
            //     child: CircleAvatar(
            //       radius: 100,
            //       // backgroundColor: Colors.blue.shade50.withOpacity(1),
            //       // foregroundColor:
            //       //     Color.fromARGB(255, 9, 69, 118).withOpacity(1),
            //     ))
            Positioned(
              top: 620,
              left: 30,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'images/google.png',
                          height: 30,
                        ),
                        Text(
                          'Google',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 9, 108, 190)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'images/facebook.png',
                          height: 30,
                        ),
                        Text(
                          'Facebook',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 720,
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          height: 1.0,
                          thickness: 1,
                          indent: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Or use your mobile/email',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          height: 1.0,
                          thickness: 1,
                          endIndent: 20,
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
              top: 800,
              left: 20,
              child: GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 39, 184, 81),
                  ),
                  child: Text(
                    'Sign up with using Phone/Mobile',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SettingsScreen()));
                },
              ),
            )
          ],
        ));
  }
}
