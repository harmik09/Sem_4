import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridViewScroll extends StatelessWidget {
  List<String> cities = [
    "Ahmedabad",
    "Surat",
    "Vadodara",
    "Rajkot",
    "Bhavnagar",
    "Jamnagar",
    "Junagadh",
    "Gandhinagar",
    "Anand",
    "Nadiad",
    "Morbi",
    "Mehsana",
    "Navsari",
    "Vapi",
    "Bharuch",
    "Palanpur",
    "Porbandar",
    "Godhra",
    "Dahod",
    "Valsad"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
          color: Colors.red,
          height: 200,
          width: double.maxFinite,
        ),
        Container(
          color: Colors.lightBlue,
          height: 200,
          width: double.maxFinite,
        ),
        Container(
          color: Colors.grey,
          height: 200,
          width: double.maxFinite,
          child: ListView.builder(
              itemCount: cities.length,
              itemBuilder: (context, index) {
                return Text(cities[index]);
              }),
        ),
        Container(
          color: Colors.orange,
          height: 200,
          width: double.maxFinite,
          child: GridView.builder(
            itemCount: cities.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,childAspectRatio: 10),
              itemBuilder: (context, index) {
                return Text(cities[index]);
              }),
        ),

      Container(
        color: Colors.purpleAccent,
        height: 200,
        width: double.maxFinite,
      ),
      Container(
        color: Colors.green,
        height: 200,
        width: double.maxFinite,
      )
      ],
    ),)
    ,
    );
  }
}
