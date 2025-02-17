import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row Column Demo",style: TextStyle(color: Colors.black),),
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
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        color: Colors.brown,
                      )
                  ),
                  Expanded(
                      child: Container(
                        color: Colors.blueGrey,
                      )
                  ),
                  Expanded(
                      child: Container(
                        color: Colors.deepPurple,
                      )
                  )
                ],
              )
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        color: Colors.black,
                      )
                  ),
                  Expanded(
                      child: Container(
                        color: Colors.yellow,
                      )
                  ),
                  Expanded(
                      child: Container(
                        color: Colors.blueAccent,
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
