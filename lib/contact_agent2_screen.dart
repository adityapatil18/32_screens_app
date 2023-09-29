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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/room2.jpg'), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '333 East 46th Street, Unit 4H',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
