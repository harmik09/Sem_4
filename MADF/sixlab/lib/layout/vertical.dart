import 'package:flutter/material.dart';

class Vertical extends StatelessWidget {
  const Vertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vertical Demo", style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
              children: [
                Expanded(
                    child: Container(
                      color: Colors.red,
                    )
                ),
                Expanded(
                    child: Container(
                      color: Colors.green,
                    )
                ),
                Expanded(
                    child: Container(
                      color: Colors.blue,
                    )
                )
              ],
          )
          )
        ],
      ),
    );
  }
}
