import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:screens_practice/setting_screen_another.dart';

class PostPropertyScreen extends StatefulWidget {
  const PostPropertyScreen({super.key});

  @override
  State<PostPropertyScreen> createState() => _PostPropertyScreenState();
}

class _PostPropertyScreenState extends State<PostPropertyScreen> {
  bool? _isChecked = false;
  bool? _isChecked2 = false;
  String dropDownvalue = 'Sq.ft';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Looks great!!',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    Icons.check,
                    size: 15,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'You are a step to post \nyour property',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Living Space',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Bedroom',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: Text(
                    '-',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '1',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: Text(
                    '+',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Bedroom',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: Text(
                    '-',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '1',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: Text(
                    '+',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Balcony',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 59,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: Text(
                    '-',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '1',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: Text(
                    '+',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Kitchen',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 80,
                ),
                Checkbox(
                  value: this._isChecked,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      this._isChecked = value;
                    });
                  },
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Living Room',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 45,
                ),
                Checkbox(
                  value: this._isChecked2,
                  onChanged: (value) {},
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Furnished Status',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 380,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 126,
                        height: 40,
                        decoration: BoxDecoration(
                            border: BorderDirectional(
                                end: BorderSide(color: Colors.grey))),
                        child: Text(
                          'Unfurnished',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 126,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: BorderDirectional(
                                end: BorderSide(color: Colors.grey))),
                        child: Text(
                          'Furnished',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 126,
                        height: 40,
                        decoration: BoxDecoration(
                            border: BorderDirectional(
                                end: BorderSide(color: Colors.grey))),
                        child: Text(
                          'Semi Furnished',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Plot Area',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            // Container(
            //   width: 280,
            //   child: TextField(
            //     decoration: InputDecoration(
            //         hintText: 'Enter Area',
            //         border: OutlineInputBorder(
            //             borderRadius: BorderRadius.horizontal(
            //                 left: Radius.circular(30)))),
            //   ),
            // )
            Row(
              children: [
                Container(
                  height: 50,
                  width: 280,

                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter Area',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(30)))),
                  ),

                  //  VerticalDivider(
                  //   color: Colors.black,
                  //   thickness: 1,
                  // ),Container(
                  //   height: 50,
                  //   width: 20,
                  //   color: Colors.red,
                  // ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(30))),
                  child: DropdownButton(
                    style: TextStyle(color: Colors.black),
                    value: dropDownvalue,
                    onChanged: (String? newValue) {
                      setState(
                        () {
                          dropDownvalue = newValue!;
                        },
                      );
                    },
                    items: [
                      DropdownMenuItem(
                        alignment: Alignment.center,
                        value: 'Sq.ft',
                        child: Text(
                          'Sq.ft',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'two',
                        child: Text(
                          'm',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'three',
                        child: Text(
                          'cm/s',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
