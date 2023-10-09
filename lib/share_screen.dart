import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:screens_practice/explore_screen2.dart';
import 'package:screens_practice/settings_screen2.dart';

class ShareScreen extends StatefulWidget {
  const ShareScreen({super.key});

  @override
  State<ShareScreen> createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 184, 81),
      body: Stack(
        children: [
          Positioned(
            left: 20,
            top: 60,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsScreen2(),
                    ));
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Positioned(
              top: 60,
              left: 180,
              child: Text(
                'Share',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          Positioned(
              top: 100,
              left: 280,
              child: CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 80,
              )),
          // Positioned(
          //   top: 250,
          //   left: -10,
          //   child: Stack(
          //     children: [
          //       BackdropFilter(
          //         filter: ImageFilter.blur(
          //             sigmaX: 5.0,
          //             sigmaY:
          //                 5.0), // Adjust the sigma values for more or less blur
          //         child: Container(
          //           width: 60,
          //           height: 60,
          //           decoration: BoxDecoration(
          //             shape: BoxShape.circle,
          //             color:
          //                 Colors.transparent, // Make sure this is transparent
          //           ),
          //         ),
          //       ),
          //       CircleAvatar(
          //         backgroundColor: Colors.yellow, // Color of the circle
          //         radius: 30,
          //       ),
          //     ],
          //   ),
          // ),
          Positioned(
              top: 250,
              left: -10,
              child: CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 30,
              )),
          Positioned(
            top: 150,
            left: 90,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExploreScreen2(),
                        ));
                  },
                  child: Container(
                    height: 280,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Image.asset(
                            'images/room2.jpg',
                            height: 140,
                            width: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '14 Hope Street, Unit 3D',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Something text ',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'text . text . 3000 sq ft.',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '\$30,500',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 500,
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'WHATSAPP FRIENDS',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          padding: EdgeInsets.all(10),
                          // shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 60,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(
                                      'images/profile.png',
                                      fit: BoxFit.contain,
                                      height: 100,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Name',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                              height: 1.0,
                              thickness: 0.5,
                              indent: 5,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'or',
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                              height: 1.0,
                              thickness: 0.5,
                              endIndent: 5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'images/facebook1.png',
                            ),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'images/twitter.png',
                            ),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'images/linkedin.png',
                            ),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'images/messenger.png',
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            backgroundImage: AssetImage(
                              'images/chat1.png',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        color: Color.fromARGB(255, 236, 246, 236),
                        height: 50,
                        padding: EdgeInsets.all(1),
                        child: DottedBorder(
                          color: Colors.green,
                          borderType: BorderType.RRect,
                          radius: Radius.circular(12),
                          padding: EdgeInsets.all(6),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.link,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'asdfghjk',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                                SizedBox(
                                  width: 220,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 20,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.green),
                                  child: Text(
                                    'Copy',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
