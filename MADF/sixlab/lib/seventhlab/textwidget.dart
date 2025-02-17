

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hello World Program')),
        body: const Center(
          child: Text(
            "Hello World",
            style: TextStyle(fontSize: 100, fontFamily: "Schyler"),
          ),
        )

    );
  }
}