import 'package:flutter/material.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/room2.jpg'),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 20,
                  top: 60,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tell me Dazai why is it u wish \nto die?',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 6,
                    "Let's turn that question around , is there really any value to this thing we call living ? I thought, I want to die. I want to die more than ever before. There’s no chance now of a recovery. No matter what sort of thing I do, no matter what I do, it’s sure to be a failure, just a final coating applied to my shame. ",
                  ),
                  SizedBox(
                    height: 20,
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
                        'Osama Dazai . ',
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
            Divider(
              height: 1,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "“",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Wake Up to Reality! Nothing ever goes as planned in this ACCURSED WORLD. The longer you live the more you will realize that the only things that truly exist in this reality are merely PAIN, SUFFERING and FUTILITY. Listen… Everywhere you look in this world, wherever there is LIGHT, there will always be SHADOWS to be found as well. As long as there is a concept of VICTORS, the VANQUISHED will also exist. The selfish intent of wanting to preserve PEACE, initiates WARS. And HATRED is born in order to protect LOVE. There are NEXUSES, CASUAL RELATIONSHIPS that cannot be SEPARATED.',
                    style: TextStyle(
                        fontStyle: FontStyle.italic, letterSpacing: 1.2),
                  )
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
