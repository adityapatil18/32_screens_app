import 'package:flutter/material.dart';
import 'package:screens_practice/chat_screen.dart';

class NotificationsScreen2 extends StatelessWidget {
  const NotificationsScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Today',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatScreen(),
                      ));
                },
                child: Card(
                  elevation: 0,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/profile.png'),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pain . 3 more people',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '3 min ago',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    subtitle: Text(
                        'Know the pain accept the pain and feeel the pain who dosent know the  pain the will never understand true peace'),
                  ),
                ),
              ),
              Card(
                elevation: 0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pain',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '3 min ago',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  subtitle: Column(
                    children: [
                      Text(
                          'Know the pain accept the pain and feeel the pain who dosent know the  pain the will never understand true peace'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                  'images/pain.jpg',
                                ))),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                  'images/pain.jpg',
                                ))),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                  'images/pain.jpg',
                                ))),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                  'images/pain.jpg',
                                ))),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                  'images/pain.jpg',
                                ))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Yesterday',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Card(
                elevation: 0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pain . 3 more people',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '3 min ago',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  subtitle: Text(
                      'Know the pain accept the pain and feeel the pain who dosent know the  pain the will never understand true peace'),
                ),
              ),
              Card(
                elevation: 0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pain . 3 more people',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '3 min ago',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  subtitle: Text(
                      'Know the pain accept the pain and feeel the pain who dosent know the  pain the will never understand true peace'),
                ),
              ),
              Card(
                elevation: 0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pain . 3 more people',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '3 min ago',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  subtitle: Text(
                      'Know the pain accept the pain and feeel the pain who dosent know the  pain the will never understand true peace'),
                ),
              ),
              Card(
                elevation: 0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pain . 3 more people',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '3 min ago',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  subtitle: Text(
                      'Know the pain accept the pain and feeel the pain who dosent know the  pain the will never understand true peace'),
                ),
              ),
              Card(
                elevation: 0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pain . 3 more people',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '3 min ago',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  subtitle: Text(
                      'Know the pain accept the pain and feeel the pain who dosent know the  pain the will never understand true peace'),
                ),
              ),
              Card(
                elevation: 0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pain . 3 more people',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '3 min ago',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  subtitle: Text(
                      'Know the pain accept the pain and feeel the pain who dosent know the  pain the will never understand true peace'),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // fixedColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            //backgroundColor: Colors.red,
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
