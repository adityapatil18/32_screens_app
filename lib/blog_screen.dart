import 'package:flutter/material.dart';
import 'package:screens_practice/invite_friends_screen.dart';
import 'package:screens_practice/setting_screen_another.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingscreenAnother(),
                ));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.grey,
            size: 14,
          ),
        ),
        title: Text(
          'Blog',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InviteFriendsScreen(),
                    ));
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/room2.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 120,
              child: Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Everyone's Missing About the \nDeclining U.S. Birth Rate",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage('images/profile.png'),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'By',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Madara Uchiha . ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '29 Sep 2023',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          (Icons.favorite_outline),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Like')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          (Icons.comment),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Comments')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          (Icons.share),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Share')
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/room2.jpg'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 120,
              child: Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Everyone's Missing About the \nDeclining U.S. Birth Rate",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage('images/profile.png'),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'By',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Madara Uchiha . ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '29 Sep 2023',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          (Icons.favorite_outline),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Like')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          (Icons.comment),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Comments')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          (Icons.share),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Share')
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
