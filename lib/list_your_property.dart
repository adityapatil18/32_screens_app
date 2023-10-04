import 'package:flutter/material.dart';
import 'package:screens_practice/list_your_property2.dart';

class ListPropertyScreen extends StatefulWidget {
  const ListPropertyScreen({super.key});

  @override
  State<ListPropertyScreen> createState() => _ListPropertyScreenState();
}

class _ListPropertyScreenState extends State<ListPropertyScreen> {
  bool _ischecked = false;
  bool _ischecked2 = false;

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
          'List Your Property',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Last Step',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Add photos to your\nlisting',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              width: double.infinity,
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, crossAxisSpacing: 3, mainAxisSpacing: 5),
                itemBuilder: (context, index) {
                  return Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('images/pain.jpg'))),
                  );
                },
              ),
            ),
            // SizedBox(
            //   height: 80,
            // ),
            Text(
              'Select Ad Package',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Card(
                  elevation: 4,
                  child: Container(
                    height: 110,
                    width: 175,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Package 1',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              // CircleAvatar(
                              //   radius: 10,
                              //   backgroundColor: Colors.green,
                              // )
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: Colors.green,
                                value: _ischecked2,
                                shape: CircleBorder(),
                                onChanged: (bool? value) {
                                  setState(() {
                                    _ischecked2 = value!;
                                  });
                                },
                              )
                            ],
                          ),
                          Text(
                            '\$ 99',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Terms and condition',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Card(
                  elevation: 4,
                  child: Container(
                    height: 110,
                    width: 175,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Package 2',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              // CircleAvatar(
                              //   radius: 10,
                              //   backgroundColor: Colors.green,
                              // )
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: Colors.green,
                                value: _ischecked,
                                shape: CircleBorder(),
                                onChanged: (bool? value) {
                                  setState(() {
                                    _ischecked = value!;
                                  });
                                },
                              )
                            ],
                          ),
                          Text(
                            '\$ 199',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Terms and condition',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 140,
            ),

            Divider(
              height: 30,
              thickness: 2,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListYourProperty2Screen(),
                    ));
              },
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 39, 184, 81),
                ),
                child: Text(
                  'Post My Property',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
