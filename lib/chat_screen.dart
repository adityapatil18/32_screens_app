import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
          'Chat',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  padding: EdgeInsets.all(10),
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
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
                        Text('Pain')
                      ],
                    );
                  },
                ),
              ),
              Card(
                elevation: 0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                  title: Text(
                    'Pain ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Hi, How are u  toaday?'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '11.29',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 20,
                        width: 30,
                        // color: Colors.green,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          '10',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
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
                  title: Text(
                    'Pain ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Hi, How are u  toaday?'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '11.29',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 20,
                        width: 30,
                        // color: Colors.green,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          '10',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
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
                  title: Text(
                    'Pain ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Hi, How are u  toaday?'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Saturday',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      // Container(
                      //   height: 20,
                      //   width: 30,
                      //   // color: Colors.green,
                      //   decoration: BoxDecoration(
                      //       color: Colors.green,
                      //       borderRadius: BorderRadius.circular(20)),
                      //   child: Text(
                      //     '10',
                      //     style: TextStyle(fontWeight: FontWeight.bold),
                      //   ),
                      // )
                    ],
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
                  title: Text(
                    'Pain ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Hi, How are u  toaday?'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Monday',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      // Container(
                      //   height: 20,
                      //   width: 30,
                      //   // color: Colors.green,
                      //   decoration: BoxDecoration(
                      //       color: Colors.green,
                      //       borderRadius: BorderRadius.circular(20)),
                      //   child: Text(
                      //     '10',
                      //     style: TextStyle(fontWeight: FontWeight.bold),
                      //   ),
                      // )
                    ],
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
                  title: Text(
                    'Pain ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Hi, How are u  toaday?'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sunday',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      // Container(
                      //   height: 20,
                      //   width: 30,
                      //   // color: Colors.green,
                      //   decoration: BoxDecoration(
                      //       color: Colors.green,
                      //       borderRadius: BorderRadius.circular(20)),
                      //   child: Text(
                      //     '10',
                      //     style: TextStyle(fontWeight: FontWeight.bold),
                      //   ),
                      // )
                    ],
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
                  title: Text(
                    'Pain ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Hi, How are u  toaday?'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sunday',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      // Container(
                      //   height: 20,
                      //   width: 30,
                      //   // color: Colors.green,
                      //   decoration: BoxDecoration(
                      //       color: Colors.green,
                      //       borderRadius: BorderRadius.circular(20)),
                      //   child: Text(
                      //     '10',
                      //     style: TextStyle(fontWeight: FontWeight.bold),
                      //   ),
                      // )
                    ],
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
                  title: Text(
                    'Pain ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Hi, How are u  toaday?'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sunday',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      // Container(
                      //   height: 20,
                      //   width: 30,
                      //   // color: Colors.green,
                      //   decoration: BoxDecoration(
                      //       color: Colors.green,
                      //       borderRadius: BorderRadius.circular(20)),
                      //   child: Text(
                      //     '10',
                      //     style: TextStyle(fontWeight: FontWeight.bold),
                      //   ),
                      // )
                    ],
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
                  title: Text(
                    'Pain ',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  subtitle: Text('Hi, How are u  toaday?'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Yesterday',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              )
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
