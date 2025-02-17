import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Layout2 extends StatelessWidget {
  const Layout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.purple,
                    ),
                  )
                ],
              )
          ),
          Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex:2,
                    child: Container(
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    flex:2,
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.grey,
                    ),
                  )
                ],
              )
          ),
          Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex:3,
                    child: Container(
                      color: Colors.yellowAccent,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.deepPurple,
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
