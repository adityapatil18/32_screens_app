import 'package:flutter/material.dart';

class InviteFriendsScreen extends StatelessWidget {
  const InviteFriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 39, 184, 81),
        // appBar: AppBar(
        //   elevation: 0,
        //   leading: Icon(
        //     Icons.arrow_back,
        //     color: Colors.white,
        //   ),
        //   title: Text(
        //     'Invite Friends',
        //     style: TextStyle(
        //         color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        //   ),
        //   centerTitle: true,
        //   backgroundColor: Colors.transparent,
        //   // backgroundColor: Colors.white,
        // ),
        body: Stack(
          children: [
            Positioned(
              left: 20,
              top: 60,
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
            ),
            Positioned(
                top: 60,
                left: 150,
                child: Text(
                  'Invite Friends',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
            Positioned(
                left: 280,
                // right: 200,
                top: -50,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.yellow,
                )),
            Positioned(
                left: 20,
                top: 270,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Invite Friends & family and \nearn \$500.',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'WHATSAPP FRIENDS',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Container(
                      height: 150,
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
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    Container(
                      width: 380,
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.insert_invitation),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: '   Invite your friends',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            //   borderSide: BorderSide(color: Colors.white),
                            // ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                    ),
                  ],
                )),
            Positioned(
              bottom: -100,
              left: 150,
              child: CircleAvatar(
                radius: 150,
                backgroundColor: Colors.yellow,

                // Add your image or text widget inside the CircleAvatar
              ),
            ),
            Positioned(
              bottom: -50,
              left: 150,
              child: Image.asset(
                'images/people.png',
                height: 320,
                // fit: BoxFit.fill,
              ),
            ),
          ],
        ));
  }
}
