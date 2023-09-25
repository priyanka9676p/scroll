
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Attendance',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // DropdownButton
                  DropdownButton<String>(
                    value: 'Please select', // Initial value
                    onChanged: (String? newValue) {},

                    items: <String>[
                      'Please select',
                      'January',
                      'February',
                      'March',
                      'April',
                    ].map<DropdownMenuItem<String>>(
                          (String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      },
                    ).toList(),
                  ),

                  // ElevatedButton
                  ElevatedButton(
                    onPressed: () {
                      // Handle button click
                    },
                    child: const Text('add'),
                  ),
           ],
              ),
          ),
            Container(
              height: 175,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.red, // Set your desired background color here
                borderRadius: BorderRadius.circular(10), // Optional: Add rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Optional: Add a shadow
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin:EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DateFormat.yMMMM().format(DateTime.now()),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),

                      ],
                    ),),
          Expanded(
          child: Align(
            alignment: Alignment.topCenter,// Add some space between the text and icon
          child: Icon(
                Icons.calendar_today, // Calendar icon
                color: Colors.white,
                size: 30,
                  ),
          ),
              ),

                  Container(

                    width: 150,
                    child: DatePicker(
                          DateTime.now(),
                      height:80,
                      width:50,
                      initialSelectedDate:DateTime.now(),
                      selectionColor:Colors.green,
                      selectedTextColor: Colors.white,
                      dateTextStyle: TextStyle(fontSize: 20,fontWeight:FontWeight.normal,color:Colors.grey),
                    ),
                  )
            ],
           ),
            ),
       Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search ',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            ]),
            Container(
              height: 100,
              width:390,
              decoration: BoxDecoration(
                color: Colors.white, // Set your desired background color here
                borderRadius: BorderRadius.circular(10), // Optional: Add rounded corners
              ),

              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Hello World',
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black,
                      ),
            ),),
                    Padding(
                      padding: const EdgeInsets.only(left:210.0),
                      child: Center(
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Handle Absent button click
                              },
                              child: Text('Absent'),
                            ),
                            SizedBox(width: 5),
                            ElevatedButton(
                              onPressed: () {
                                // Handle Present button click
                              },
                              child: Text('Present'),
                            ),
                          ],
                        ),
                      ),
                    ),


                  ]),
            ),
      ]),
      ));
      }
    }
