import 'package:flutter/material.dart';

class CityListView extends StatelessWidget {
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
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          return Container(
              width: double.infinity,
              height: 200,
              child: Card(
                child: Center(
                    child: Text(
                  cities[index],
                  style: TextStyle(fontSize: 20),
                )),
              ));
        },
      ),
    );
  }
}
