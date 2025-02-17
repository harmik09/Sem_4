import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Scrollscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(color: Colors.red, height: 200, width: double.maxFinite,),
          Container(
            color: Colors.lightBlue, height: 200, width: double.maxFinite,),
          Container(color: Colors.grey, height: 200, width: double.maxFinite,),
          Container(color: Colors.orange, height: 200, width: double.maxFinite,),
          Container(
            color: Colors.purpleAccent, height: 200, width: double.maxFinite,),
          Container(color: Colors.green, height: 200, width: double.maxFinite,)
        
        ],),
      ),
    );
  }

}