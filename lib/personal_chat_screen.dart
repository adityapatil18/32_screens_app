import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:screens_practice/blog_screen.dart';
import 'package:screens_practice/blog_screen2.dart';
import 'package:screens_practice/chat_screen.dart';
import 'package:screens_practice/setting_screen_another.dart';

class PersonalChatScreen extends StatelessWidget {
  const PersonalChatScreen({super.key});

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
                  builder: (context) => ChatScreen(),
                ));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'User Name',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call,
                color: Colors.green,
              ))
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => BlogScreen()));
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Container(
              //   alignment: Alignment.centerRight,
              //   padding: EdgeInsets.all(12),
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10), color: Colors.blue),
              //   child: Text(
              //     'hi',
              //     style: TextStyle(fontSize: 16),
              //   ),
              // ),
              BubbleSpecialThree(
                text: 'Added iMessage shape bubbles',
                color: Color.fromARGB(255, 27, 243, 103),
                tail: false,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              BubbleSpecialThree(
                text: 'Please try and give some feedback on it!',
                color: Color.fromARGB(255, 27, 243, 103),
                tail: true,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              BubbleSpecialThree(
                text: 'Sure',
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              BubbleSpecialThree(
                text: "I tried. It's awesome!!!",
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              BubbleSpecialThree(
                text: "Thanks",
                color: Color(0xFFE8E8EE),
                tail: true,
                isSender: false,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.abc),
                    suffixIcon: Icon(Icons.attachment),
                    hintText: 'Enter a message',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
