import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ListYourProperty2Screen extends StatefulWidget {
  const ListYourProperty2Screen({super.key});

  @override
  State<ListYourProperty2Screen> createState() =>
      _ListYourProperty2ScreenState();
}

class _ListYourProperty2ScreenState extends State<ListYourProperty2Screen> {
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
              'Add photos to your \nlisting',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Color.fromARGB(255, 244, 247, 244),
              height: 120,
              child: DottedBorder(
                color: Colors.green,
                borderType: BorderType.RRect,
                radius: Radius.circular(8),
                padding: EdgeInsets.all(6),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SizedBox(
                        //   width: 50,
                        // ),
                        Icon(
                          Icons.camera,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Add photos',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 400,
            ),
            Divider(
              height: 30,
              thickness: 2,
            ),
            Container(
              alignment: Alignment.center,
              height: 60,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(255, 39, 184, 81),
              ),
              child: Text(
                'Upload Photos',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
