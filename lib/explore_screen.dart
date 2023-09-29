import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          // Row(
          //   children: [
          //     Flexible(
          //       flex: 1,
          //       child: TextField(
          //         decoration: InputDecoration(
          //           fillColor: Colors.white,
          //           border: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(30),
          //           ),
          //           hintText: 'Search',
          //           hintStyle: TextStyle(color: Colors.black, fontSize: 18),
          //           prefixIcon: Icon(Icons.search),
          //           suffixText: 'Filters',
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '32 Results Found',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text('Sortby'),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.sort)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
