import 'package:flutter/material.dart';

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/a_dot_ham.jpeg"),
              Text("Helloooo Welcome our About Page",style:  TextStyle(fontSize: 20) )
            ],
          ),
        )
    );
  }

}