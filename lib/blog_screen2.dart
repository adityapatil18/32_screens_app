import 'package:flutter/material.dart';

class BllogScreen2 extends StatelessWidget {
  const BllogScreen2({super.key});

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
          'Blogs',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Image.asset(
            'images/room2.jpg',
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(
                  "Everyone's Missing About the Declining U.S. Birth Rate",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
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
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 0,
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tell me Dazai why u wish to die? ds",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundImage:
                                        AssetImage('images/profile.png'),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'By',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Osama Dazai . ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '29 Sep 2023',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 45,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: AssetImage('images/pain.jpg'))),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
