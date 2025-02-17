import 'package:flutter/material.dart';

class Horizontal extends StatelessWidget {
  const Horizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Horizonatal Demo",style: TextStyle(color: Colors.black),),
      ),
      body: Row(
        children: [
          Expanded(
              child: Column(
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
          ),

        ],
      ),
    );
  }
}
