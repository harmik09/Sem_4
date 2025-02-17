import 'package:flutter/material.dart';

import 'about.dart';
import 'home.dart';

class TabView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 10,
     initialIndex: 0,
     child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              text: "Home",
            ),
            Tab(
              text: "About",
            )
          ]),
        ),
       body: TabBarView(children: [Home(), About()]),
     ),
   );
  }

}