import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:progress_indicator/progress_indicator.dart';

class Filterscreen extends StatelessWidget {
  const Filterscreen({super.key});

  @override
  Widget build(BuildContext context) {
    RangeValues _values = const RangeValues(0, 0.5);
    RangeLabels _labels =
        RangeLabels(_values.start.toString(), _values.end.toString());
    bool _isChecked = false;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: Icon(
          Icons.cancel,
          color: Colors.black,
        ),
        title: Text(
          'Filters',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Reset',
              style: TextStyle(color: Colors.grey.shade500),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Property type',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 7,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 3,
                    crossAxisSpacing: 3,
                    mainAxisSpacing: 5),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade300),
                    child: Center(child: Text('Type')),
                  );
                },
              ),
            ),

            Text(
              'Distance type',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            // RangeSlider(
            //   values: _values,
            //   divisions: 10,
            //   labels: _labels,
            //   onChanged: (value) {},
            // ),
            SizedBox(
              height: 50,
            ),
            // BarProgress(
            //   percentage: 30.0,
            //   backColor: Colors.white,
            //   color: Colors.green,
            //   showPercentage: true,
            //   textStyle: TextStyle(
            //       color: Colors.black,
            //       fontSize: 10,
            //       fontWeight: FontWeight.bold),
            //   stroke: 10,
            //   round: true,
            // ),
            LinearPercentIndicator(
              lineHeight: 2,
              leading: Text('0'),
              trailing: Text('50'),
              progressColor: Colors.green,
              percent: 0.5,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                // SizedBox(
                //   height: 10,
                // ),
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
                      value: _isChecked,
                      onChanged: (value) {},
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
                      value: _isChecked,
                      onChanged: (value) {},
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Text(
                  'Rent Duration',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "( in months )",
                  style: TextStyle(fontWeight: FontWeight.w300),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 380,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 76,
                        height: 40,
                        decoration: BoxDecoration(
                            border: BorderDirectional(
                                end: BorderSide(color: Colors.black))),
                        child: Text(
                          '1',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 76,
                        height: 40,
                        decoration: BoxDecoration(
                            border: BorderDirectional(
                                end: BorderSide(color: Colors.black))),
                        child: Text(
                          '3',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 76,
                        height: 40,
                        decoration: BoxDecoration(
                            border: BorderDirectional(
                                end: BorderSide(color: Colors.black))),
                        child: Text(
                          '6',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 76,
                        height: 40,
                        decoration: BoxDecoration(
                            border: BorderDirectional(
                                end: BorderSide(color: Colors.black))),
                        child: Text(
                          '9',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 74,
                        decoration: BoxDecoration(
                            border: BorderDirectional(
                                end: BorderSide(color: Colors.black))),
                        child: Text(
                          '12',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Prices',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            )
            
          ],
        ),
      ),
    );
  }
}
