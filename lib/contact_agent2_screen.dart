import 'package:flutter/material.dart';

class ContactAgentScreen2 extends StatefulWidget {
  const ContactAgentScreen2({super.key});

  @override
  State<ContactAgentScreen2> createState() => _ContactAgentScreen2State();
}

class _ContactAgentScreen2State extends State<ContactAgentScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(
            Icons.share,
          )
        ],
      ),
      // appBar: AppBar(
      //   actions: [IconButton(onPressed: () {}, icon: Icon(Icons.share))],
      // ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/room2.jpg'),
                        fit: BoxFit.cover)),
              ),
              // Positioned(
              //   child: CircleAvatar(
              //     backgroundColor: Colors.white,
              //     radius: 30,
              //     child: Icon(
              //       Icons.favorite_sharp,
              //       color: Colors.grey,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '333 East 46th Street, Unit 4H',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Location-East',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      '\$30,500/month',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/bedrooms.png',
                              height: 40,
                            ),
                            Text('4 Bedrooms')
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/bathtub.png',
                              height: 40,
                            ),
                            Text('2 Bathrooms')
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/garage.png',
                              height: 40,
                            ),
                            Text('1 Garage')
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Wake up to reality! Nothing ever goes as planned in this accursed world. The longer you live, the more you realize that the only things that truly exist in this reality are merely pain. suffering and futility. ',
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 39, 184, 81),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Get Contact Details',
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
              )
            ],
          )
        ],
      ),
    );
  }
}
