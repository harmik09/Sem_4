import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Widget Demo"),),
      body: customStateWidget(text: 'Hello', textSize: 200),
    );
  }

  Widget customStateWidget({required String text, required double textSize}) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: textSize),
      ),
    );
  }
}