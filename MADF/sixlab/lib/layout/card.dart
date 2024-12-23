import 'package:flutter/material.dart';
import 'package:sixlab/layout/vertical.dart';


class Card extends StatelessWidget {
  const Card({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Demo", style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                color: Colors.red,
              )
          ),
          Expanded(child: Container(color: Colors.green,)),
          Expanded(child: Container(color: Colors.blue,))
        ],

      ),
    )
  }
}
