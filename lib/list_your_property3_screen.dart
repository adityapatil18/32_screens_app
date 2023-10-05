import 'package:flutter/material.dart';
import 'package:screens_practice/last_screen.dart';

class LisstYourPropertyScreen3 extends StatefulWidget {
  const LisstYourPropertyScreen3({
    super.key,
  });

  @override
  State<LisstYourPropertyScreen3> createState() =>
      _LisstYourPropertyScreen3State();
}

List<String> options = ['option1', 'option2'];

class _LisstYourPropertyScreen3State extends State<LisstYourPropertyScreen3> {
  List<String> propertyList = [
    "Houses",
    "Villas",
    "Apartments",
    "Offices",
    "Flats",
    'Rooms'
  ];
  String _currentOption = options[0];
  List<String>? selectedProperty = [];

  @override
  Widget build(BuildContext context) {
    bool _isSelected = false;
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
              'Hey Sofia!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Tell us about your property',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Radio(
                  activeColor: Colors.green,
                  value: options[0],
                  groupValue: _currentOption,
                  onChanged: (value) {},
                ),
                Text(
                  'For Rent',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  width: 20,
                ),
                Radio(
                  activeColor: Colors.green,
                  value: null,
                  groupValue: null,
                  onChanged: null,
                ),
                Text(
                  'For Sale',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Property Type',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            // Expanded(
            //   child: GridView.builder(
            //     itemCount: 6,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 4,
            //         childAspectRatio: 3,
            //         crossAxisSpacing: 3,
            //         mainAxisSpacing: 5),
            //     itemBuilder: (context, index) {
            //       return Container(
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(20),
            //             color: Colors.grey.shade300),
            //         child: Center(child: Text('Type')),
            //       );
            //     },
            //   ),
            // ),
            Wrap(
              children: propertyList.map(
                (type) {
                  bool isSelected = false;
                  if (selectedProperty!.contains(type)) {
                    isSelected = true;
                  }
                  return GestureDetector(
                    onTap: () {
                      if (!selectedProperty!.contains(type)) {
                        if (selectedProperty!.length < 5) {
                          selectedProperty!.add(type);
                          setState(() {});
                          print(selectedProperty);
                        }
                      } else {
                        selectedProperty!
                            .removeWhere((element) => element == type);
                        setState(() {});
                        print(selectedProperty);
                      }
                    },
                    child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Colors.green
                                : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Text(
                            type,
                            style: TextStyle(
                                color: isSelected ? Colors.white : Colors.grey,
                                fontSize: 14),
                          ),
                        )),
                  );
                },
              ).toList(),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Property Location',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 240, 237, 237))),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.location_on),
                  hintText: 'Enter Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Checkbox(
                value: _isSelected,
                onChanged: (value) {
                  _isSelected = false;
                },
              ),
              title: Text(
                'I am posting this property exclusively on Propfinder',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 120,
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
                      builder: (context) => LastScreen(),
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
                  'Continue to Post',
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
